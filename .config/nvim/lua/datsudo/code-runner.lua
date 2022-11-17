local status_ok, code_runner = pcall(require, "code_runner")
if not status_ok then
    return
end

code_runner.setup {
    mode = "term",
    focus = "true",
    startinsert = true,
    term = {
        position = "bot",
        size = "12"
    },
    filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python -u",
	},
}
