-- Rex configuration, migrated from tmux (~/.tmux.conf) and zellij
-- (~/.config/zellij/config.kdl). Ghostty contributed no key bindings.

---------------------------------------------------------------------------
-- tmux (prefix ctrl+a)
---------------------------------------------------------------------------
rex.bind("ctrl+a>ctrl+a", "pane.send_key", { key = "ctrl+a" })
rex.bind("ctrl+a>shift+\\", "pane.split", { direction = "right" })
rex.bind("ctrl+a>-", "pane.split", { direction = "down" })
rex.bind("ctrl+a>r", "client.config.reload")
rex.bind("ctrl+a>j", "pane.resize", { amount = 7, direction = "down" })
rex.bind("ctrl+a>k", "pane.resize", { amount = 5, direction = "up" })
rex.bind("ctrl+a>l", "pane.resize", { amount = 5, direction = "right" })
rex.bind("ctrl+a>h", "pane.resize", { amount = 5, direction = "left" })
rex.bind("ctrl+a>m", "pane.zoom")

-- tmux `bind -r`: ctrl+a then ctrl+r enters the repeat mode; enter or escape leaves it.
rex.mode("repeat", { exclusive = true })
rex.bind("ctrl+a>ctrl+r", "client.mode.enter", { name = "repeat" })
rex.bind("repeat/enter", "client.mode.exit")
rex.bind("repeat/escape", "client.mode.exit")
rex.bind("repeat/m", "pane.zoom")

---------------------------------------------------------------------------
-- zellij (clear-defaults=true, default_mode "locked")
--
-- zellij rests in locked mode, so locked is Rex with no mode active.
-- zellij's normal mode is the Rex mode "unlocked", which ctrl+g enters.
-- Keys typed in "unlocked" that are not bound here still reach the terminal.
-- pane, tab, resize, move, scroll and session are exclusive Rex modes.
---------------------------------------------------------------------------

-- Runs an action, then leaves every mode (zellij: SwitchToMode "locked").
rex.action{
  name  = "then_normal",
  title = "Run an action and return to normal mode",
  args  = { action = "string", args = "object?" },
  run   = function(ctx, args)
    rex.client.queue(args.action, args.args or {})
    rex.client.queue("client.mode.exit_all")
  end,
}

-- Leaves every mode, then enters one (zellij: SwitchToMode between modes).
rex.action{
  name  = "switch_mode",
  title = "Switch to a key mode",
  args  = { name = "string" },
  run   = function(ctx, args)
    rex.client.queue("client.mode.exit_all")
    rex.client.queue("client.mode.enter", { name = args.name })
  end,
}

rex.mode("pane", { exclusive = true })
rex.mode("tab", { exclusive = true })
rex.mode("resize", { exclusive = true })
rex.mode("move", { exclusive = true })
rex.mode("scroll", { exclusive = true })
rex.mode("session", { exclusive = true })

-- locked (no mode): ctrl+g unlocks.
rex.bind("ctrl+g", "client.mode.enter", { name = "unlocked" })

-- shared_among "normal" "locked": bound with no mode and in "unlocked".
for _, m in ipairs({ "", "unlocked/" }) do
  rex.bind(m .. "alt+left", "pane.focus", { direction = "left" })
  rex.bind(m .. "alt+down", "pane.focus", { direction = "down" })
  rex.bind(m .. "alt+up", "pane.focus", { direction = "up" })
  rex.bind(m .. "alt+right", "pane.focus", { direction = "right" })
  rex.bind(m .. "alt+h", "pane.focus", { direction = "left" })
  rex.bind(m .. "alt+j", "pane.focus", { direction = "down" })
  rex.bind(m .. "alt+k", "pane.focus", { direction = "up" })
  rex.bind(m .. "alt+l", "pane.focus", { direction = "right" })
  rex.bind(m .. "alt+i", "client.tab.move", { direction = "backward" })
  rex.bind(m .. "alt+o", "client.tab.move", { direction = "forward" })
  rex.bind(m .. "alt+n", "pane.split", { direction = "auto" })
end

-- shared_except blocks: ctrl+g, enter and esc return to locked.
for _, m in ipairs({ "unlocked", "pane", "tab", "resize", "move", "scroll", "session" }) do
  rex.bind(m .. "/ctrl+g", "client.mode.exit_all")
  rex.bind(m .. "/enter", "client.mode.exit_all")
  rex.bind(m .. "/esc", "client.mode.exit_all")
end

-- shared blocks: the keys that switch from one mode to another.
for _, m in ipairs({ "unlocked", "pane", "tab", "resize", "scroll", "session" }) do
  rex.bind(m .. "/m", "switch_mode", { name = "move" })
end
for _, m in ipairs({ "unlocked", "pane", "tab", "resize", "move", "scroll" }) do
  rex.bind(m .. "/o", "switch_mode", { name = "session" })
end
for _, m in ipairs({ "unlocked", "pane", "resize", "move", "scroll", "session" }) do
  rex.bind(m .. "/t", "switch_mode", { name = "tab" })
