-- COLLECTION
(function()
	collection = {}
	collection.delete = 0xFFAAFAFF
	local GCollection = {}
	function GCollection:add(elem, limit)
		if limit and #self.elems >= limit then
			table.remove(self.elems, 1)
		end
		table.insert(self.elems, elem)
	end
	function GCollection:addl(elem, limit)
		if #self.elems >= limit then
			return false
		end
		table.insert(self.elems, elem)
		return true
	end
	function GCollection:process(func)
		local newArr = {}
		for _, elem in ipairs(self.elems) do
			if func(elem)~=collection.delete then
				table.insert(newArr, elem)
			end
		end
		self.elems = newArr
	end
	function GCollection:list()
		return self.elems
	end
	function collection.new()
		local g = {elems={}}
		setmetatable(g, {__index=GCollection})
		return g
	end
end)()