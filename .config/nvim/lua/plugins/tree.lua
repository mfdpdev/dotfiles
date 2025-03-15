return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    -- empty setup using defaults
    require("nvim-tree").setup()
    require("nvim-tree").setup(
      {
        view = {
          -- width = 35
        },
        renderer = {
          root_folder_label = false;
          icons = {
            show = {
              -- file = false,
              -- folder = false,
              -- folder_arrow = false,
              -- git = false,
            }
          }
        },
        git = {
          ignore = false,
        },
      }
    )
  end,

  vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true }),
}
