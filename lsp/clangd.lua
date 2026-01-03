return {
	cmd = {"clangd", "--compile-commands-dir=Debug"},
	root_markers = { "Makefile", "compile_commands.json", "compile_flags.txt", "Session.vim", ".git" },
	filetypes = { "c", "cpp", "asm" },
}
