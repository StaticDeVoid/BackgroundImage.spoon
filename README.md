# BackgroundImage.spoon
simple hammerspoon spoon to overlay a canvas that acts as a new wallpaper, used to override a company mandated wallpaper


## Example init.lua to run the script on launch
```lua
hs.loadSpoon("ImageOverlay")

-- Set the image path if you want to change the default image
spoon.ImageOverlay:setImagePath("/Users/jordan.jones/Pictures/a0854720793_10 copy.jpeg")

-- Bind hotkeys to show and hide the image
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I", function()
    spoon.ImageOverlay:showImage()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
    spoon.ImageOverlay:hideImage()
end)

```
