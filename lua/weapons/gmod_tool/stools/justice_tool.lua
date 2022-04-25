TOOL.Category		=	"Justice's Tutorials"
TOOL.Name			=	"Justice Test Tool"
TOOL.Command		=	nil
TOOL.ConfigName		=	""

if CLIENT then
	language.Add("Tool.justice_tool.name", "Justice's Test Tool")
	language.Add("Tool.justice_tool.desc", "For creating own addons.")
	language.Add("Tool.justice_tool.0", "Left Click: Nothing, Right Click: Nothing")
    language.Add("Tool.justice_tool.model", "Model: ")
    language.Add("Tool.justice_tool.material", "Material: ")
	

	surface.CreateFont("JusticeToolScreenFont", { font = "Arial", size = 40, weight = 1000, antialias = true, additive = false })
	surface.CreateFont("JusticeToolScreenSubFont", { font = "Arial", size = 30, weight = 1000, antialias = true, additive = false })
end

function TOOL:LeftClick(trace)
    if CLIENT then return true end

    return true
end

function TOOL:RightClick(trace)
	if CLIENT then return true end
	

	return true
end

function TOOL:Reload(trace)
	if CLIENT then return true end

	return true
end

function TOOL.BuildCPanel(panel)


end

function TOOL:DrawToolScreen(width, height)

	if SERVER then return end

	surface.SetDrawColor(17, 148, 240, 255)
	surface.DrawRect(0, 0, 256, 256)

	surface.SetFont("JusticeToolScreenFont")
	local w, h = surface.GetTextSize(" ")
	surface.SetFont("JusticeToolScreenSubFont")
	local w2, h2 = surface.GetTextSize(" ")

	draw.SimpleText("Justice's Test Tool", "JusticeToolScreenFont", 128, 100, Color(224, 224, 224, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, Color(17, 148, 240, 255), 4)
	draw.SimpleText("By Justice", "JusticeToolScreenSubFont", 128, 128 + (h + h2) / 2 - 4, Color(224, 224, 224, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, Color(17, 148, 240, 255), 4)

end
