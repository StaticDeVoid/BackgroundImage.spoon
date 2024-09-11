--- === ImageOverlay ===
--- A spoon to display a non-interactable full-screen image on the desktop.

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "ImageOverlay"
obj.version = "1.0"
obj.author = "Jade Jones"
obj.homepage = "https://github.com/StaticDevoid/ImageOverlay.spoon"
obj.license = "MIT"

-- Default image path
obj.imagePath = "your/custom/path.png"

-- Function to display the image
function obj:showImage()
    local screen = hs.screen.mainScreen()
    local frame = screen:frame()

    -- Create a canvas that covers the entire screen
    local canvas = hs.canvas.new(frame):level(hs.drawing.windowLevels.desktopIcon)

    -- Add the image to the canvas
    canvas[1] = {
        type = "image",
        image = hs.image.imageFromPath(obj.imagePath),
        imageScaling = "scaleToFit",
    }

    -- Show the canvas (image will not be interactable)
    canvas:show()

    -- Store canvas reference to allow later modifications
    self.canvas = canvas
end

-- Function to hide the image
function obj:hideImage()
    if self.canvas then
        self.canvas:delete()
        self.canvas = nil
    end
end

-- Function to set a custom image path
function obj:setImagePath(path)
    self.imagePath = path
end

return obj
