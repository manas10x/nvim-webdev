local ok, npairs = pcall(require, 'nvim-autopairs')
if ok then
    npairs.setup {}
end

