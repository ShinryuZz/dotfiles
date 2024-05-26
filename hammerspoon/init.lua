hs.loadSpoon("ShiftIt")

mash = {'ctrl', 'cmd'}
myKeys = {
  left = { mash, 'left' },
  right = { mash, 'right' },
  up = { mash, 'up' },
  down = { mash, 'down' },
  upleft = { mash, '1' },
  upright = { mash, '2' },
  botleft = { mash, '3' },
  botright = { mash, '4' },
  maximum = { mash, 'm' },
  toggleFullScreen = { mash, 'f' },
  toggleZoom = { mash, 'z' },
  center = { mash, 'o' },
  nextScreen = { mash, 'l' },
  previousScreen = { mash, 'h' },
  resizeOut = { mash, '=' },
  resizeIn = { mash, '-' },
}

spoon.ShiftIt:bindHotkeys(myKeys)