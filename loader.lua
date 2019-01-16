file = workspace.Files
if not file then error("'Files' is not in workspace.") end
function pathsearch(pathstamp,pathfile)
	for i,v in pairs(pathfile:GetChildren()) do
		if v:IsA("Configuration") then
			pathsearch(pathstamp[v.Name],v)
		else
			v.Parent = pathstamp
		end
	end
end
pathsearch(game,file)
file.Parent = nil
print("DirusEngine loaded.")
