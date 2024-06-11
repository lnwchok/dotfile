return {
  {
    "nvim-lua/plenary.nvim",
  },
	{
	 -- ColorScheme
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
	},
	{
    -- TreeSitter
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = {
          enable = true,
        },
        -- ensure these language parsers are installed
        ensure_installed = {
          -- "json",
          -- "javascript",
          -- "typescript",
          -- "tsx",
          -- "yaml",
          "html",
          "css",
          -- "prisma",
          "markdown",
          "markdown_inline",
          -- "svelte",
          -- "graphql",
          "bash",
          "lua",
          -- "vim",
          "dockerfile",
          "gitignore",
          "query",
          -- "vimdoc",
          -- "c",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
	},
  {
    -- Nvim Tree
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local nvimtree = require("nvim-tree")

      -- recommended settings from nvim-tree documentation
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      nvimtree.setup({
        view = {
          width = 35,
          relativenumber = true,
        },
        -- change folder arrow icons
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "", -- arrow when folder is closed
                arrow_open = "", -- arrow when folder is open
              },
            },
          },
        },
        -- disable window_picker for
        -- explorer to work well with
        -- window splits
        actions = {
         open_file = {
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { ".DS_Store" },
        },
        git = {
          ignore = false,
        },
      })

      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
      -- keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
      -- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
      keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
    end
  },
}
