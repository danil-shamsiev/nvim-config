local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require("plug.mason")
require("plug.cmp")
require("plug.rust_tools")
require("plug.neo_tree")
require("plug.indent_blankline")
require("plug.illuminate")
require("plug.telescope")

return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    use "simrat39/rust-tools.nvim"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-nvim-lsp-signature-help"
    use "hrsh7th/cmp-vsnip"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/vim-vsnip"
    use "nvim-tree/nvim-web-devicons"
    use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
      }
    }
    use "puremourning/vimspector"
    use "lewis6991/impatient.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }
    use "tpope/vim-surround"
    use "RRethy/vim-illuminate"
    use {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.0",
      requires = { { "nvim-lua/plenary.nvim" } }
    }

    if packer_bootstrap then
      require("packer").sync()
    end
end)
