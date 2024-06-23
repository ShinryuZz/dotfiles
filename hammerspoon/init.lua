hs.loadSpoon("ShiftIt")

mash = { "ctrl", "cmd" }

myKeys = {
	left = { mash, "h" },
	right = { mash, "l" },
	up = { mash, "up" },
	down = { mash, "down" },
	-- upleft = { mash, "1" },
	-- upright = { mash, "2" },
	-- botleft = { mash, "3" },
	-- botright = { mash, "4" },
	maximum = { mash, "m" },
	toggleFullScreen = { mash, "f" },
	toggleZoom = { mash, "z" },
	center = { mash, "o" },
	nextScreen = { mash, "n" },
	previousScreen = { mash, "p" },
	resizeOut = { mash, "=" },
	resizeIn = { mash, "-" },
}

spoon.ShiftIt:bindHotkeys(myKeys)

switcher = hs.window.switcher.new()

hs.hotkey.bind(mash, "f", "", function()
	switcher:next()
end)
hs.hotkey.bind(mash, "b", "", function()
	switcher:previous()
end)

-- local hotswitchHs = require("hotswitch-hs/hotswitch-hs")
-- hotswitchHs.enableAutoUpdate() -- If you don't want to update automatically, remove this line.
-- hs.hotkey.bind({ "command" }, ".", hotswitchHs.openOrClose) -- Set a keybind you like to open HotSwitch-HS panel.
