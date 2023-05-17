# How to send stdin (standard input) to mypy

Use this command with a shell that supports [process substitution](https://en.wikipedia.org/wiki/Process_substitution) (e.g. Bash):

```
mypy <(cat)
```

This will redirect text input from `stdin` ([standard input](https://pubs.opengroup.org/onlinepubs/9699919799/functions/stdin.html)) to `mypy` for type checking.
`mypy` should behave exactly the same way as when it is passed a filename, so you can pass any other flags.

## Examples

```
sh-5.2$ echo '1 + "a"' | mypy --strict <(cat)
dev/fd/63:1: error: Unsupported operand types for + ("int" and "str")  [operator]
Found 1 error in 1 file (checked 1 source file)
```

Any other flags can be passed to `mypy`:

```
sh-5.2$ echo 'print(a)' | mypy --strict <(cat)
dev/fd/63:1: error: Name "a" is not defined  [name-defined]
Found 1 error in 1 file (checked 1 source file)
```

## Future solution

If the feature detailed in [this GitHub issue](https://github.com/python/mypy/issues/12235) is added to `mypy`, then the future solution will work on more POSIX compliant shells and it will be similar to other software. Unfortunately, `mypy -` does not work as of May 2023.

## Why?

Processing `stdin` adds more flexibility to a UNIX command, and allows for use of other functionality, such as piping input from another process into `mypy` or using it in non-standard environments.
Read a bit about the Unix philosophy in [Matt Might's article](https://matt.might.net/articles/what-cs-majors-should-know/).
We're using it to write a linting/fixing plugin for the Vis editor, called [vis-lint](https://github.com/rnpnr/vis-lint).
By directing stdin into `mypy` and other linters/code quality tools, we can avoid creating temporary files and other nice features.
For code fixing tools that would modify your files, it as though they are taking over the keyboard and fixing the code for you when you pipe the editor's contents directly into the program.
It also allows us to keep supporting Vis' powerful feature of interactive editing of `stdin`, since this editor supports input from `stdin` and output to `stdout`:

> [The special file - instructs vis to read from standard input in which case :wq will write to standard output, thereby enabling usage as an interactive filter.](https://martanne.github.io/vis/man/vis.1.html)
