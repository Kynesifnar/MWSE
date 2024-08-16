local ffi = require("ffi")

local Base = require("mwse.ui.tes3uiElement.createColorPicker.Base")
local Image = require("mwse.ui.tes3uiElement.createColorPicker.Image")
local oklab = require("mwse.ui.tes3uiElement.createColorPicker.oklab")


-- Defined in oklab\init.lua
local ffiPixel = ffi.typeof("RGB") --[[@as fun(init: ffiImagePixelInit?): ffiImagePixel]]


--- @class ColorPickerTextureTable
---	@field main niSourceTexture
---	@field hue niSourceTexture
---	@field alpha niSourceTexture

--- @class ColorPicker
--- @field mainWidth integer Width of the main picker.
--- @field height integer Height of all the picker widgets.
--- @field hueWidth integer Width of hue and alpha pickers.
--- @field mainImage Image
--- @field hueBar Image
--- @field alphaCheckerboard Image
--- @field alphaBar Image
--- @field textures ColorPickerTextureTable
--- @field currentColor ffiImagePixel
--- @field currentAlpha number
--- @field initialColor ImagePixel
--- @field initialAlpha number
local ColorPicker = Base:new()

--- @class ColorPicker.new.data
--- @field mainWidth integer Width of the main picker. **Remember, to use it as an engine texture use power of 2 dimensions.**
--- @field height integer Height of all the picker widgets. **Remember, to use it as an engine texture use power of 2 dimensions.**
--- @field hueWidth integer Width of hue and alpha pickers. **Remember, to use it as an engine texture use power of 2 dimensions.**
--- @field initialColor ImagePixel
--- @field initialAlpha number? *Default*: 1.0

--- @param data ColorPicker.new.data
--- @return ColorPicker
function ColorPicker:new(data)
	local t = Base:new(data)
	setmetatable(t, self)

	if not data.initialAlpha then
		t.initialAlpha = 1.0
	end

	t.currentColor = ffiPixel({ data.initialColor.r, data.initialColor.g, data.initialColor.b })
	t.currentAlpha = t.initialAlpha

	t.mainImage = Image:new({
		width = data.mainWidth,
		height = data.height,
	})
	local startHSV = oklab.hsvlib_srgb_to_hsv(t.currentColor)
	t.mainImage:mainPicker(startHSV.h)

	t.hueBar = Image:new({
		width = data.hueWidth,
		height = data.height,
	})
	t.hueBar:verticalHueBar()

	t.alphaCheckerboard = Image:new({
		width = data.hueWidth,
		height = data.height,
	})
	t.alphaCheckerboard:toCheckerboard()

	t.alphaBar = Image:new({
		width = data.hueWidth,
		height = data.height,
	})
	t.alphaBar:verticalGradient(
		{ r = 0.25, g = 0.25, b = 0.25, a = 1.0 },
		{ r = 1.0,  g = 1.0,  b = 1.0,  a = 0.0 }
	)
	t.alphaBar = t.alphaBar:blend(t.alphaCheckerboard, true) --[[@as Image]]

	-- Create textures for this Color Picker
	t.textures = {
		main = niPixelData.new(data.mainWidth, data.height):createSourceTexture(),
		hue = niPixelData.new(data.hueWidth, data.height):createSourceTexture(),
		alpha = niPixelData.new(data.hueWidth, data.height):createSourceTexture(),
	}
	for _, texture in pairs(t.textures) do
		texture.isStatic = false
	end

	self.__index = self
	return t
end

--- @param color ffiImagePixel
--- @param alpha number
function ColorPicker:setColor(color, alpha)
	self.currentColor = color
	self.currentAlpha = alpha
end

function ColorPicker:getAlpha()
	return self.currentAlpha
end

--- @return ImagePixel
function ColorPicker:getColor()
	local c = self.currentColor
	return { r = c.r, g = c.g, b = c.b }
end

function ColorPicker:getColorAlpha()
	return self:getColor(), self:getAlpha()
end

--- @return ImagePixelA
function ColorPicker:getRGBA()
	local c = self.currentColor
	return { r = c.r, g = c.g, b = c.b, a = self.currentAlpha }
end

--- @param color ffiImagePixel
function ColorPicker:updateMainImage(color)
	local hsv = oklab.hsvlib_srgb_to_hsv(color)
	self.mainImage:mainPicker(hsv.h)
end

return ColorPicker
