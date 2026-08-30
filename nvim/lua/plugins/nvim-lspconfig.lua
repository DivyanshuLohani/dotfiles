return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"saghen/blink.cmp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- NOTE: LSP Custom Keybinds
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true }),
			callback = function(ev)
				-- Buffer local mappings
				local opts = { buffer = ev.buf, silent = true }

				-- Keymaps
				opts.desc = "Show LSP references"
				vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Show LSP definitions"
				vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Show LSP implementations"
				vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Show LSP type definitions"
				vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "See available code actions"
				vim.keymap.set({ "n", "v" }, "<leader>vca", function()
					vim.lsp.buf.code_action()
				end, opts)

				opts.desc = "Smart rename"
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

				opts.desc = "Show buffer diagnostics"
				-- vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
				vim.keymap.set("n", "<leader>D", function()
					require("snacks").picker.diagnostics_buffer()
				end, opts)

				opts.desc = "Show line diagnostics"
				vim.keymap.set("n", "df", function()
					vim.diagnostic.open_float()
				end, opts)

				opts.desc = "Show documentation for what is under cursor"
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

				opts.desc = "Show signature help"
				vim.keymap.set("i", "<C-h>", function()
					vim.lsp.buf.signature_help()
				end, opts)
			end,
		})

		-- NOTE: Diagnostic Setup
		-- Define sign icons for each severity
		local signs = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = "󰠠 ",
			[vim.diagnostic.severity.INFO] = " ",
		}
		-- update diagnostic config function
		vim.diagnostic.config({
			signs = { text = signs },
			virtual_text = true,
			underline = true,
			update_in_insert = false,
			float = {
				focusable = false,
				style = "minimal",
				border = "rounded",
				source = true,
			},
		})

		-- toggle for virtual text
		vim.keymap.set("n", "<leader>lx", function()
			local current = vim.diagnostic.config().virtual_text
			vim.diagnostic.config({ virtual_text = not current })
		end, { desc = "Toggle LSP virtual text" })

		-- toggle python type checking (basedpyright / pyright)
		vim.keymap.set("n", "<leader>lt", function()
			local get_clients = vim.lsp.get_clients or vim.lsp.get_active_clients
			local clients = get_clients({ name = "basedpyright" })
			if #clients == 0 then
				clients = get_clients({ name = "pyright" })
			end

			if #clients == 0 then
				vim.notify("Pyright / Basedpyright LSP is not active", vim.log.levels.WARN)
				return
			end

			for _, client in ipairs(clients) do
				local is_basedpyright = client.name == "basedpyright"
				local section = is_basedpyright and "basedpyright" or "python"

				client.config.settings = client.config.settings or {}
				client.config.settings[section] = client.config.settings[section] or {}
				client.config.settings[section].analysis = client.config.settings[section].analysis or {}

				local current_mode = client.config.settings[section].analysis.typeCheckingMode or "off"
				local new_mode = (current_mode == "off") and "recommended" or "off"

				client.config.settings[section].analysis.typeCheckingMode = new_mode

				client.notify("workspace/didChangeConfiguration", {
					settings = client.config.settings,
				})

				vim.notify("Python type checking: " .. new_mode, vim.log.levels.INFO)
			end
		end, { desc = "Toggle Python type checking" })

		-- NOTE: Setup servers
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		-- blink cmp
		capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

		-- Global LSP settings (applied to all servers)
		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Configure and enable LSP servers
		-- lua_ls
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					completion = {
						callSnippet = "Replace",
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})

		-- emmet_language_server
		vim.lsp.config("emmet_language_server", {
			filetypes = {
				"css",
				"html",
				"javascript",
				"javascriptreact",
				"less",
				"typescriptreact",
			},
			init_options = {
				includeLanguages = {},
				excludeLanguages = {},
				extensionsPath = {},
				preferences = {},
				showAbbreviationSuggestions = true,
				showExpandedAbbreviation = "always",
				showSuggestionsAsSnippets = false,
				syntaxProfiles = {},
				variables = {},
			},
		})

		-- emmet_ls
		vim.lsp.config("emmet_ls", {
			filetypes = {
				"html",
				"typescriptreact",
				"javascriptreact",
				"css",
				"sass",
				"scss",
				"less",
				"svelte",
			},
		})

		-- ts_ls (TypeScript/JavaScript)
		vim.lsp.config("ts_ls", {
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
			},
			single_file_support = true,
			init_options = {
				preferences = {
					includeCompletionsForModuleExports = true,
					includeCompletionsForImportStatements = true,
				},
			},
			settings = {
				typescript = {
					inlayHints = {
						includeInlayParameterNameHints = "all",
						includeInlayVariableTypeHints = true,
						includeInlayFunctionParameterTypeHints = true,
					},
				},
				javascript = {
					validate = {
						enable = true,
					},
					inlayHints = {
						includeInlayParameterNameHints = "all",
						includeInlayVariableTypeHints = true,
					},
				},
			},
		})

		-- gopls
		vim.lsp.config("gopls", {
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
					gofumpt = true,
				},
			},
		})

		-- css
		vim.lsp.config("cssls", {
			filetypes = { "css", "scss", "less" },
			init_options = { provideFormatter = true },
			single_file_support = true,
			settings = {
				css = {
					lint = {
						unknownAtRules = "ignore",
					},
					validate = true,
				},
				scss = {
					lint = {
						unknownAtRules = "ignore",
					},
					validate = true,
				},
				less = {
					lint = {
						unknownAtRules = "ignore",
					},
					validate = true,
				},
			},
		})

		-- tailwind
		vim.lsp.config("tailwindcss", {
			filetypes = {
				"html",
				"css",
				"javascript",
				"typescript",
				"javascriptreact",
				"typescriptreact",
				"svelte",
				"vue",
				"astro",
			},
			init_options = {
				userLanguages = {
					astro = "html",
				},
			},
		})

		-- astro
		vim.lsp.config("astro", {
			filetypes = { "astro" },

			init_options = {
				typescript = {
					tsdk = vim.fn.stdpath("data")
						.. "/mason/packages/typescript-language-server/node_modules/typescript/lib",
				},
			},
		})

		-- basedpyright
		vim.lsp.config("basedpyright", {
			handlers = {
				["$/progress"] = function() end,
			},
			settings = {
				basedpyright = {
					analysis = {
						typeCheckingMode = "off",
						autoImportCompletions = true,
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
						diagnosticMode = "openFilesOnly",
					},
				},
			},
		})

		-- clangd
		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--header-insertion=iwyu",
				"--completion-style=detailed",
				"--function-arg-placeholders",
				"--fallback-style=llvm",
			},
			init_options = {
				usePlaceholders = true,
				completeUnimported = true,
				clangdFileStatus = true,
			},
		})
		-- Instead of using mason enable all configured LSP via `automatic_enable=true`
		-- Prefer more control by enable manual server call below via vim.lsp.enable("")
		-- mason config: lua/sethy/plugins/lsp/mason.lua:22
		vim.lsp.enable({
			"lua_ls",
			"cssls",
			"emmet_language_server",
			"emmet_ls",
			"ts_ls",
			"gopls",
			"rust_analyzer",
			"astro",
			"tailwindcss",
			"marksman",
			"basedpyright",
			"clangd",
		})
	end,
}
