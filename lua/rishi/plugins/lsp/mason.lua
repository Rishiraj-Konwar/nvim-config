return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
    {
      "mason-org/mason.nvim",
        opts = {
            ui = {
              icons = {
                  package_installed = "✓",
                  package_pending = "➜",
                  package_uninstalled = "✗"
                     },
                 },
              },
    },
    "neovim/nvim-lspconfig",
    },
  opts = {
    ensure_installed = {
        -- Web Development
  "html",
  "cssls",
  "ts_ls",     -- JavaScript + TypeScript
  "emmet_ls",
  "jsonls",
  "eslint",
  "intelephense",

  -- Backend / API / Full-stack
  "graphql",

  -- Python
  "pyright",

  -- Go
  "gopls",

  -- Java
  "jdtls",

  -- C / C++
  "clangd",

  -- Lua (for Neovim config)
  "lua_ls",

  -- Rust (optional but common for devs)
  "rust_analyzer",

  -- YAML, Docker, etc.
  "yamlls",
  "dockerls",
  "docker_compose_language_service",

  -- Tailwind CSS (very important in web dev)
  "tailwindcss",
    }
  }
}

