local iostream = {
	Items = {},
}
iostream.__index = iostream

local Models = script.Parent.Parent.Models

type Stream<S> = {
	Stream: S,
}

function iostream.Items.StoreItemInStream<I>(StreamType, Item: I): I
	return Item
end

function iostream.newfunc<V>(t: V): V
	if typeof(t) == "function" then
		t()
	end
	return t
end

function iostream.NewClass<C>(Arguments: C): C
	return Arguments
end

function iostream.CreateStream<S>(Stream: Configuration, Arguments: { S }): S
	Arguments = Arguments or {}
	local self = setmetatable({}, iostream)
	Stream.Parent = script.Parent.Parent.Models
	return self
end

return iostream
