file = Workspace:FindFirstChild("Files")
if not file then error("'Files' is not in workspace.") end
function pathsearch(pathstamp,pathfile)
	for i,v in pairs(pathfile:GetChildren()) do
		if v:IsA("Configuration") then
			pathsearch(pathstamp[v.Name],v)
		else
			if pathstamp:FindFirstChild(v.Name) ~= nil then pathstamp:FindFirstChild(v.Name):Destroy() end
			v.Parent = pathstamp
		end
	end
end
pathsearch(game,file)
file.Parent = nil
print([[


DirusEngine loaded.

Apply 'require(game.ServerScriptService.DirusEngine.Get)()'
to the tops of your Sever-Sided scripts.
]])
