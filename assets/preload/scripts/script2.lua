function onTweenCompleted(tag)
if tag == 'MoveOutOne' then
removeLuaSprite('JukeBoxTag', true)
	end
end

function onDestroy()
clearUnusedMemory()
 clearStoredMemory(true)
 end

