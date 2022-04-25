include("shared.lua")
local imgui = include("base/thirdparty/imgui.lua")

function ENT:DrawTranslucent()
    self:DrawModel()
    
    if imgui.Entity3D2D(self, Vector(-15,6,0), Angle(0,90,0), 0.1) then


        imgui.End3D2D()
    end
end