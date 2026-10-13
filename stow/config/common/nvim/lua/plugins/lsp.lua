-- Resolve the project's python interpreter (uv/poetry/venv) for basedpyright.
local function project_python(root)
  local venv = root and (root .. "/.venv/bin/python")
  if venv and vim.uv.fs_stat(venv) then return venv end
  if vim.env.VIRTUAL_ENV then return vim.env.VIRTUAL_ENV .. "/bin/python" end
end

return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "saghen/blink.cmp" },
    config = function()
      vim.lsp.config("*", {
        capabilities = require("blink.cmp").get_lsp_capabilities(),
      })

      vim.lsp.config("basedpyright", {
        before_init = function(_, config)
          local py = project_python(config.root_dir)
          if py then
            config.settings = vim.tbl_deep_extend("force", config.settings or {}, {
              python = { pythonPath = py },
            })
          end
        end,
        settings = {
          basedpyright = {
            -- ruff does linting/import sorting; keep pyright for types/navigation
            disableOrganizeImports = true,
            analysis = { typeCheckingMode = "standard" },
          },
        },
      })

      -- ruff: diagnostics + code actions; hover is left to basedpyright
      vim.lsp.config("ruff", {
        on_attach = function(client) client.server_capabilities.hoverProvider = false end,
      })

      vim.lsp.enable({ "basedpyright", "ruff" })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local function m(keys, fn, desc)
            vim.keymap.set("n", keys, fn, { buffer = ev.buf, desc = desc })
          end
          -- defaults already provide: K (hover), grn (rename), gra (action),
          -- grr (references), gri (implementation), gO (symbols), <C-s> (signature, insert)
          m("gd", vim.lsp.buf.definition, "Go to definition")
          m("gD", vim.lsp.buf.declaration, "Go to declaration")
          m("gy", vim.lsp.buf.type_definition, "Go to type definition")
          m("<leader>rn", vim.lsp.buf.rename, "Rename")
          m("<leader>ca", vim.lsp.buf.code_action, "Code action")
        end,
      })
    end,
  },
}
