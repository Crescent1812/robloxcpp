local BaseIOStreamController = {}
BaseIOStreamController.__index = BaseIOStreamController

type BaseIOSController<B, S> = {
	Controller: B,
	Arguments: S,
}

type Arguments<AT> = {
	Types: AT,
}

type UseController<US> = {
	UseC: US,
}

function BaseIOStreamController.new<B, S>(Controller: B, Arguments: S): BaseIOSController<B, S>
	local self = setmetatable({}, BaseIOStreamController)
	return {
		Controller = Controller,
		Arguments = Arguments,
	}
end

function BaseIOStreamController:GetController(): any
	return self.Controller
end

function BaseIOStreamController.SetArguments<AT>(ArgumentTypes: AT): Arguments<AT>
	return {
		Types = ArgumentTypes,
	}
end

function BaseIOStreamController.UseController<US>(UseC: US): UseController<US> end

return BaseIOStreamController
