return {
  {
    "rebelot/kanagawa.nvim", 
    name = "kanagawa", 
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme kanagawa-dragon]])
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    keys = {
      {"<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    opts = {
      keys = "etovxqpdygfblzhckisuran"
    },
    keys = {
      {"hl", "<cmd>HopLine<cr>", desc = "Hop Line"},
      {"hw", "<cmd>HopWord<cr>", desc = "Hop Word"},
      {"hp", "<cmd>HopPattern<cr>", desc = "Hop Pattern"}
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    opts = { theme = "iceberg_dark" },
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
    dependencies = {
      "echasnovski/mini.icons"
    }
  },
  { 
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {}
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = {"nvim-treesitter/nvim-treesitter"},
    config = function()
      require("treesitter-context").setup()
    end
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup()
    end
  },
  {
    "RRethy/vim-illuminate",
  }
}
