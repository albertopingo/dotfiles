return {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        "nvim-tree/nvim-web-devicons"
    },

    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules", "build", "dist", "yarn.lock"
                },
            },
            extensions = {
                fzf = {},
            },
        })
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = 'Telescope fzf in current buffer' })
        vim.keymap.set("n", "<leader>gw", builtin.grep_string, { desc = 'Telescope grep word under cursor' })

        vim.keymap.set("n", "<leader>ft", function()
            return builtin.git_files { cwd = vim.fn.expand "%:h" }
        end, { desc = 'Telescope git files' })

        vim.keymap.set("n", "<leader>en", function() -- Edit Neovim
            builtin.find_files { cwd = vim.fn.stdpath "config" }
        end, { desc = 'Telescope find Neovim config files' })

        vim.keymap.set("n", "<leader>ed", function() -- Edit Dotfiles
            builtin.find_files { cwd = "~/.dotfiles/", additional_args = { "--hidden" }}
        end, { desc = 'Telescope find dotfiles' })

        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = 'Telescope grep search' })

        -- vim.keymap.set('n', '<leader>pws', function()
        --     local word = vim.fn.expand("<cword>")
        --     builtin.grep_string({ search = word })
        -- end)
        -- vim.keymap.set('n', '<leader>pWs', function()
        --     local word = vim.fn.expand("<cWORD>")
        --     builtin.grep_string({ search = word })
        -- end)
    end
}