end
for _, m in ipairs({ "unlocked", "pane", "resize", "move", "session" }) do
  rex.bind(m .. "/s", "switch_mode", { name = "scroll" })
end
for _, m in ipairs({ "unlocked", "resize", "tab", "scroll" }) do
  rex.bind(m .. "/p", "switch_mode", { name = "pane" })
end
for _, m in ipairs({ "unlocked", "move", "scroll", "session" }) do
  rex.bind(m .. "/r", "switch_mode", { name = "resize" })
end

-- pane mode
rex.bind("pane/left", "pane.focus", { direction = "left" })
rex.bind("pane/down", "pane.focus", { direction = "down" })
rex.bind("pane/up", "pane.focus", { direction = "up" })
rex.bind("pane/right", "pane.focus", { direction = "right" })
rex.bind("pane/h", "pane.focus", { direction = "left" })
rex.bind("pane/j", "pane.focus", { direction = "down" })
rex.bind("pane/k", "pane.focus", { direction = "up" })
rex.bind("pane/l", "pane.focus", { direction = "right" })
rex.bind("pane/c", "then_normal", { action = "pane.rename" })
rex.bind("pane/d", "then_normal", { action = "pane.split", args = { direction = "down" } })
rex.bind("pane/f", "then_normal", { action = "pane.zoom" })
rex.bind("pane/n", "then_normal", { action = "pane.split", args = { direction = "auto" } })
rex.bind("pane/r", "then_normal", { action = "pane.split", args = { direction = "right" } })
rex.bind("pane/x", "then_normal", { action = "pane.close" })
rex.bind("pane/p", "switch_mode", { name = "unlocked" })
rex.bind("pane/tab", "pane.focus_next")

-- tab mode
rex.bind("tab/left", "client.tab.previous")
rex.bind("tab/down", "client.tab.next")
rex.bind("tab/up", "client.tab.previous")
rex.bind("tab/right", "client.tab.next")
rex.bind("tab/h", "client.tab.previous")
rex.bind("tab/j", "client.tab.next")
rex.bind("tab/k", "client.tab.previous")
rex.bind("tab/l", "client.tab.next")
for i = 1, 9 do
  rex.bind("tab/" .. i, "then_normal", { action = "client.tab.goto", args = { index = i } })
end
rex.bind("tab/b", "then_normal", { action = "pane.move_to_new_tab" })
rex.bind("tab/n", "then_normal", { action = "client.tab.new" })
rex.bind("tab/r", "then_normal", { action = "client.tab.rename" })
rex.bind("tab/x", "then_normal", { action = "client.tab.close" })
rex.bind("tab/t", "switch_mode", { name = "unlocked" })

-- resize mode
rex.bind("resize/left", "pane.resize", { direction = "left" })
rex.bind("resize/down", "pane.resize", { direction = "down" })
rex.bind("resize/up", "pane.resize", { direction = "up" })
rex.bind("resize/right", "pane.resize", { direction = "right" })
rex.bind("resize/h", "pane.resize", { direction = "left" })
rex.bind("resize/j", "pane.resize", { direction = "down" })
rex.bind("resize/k", "pane.resize", { direction = "up" })
rex.bind("resize/l", "pane.resize", { direction = "right" })
rex.bind("resize/r", "switch_mode", { name = "unlocked" })

-- move mode
rex.bind("move/left", "pane.move", { direction = "left" })
rex.bind("move/down", "pane.move", { direction = "down" })
rex.bind("move/up", "pane.move", { direction = "up" })
rex.bind("move/right", "pane.move", { direction = "right" })
rex.bind("move/h", "pane.move", { direction = "left" })
rex.bind("move/j", "pane.move", { direction = "down" })
rex.bind("move/k", "pane.move", { direction = "up" })
rex.bind("move/l", "pane.move", { direction = "right" })
rex.bind("move/m", "switch_mode", { name = "unlocked" })

-- scroll mode (zellij's scroll and search actions have no Rex counterpart)
rex.bind("scroll/alt+left", "then_normal", { action = "pane.focus", args = { direction = "left" } })
rex.bind("scroll/alt+down", "then_normal", { action = "pane.focus", args = { direction = "down" } })
rex.bind("scroll/alt+up", "then_normal", { action = "pane.focus", args = { direction = "up" } })
rex.bind("scroll/alt+right", "then_normal", { action = "pane.focus", args = { direction = "right" } })
rex.bind("scroll/alt+h", "then_normal", { action = "pane.focus", args = { direction = "left" } })
rex.bind("scroll/alt+j", "then_normal", { action = "pane.focus", args = { direction = "down" } })
rex.bind("scroll/alt+k", "then_normal", { action = "pane.focus", args = { direction = "up" } })
rex.bind("scroll/alt+l", "then_normal", { action = "pane.focus", args = { direction = "right" } })
rex.bind("scroll/s", "switch_mode", { name = "unlocked" })

-- session mode (zellij's plugins and Detach have no Rex counterpart)
rex.bind("session/o", "switch_mode", { name = "unlocked" })
