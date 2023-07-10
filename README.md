# `q`
`q` is a flexible PowerShell script that shortens frequently used commands. With its readable code, it's easy to add of new command.
<div align="center">
  <img title="q's help command" src="https://github.com/bernzrdo/q/assets/27358071/b0f9e63e-35ab-4356-814b-76b6ff87de8c" height="500">
</div>

## Add & Edit Commands

Running `q edit` will open the script on VS Code.

On the `switch` statement, you can add the command's functionally. Here's an example:

```ps1
    "github" {
          Start-Process "https://github.com/bernzrdo/q"
    }
```

Inside the `Help` function, you can add the command's description. Here's an example:

```ps1
    HelpCommand "github" "Open q's repository";
```

After saving, you can now use your command!

## Bug Report & Suggestions

You can report bugs and suggest features in the [Issues](https://github.com/bernzrdo/q/issues) page.
