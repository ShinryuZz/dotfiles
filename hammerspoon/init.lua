hs.loadSpoon("ShiftIt")

mash = { "ctrl", "cmd" }

myKeys = {
	left = { mash, "h" },
	right = { mash, "l" },
	up = { mash, "up" },
	down = { mash, "down" },
	upleft = { mash, "1" },
	upright = { mash, "2" },
	botleft = { mash, "3" },
	botright = { mash, "4" },
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
