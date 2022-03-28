--- @meta
--- @diagnostic disable:undefined-doc-name

--- Provides various OS-specific functions.
--- @class oslib
os = {}

--- Return CPU time since Lua started in seconds.
--- @return number result No description yet available.
function os.clock() end

--- Passes command to be executed by an operating system. Unlike `os.execute`, this will not display a console prompt that interrupts the game and cannot run direct shell commands.
--- @param params os.createProcess.params This table accepts the following values:
--- 
--- `command`: string — The command to run.
--- 
--- `async`: boolean — *Default*: `true`. If set to false, Morrowind will halt execution until the program finishes.
--- @return mwseLuaExecutor executor A handle to the executor. This can be used to check if the program has errored, finished, and to get the program's output.
function os.createProcess(params) end

---Table parameter definitions for `os.createProcess`.
--- @class os.createProcess.params
--- @field command string The command to run.
--- @field async boolean *Default*: `true`. If set to false, Morrowind will halt execution until the program finishes.

--- Passes command to be executed by an operating system shell. To open a program to run in the background and monitor its output, use `os.createProcess`.
--- @param command string The command to run.
--- @return number exitCode The exit code of the program.
function os.execute(command) end

--- Returns the current clipboard text, if any is available.
--- @return string|nil result No description yet available.
function os.getClipboardText() end

--- Opens the given `url` in the default browser. This has an advantage over using `os.execute("show https://my.url")` in that it does not create a command prompt window.
--- @param url string The URL to open.
function os.openURL(url) end

--- Sets the current clipboard text. If nil is passed, the clipboard will be cleared instead. If either operation fails, the function returns false.
--- @param text string|nil *Optional*. The text to put in the clipboard. If nil is provided instead, then the clipboard will be cleared.
--- @return boolean result No description yet available.
function os.setClipboardText(text) end

