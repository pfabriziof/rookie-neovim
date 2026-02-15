-- Packages required:
-- 1. zathura
-- 2. biber
-- 3. texlive-basic, texlive-latexrecommended, texlive-fontsrecommended, texlive-bin, texlive-binextra
-- 4. texlive-latexextra, texlive-mathscience
return {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"
        vim.g.vimtex_compiler_latexmk = {
            out_dir = 'build',
        }
    end
}
