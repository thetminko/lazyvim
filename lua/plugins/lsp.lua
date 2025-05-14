local get_root_dir = function(fname)
  local util = require("lspconfig.util")
  return util.root_pattern(".git")(fname)
    or util.root_pattern("nx.json")(fname)
    or util.root_pattern("package.json", "tsconfig.json")(fname)
end

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
        root_dir = get_root_dir,
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
        root_dir = get_root_dir,
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
        root_dir = get_root_dir,
        autoUseWorkspaceTsdk = true,
        settings = {
          typescript = {
            tsserver = {
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
              importModuleSpecifier = "project-relative",
              preferTypeOnlyAutoImports = true,
            },
          },
        },
      },
    },
  },
}
