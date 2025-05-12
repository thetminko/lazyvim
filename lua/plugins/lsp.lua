local get_root_dir = function(fname)
  local util = require("lspconfig.util")
  return util.root_pattern(".git")(fname) or util.root_pattern("package.json", "tsconfig.json")(fname)
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
              importModuleSpecifier = "non-relative",
              preferTypeOnlyAutoImports = true,
            },
          },
        },
      },
    },
  },
}
