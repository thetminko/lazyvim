local lspconfig = require("lspconfig")

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
          format = { enable = false },
          validate = "on",
          codeActionOnSave = {
            enable = true,
            mode = "all",
          },
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
        settings = {
          typescript = {
            autoUseWorkspaceTsdkserver = {
              maxTsServerMemory = 4096,
            },
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
