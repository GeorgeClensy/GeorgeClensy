
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Open Neo-tree with <C-n>
        vim.keymap.set("n", "<C-n>", function()
            if vim.bo.filetype == 'neo-tree' then
                vim.cmd("Neotree close")
            else
                vim.cmd("Neotree filesystem reveal left")
            end
        end, { noremap = true, silent = true })

        -- Close Neo-tree with <C-m>
        vim.keymap.set("n", "<C-m>", ":Neotree close<CR>", { noremap = true, silent = true })

        -- Buffers command
        vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    end,
}

