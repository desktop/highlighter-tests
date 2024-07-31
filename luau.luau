--[[
    big comment
]]
local atomTest = true
local atomTestWithType: boolean = true
local atomTestWithTyper: true | false = true -- comments
local positiveTest = true
local negativeTest = false
local stringTest = "string"
local stringTestWithType: string = "string"

local coolNumber = 1
coolNumber *= 2

--[[
    tablas
]]
--

local coolTable = {
	wow = {
		{
			a = 2,
			f = {
				five = "5",
			},
		},
	},
}

for i, v in ipairs(coolTable) do
	print(i, v)
end

for i: number, v in ipairs(coolTable) do
	print(i, v)
end

print(#coolTable)

if true then
	print("cool")
end

if #coolTable.wow == 1 then
	print("cooler")
else
	print("not cooler")
end

if #coolTable.wow ~= 1 then
	print("cooler 2")
else
	print("not cooler 2")
end

if #coolTable.wow >= 1 then
	print("cooler 3")
else
	print("not cooler 3")
end

--=> Test
do
	local module = {}

	function module:getHello(): string
		return "hello from module!"
	end
	function module:hello(): string
		return self:getHello()
	end

	print(module:hello())
end

--=> Type Testing
export type Test = {}
export type TestType = Test & {}

--=> backtick

print(`Hello, {coolTable.wow[1].a}!`)

--=> Roblox Services

local RunService = game:GetService("RunService")
