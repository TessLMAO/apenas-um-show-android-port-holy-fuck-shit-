local angleshit = 1
local anglevar = 1
local followchars = true
function onCreate()

	makeLuaSprite('bartop','',0,-30)
	makeGraphic('bartop',1280,100,'000000')
	addLuaSprite('bartop',true)

	makeLuaSprite('barbot','',0,650)
	makeGraphic('barbot',1280,100,'000000')
	addLuaSprite('barbot',true)
	setScrollFactor('bartop',0,0)
	setScrollFactor('barbot',0,0)
	setObjectCamera('bartop','hud')
	setObjectCamera('barbot','hud')
	end

function onCreatePost()
setProperty('boyfriend.y', getProperty('boyfriend.y') + 120)
setProperty('dad.y', getProperty('dad.y') + 120)

makeLuaSprite('bg', 'pibben/bg', -1000, -100)
	setScrollFactor('bg', 0.7, 0.7)
scaleObject('bg', 2.0, 2.0)

	makeLuaSprite('fg', 'pibben/fg', -1400, 850)
	setScrollFactor('fg', 1.2, 1.2)
scaleObject('fg', 2.0, 2.0)

	makeLuaSprite('hm', 'pibben/hm', -1400, -300)
		setBlendMode('hm', 'subtract')
scaleObject('hm', 2.0, 2.0)

makeLuaSprite('sky', 'pibben/sky', -900, -650)
	setScrollFactor('sky', 0.1, 0.1)
	scaleObject('sky', 2.0, 2.0)
if not lowQuality then
	makeAnimatedLuaSprite('glitch', 'pibben/glitch', -1000, 356)
	addAnimationByPrefix('glitch','glitch','glitch',24,true)
	setScrollFactor('glitch', 0.9, 0.9)
	
	makeLuaSprite('overlay', 'pibben/overlay', -900, -700)
	setBlendMode('overlay', 'add')
	setScrollFactor('overlay', 0.5, 0.5)
scaleObject('overlay', 2.0, 2.0)

	makeLuaSprite('overlay2', 'pibben/overlay2', -900, -700)
	setBlendMode('overlay2', 'add')
scaleObject('overlay2', 2.0, 2.0)
end

	setProperty('overlay.alpha', 0.7)
	setProperty('overlay2.alpha', 0)
	setProperty('hm.alpha', 0)

	addLuaSprite('sky',false)
	addLuaSprite('bg',false)
	addLuaSprite('fg',true)
	addLuaSprite('glitch',false)
	addLuaSprite('overlay',true)
	addLuaSprite('overlay2',true)
	addLuaSprite('hm',true)
	xx = 420.95
	yy = 313


	setProperty('timeTxt.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)

end
function onBeatHit()
	if curBeat % 4 == 0 then
		objectPlayAnimation('space','space',true)
	end
	if curBeat == 128 then
		doTweenAlpha('night1', 'hm', 1, 70, 'linear')
		doTweenAlpha('night2', 'overlay', 0, 40, 'linear')
		doTweenAlpha('night3', 'overlay2', 1, 40, 'linear')
		doTweenY('night4', 'sky', 0.2, 120, 'linear')
	end
end

function onUpdate()
	if mustHitSection == true then
		setProperty('defaultCamZoom',1)
	end
	if mustHitSection == false then
		setProperty('defaultCamZoom',0.6)
	end
end

function onTweenCompleted(tag)
if tag == 'night2' then
removeLuaSprite('overlay', true)
	end
end

