function ColorMyPencils(color)
    color = color or "rose-pine"

    if color == 'rose-pine' then
        require('rose-pine').setup({
            disable_italics = true,
        })
    end

    vim.cmd("colorscheme " .. color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils()

