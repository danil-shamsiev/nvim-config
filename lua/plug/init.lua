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

    if packer_bootstrap then
      require("packer").sync()
    end
end)
