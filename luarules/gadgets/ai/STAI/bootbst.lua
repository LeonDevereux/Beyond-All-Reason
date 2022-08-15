BootBST = class(Behaviour)

function BootBST:Name()
	return "BootBST"
end

BootBST.DebugEnabled = false

local CMD_MOVE_STATE = 50
local MOVESTATE_HOLDPOS = 0

function BootBST:Init()
	self.id = self.unit:Internal():ID()
	self.name = self.unit:Internal():Name()
	self.mobile = not self.ai.armyhst.unitTable[self.name].isBuilding
	self.mtype = self.ai.armyhst.unitTable[self.name].mtype
	self.lastInFactoryCheck = self.game:Frame()
	-- air units don't need to leave the factory
	self.ignoreFactories = self.mtype == "air" or not self.mobile
	self.finished = false
	if not self.ignoreFactories then self:FindMyFactory() end
	self.unit:ElectBehaviour()
end

function BootBST:OwnerBuilt()
	self.finished = true
	if self.active then self.lastOrderFrame = self.game:Frame() end
end

function BootBST:OwnerDead()
	self.factory = nil
end

function BootBST:Update()
	if self.ai.schedulerhst.behaviourTeam ~= self.ai.id or self.ai.schedulerhst.behaviourUpdate ~= 'BootBST' then return end
	local f = self.game:Frame()
	if not self.finished then return end
	if self.ignoreFactories then return end
	if self.factory then
			local u = self.unit:Internal()
			local pos = u:GetPosition()
			if not self.ai.tool:PositionWithinRect(pos, self.factory.exitRect) then
				self.factory = nil
				self.unit:ElectBehaviour()
			elseif self.active and self.lastOrderFrame and self.lastExitSide then
				-- twelve seconds after the first attempt, try a different side
				-- if there's only one side, try it again
				if f > self.lastOrderFrame + 360 then
					local face, nsew =self.ai.buildsitehst:GetFacing(pos)
					self:ExitFactory(face)

				end
			end
	else
		if f > self.lastInFactoryCheck + 300 then
			-- units (especially construction units) can still get stuck in factories long after they're built
			self.lastInFactoryCheck = f
			self:FindMyFactory()
			if self.factory then
				self:EchoDebug(self.name .. " is in a factory")
				self.unit:ElectBehaviour()
			end
		end
	end
end

function BootBST:Activate()
	self:EchoDebug("activated on " .. self.name)
	self.active = true
	if self.repairedBy then
		self:SetMoveState()
	elseif self.factory then
		self:ExitFactory()
	end
end

function BootBST:Deactivate()
	self:EchoDebug("deactivated on " .. self.name)
	self.active = false
end

function BootBST:Priority()
	if self.factory or (self.repairedBy and self.mobile) then
		return 120
	else
		return 0
	end
end

-- set to hold position while being repaired after resurrect
function BootBST:SetMoveState()
	local thisUnit = self.unit
	if thisUnit then
		thisUnit:Internal():HoldPosition()
	end
end

function BootBST:FindMyFactory()
	local pos = self.unit:Internal():GetPosition()
	for level, factories in pairs(self.ai.factoriesAtLevel) do
		for i, factory in pairs(factories) do
			if self.ai.tool:PositionWithinRect(pos, factory.exitRect) then
				self.factory = factory
				return
			end
		end
	end
	self.factory = nil
end

function BootBST:ExitFactory(face)
	local pos = self.factory.position
	face = face or self.ai.buildsitehst:GetFacing(pos)
	self:EchoDebug(self.name .. " exiting " .. face)
	local outX, outZ
	if face == 0 then
		outX = 0
		outZ = 200
	elseif face == 2 then
		outX = 0
		outZ = -200
	elseif face == 3 then
		outX = -200
		outZ = 0
	elseif face == 1 then
		outX = 200
		outZ = 0
	end
	local u = self.unit:Internal()

	local out = api.Position()
	out.x = pos.x + outX
	out.y = pos.y + 0
	out.z = pos.z + outZ
	local mapSize = self.map:MapDimensions()
	local maxElmosX = mapSize.x * 8
	local maxElmosZ = mapSize.z * 8
	if out.x > maxElmosX - 1 then
		out.x = maxElmosX - 1
	elseif out.x < 1 then
		out.x = 1
	end
	if out.z > maxElmosZ - 1 then
		out.z = maxElmosZ - 1
	elseif out.z < 1 then
		out.z = 1
	end
 	u:Move(out)
	self.lastOrderFrame = self.game:Frame()
	self.lastExitSide = face
end
