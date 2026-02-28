local iostream = require(script.Parent.iostream)
local BaseIOStreamController = require(script.Parent.Parent.Models.BaseIOStreamController)
local ModelsHandler = require(script.Parent.types.Models.ModelsHandler)

local hi = BaseIOStreamController.new(Instance.new("ScreenGui"), {
	Stream = iostream.CreateStream(Instance.new("Configuration"), {
		Parent = ModelsHandler.Models,
	}),
})

local hello = BaseIOStreamController.SetArguments({
	Parent = ModelsHandler.Models,
})

hi.Controller.Parent = hello.Types.Parent
