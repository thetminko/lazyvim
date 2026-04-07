return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = {
        spacing = 2,
      },
    },
    servers = {
      eslint = {
        settings = {
          -- format: controlled by vim.g.lazyvim_eslint_auto_format = true in options.lua
          -- LazyVim's eslint extra sets format = true (boolean); don't override with an object here.
          validate = "on",
          -- codeActionOnSave: ESLint LSP v2 setting, ignored by ESLint v10 — removed.
          -- workingDirectories = { mode = "auto" }: set by LazyVim's eslint extra, not overriding.
        },
      },
      tailwindcss = {
        settings = {
          tailwindCSS = {
            experimental = {
              ["apps/web/src/styles/app.css"] = "apps/web/src/**",
              ["libs/app/web/src/styles/lib.css"] = "libs/app/web/src/**",
              ["libs/core/web/src/styles/core.css"] = "libs/core/web/src/**",
            },
          },
        },
      },
      vtsls = {
        autoUseWorkspaceTsdk = true,
        -- Debounce: wait 500ms after typing stops before sending changes to tsserver
        flags = { debounce_text_changes = 500 },
        settings = {
          typescript = {
            tsserver = {
              -- Increased from 4096 — 14k TS files need more headroom
              maxTsServerMemory = 8192,
              experimental = {
                -- Don't eagerly type-check all open projects in background
                enableProjectDiagnostics = false,
              },
            },
            -- Limit workspace symbol search to current project only (not all 20+ packages)
            workspaceSymbols = { scope = "currentProject" },
            inlayHints = {
              enumMemberValues = { enabled = true },
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = "none" },
              parameterTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              variableTypes = { enabled = false },
            },
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = false,
              importModuleSpecifier = "non-relative",
              importModuleSpecifierPreference = "non-relative",
              preferTypeOnlyAutoImports = true,
            },
          },
          javascript = {
            workspaceSymbols = { scope = "currentProject" },
            preferences = {
              includeCompletionsForModuleExports = true,
              includeCompletionsForImportStatements = false,
              importModuleSpecifier = "non-relative",
              importModuleSpecifierPreference = "non-relative",
              preferTypeOnlyAutoImports = true,
            },
          },
        },
      },
    },
  },
}
