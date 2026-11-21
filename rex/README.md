# Rex Keyboard Reference

A quick reference for the Rex shortcuts in daily use. Custom bindings live in
`.config/rex/init.lua`. Rex defaults require no configuration.

## Daily Shortcuts

### Switch Panes (custom)

| Action | Shortcut |
| --- | --- |
| Focus left | `alt+h` or `alt+left` |
| Focus down | `alt+j` or `alt+down` |
| Focus up | `alt+k` or `alt+up` |
| Focus right | `alt+l` or `alt+right` |

### Create Splits (custom)

| Action | Shortcut |
| --- | --- |
| Split right | `ctrl+a`, then `shift+\` (the pipe key) |
| Split down | `ctrl+a`, then `-` |
| Split in the best-fit direction | `alt+n` |

### Switch Tabs (Rex defaults)

| Action | Shortcut |
| --- | --- |
| Next tab | `ctrl+tab` or `shift+cmd+]` |
| Previous tab | `ctrl+shift+tab` or `shift+cmd+[` |
| Go to tab 1 through 9 | `cmd+1` through `cmd+9` |

### Sessions and Windows (Rex defaults)

| Action | Shortcut |
| --- | --- |
| Open the session picker | `cmd+k` |
| New window | `cmd+n` |
| Close window | `shift+cmd+w` |

## Other Pane Shortcuts

| Action | Custom | Rex default |
| --- | --- | --- |
| Zoom the pane | `ctrl+a`, then `m` | `shift+cmd+enter` |
| Resize the pane | `ctrl+a`, then `h`, `j`, `k`, or `l` | (none) |
| Close the pane | `ctrl+g`, then `p`, then `x` | `cmd+w` |
| Next or previous pane | `ctrl+g`, then `p`, then `tab` | `cmd+]` or `cmd+[` |
| Return to the last pane in this tab | (none) | `cmd+;` |
| Move the tab backward or forward | `alt+i` or `alt+o` | (none) |
| Reload the config | `ctrl+a`, then `r` | (none) |

Note: `alt+i` and `alt+o` reorder the current tab in the tab bar. They do not
switch tabs.

## Modes (migrated from zellij)

Press `ctrl+g` to unlock, then press a letter to enter a mode. Press `enter`,
`esc`, or `ctrl+g` to return to normal.

| Mode | Key | Keys inside the mode |
| --- | --- | --- |
| Pane | `p` | `h` `j` `k` `l` focus, `r` split right, `d` split down, `n` split best fit, `f` zoom, `c` rename, `x` close, `tab` next pane |
| Tab | `t` | `h` `l` previous or next, `1` to `9` go to tab, `n` new, `r` rename, `x` close, `b` move the pane to a new tab |
| Resize | `r` | `h` `j` `k` `l` resize |
| Move | `m` | `h` `j` `k` `l` move the pane |
| Scroll | `s` | `alt+h` `alt+j` `alt+k` `alt+l` focus a pane and exit |
| Session | `o` | (no bindings yet) |

Arrow keys work in place of `h` `j` `k` `l` in the pane, tab, resize, and move
modes. Actions that split, close, rename, zoom, or jump return to normal
automatically.

## Font Size

The default font size is a Rex app setting, not an `init.lua` option, so this
repository does not track it. Set it again on each new machine.

| Action | Where |
| --- | --- |
| Set the default size | Settings > Terminal > Typography > Font size |
| Increase temporarily | `cmd+=` |
| Decrease temporarily | `cmd+-` |
| Reset to the default | `cmd+0` |

## More Information

- Rex documentation: https://www.superlogical.com/rex/docs
- Every Mac action and its default shortcut: https://www.superlogical.com/rex/docs/reference/mac-actions
