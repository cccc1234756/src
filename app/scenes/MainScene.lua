

local ui = require("framework.ui")

local MainScene = class("MainScene", function()
    return display.newScene("MainScene")
end)

function MainScene:ctor()
    self:init()
end
function MainScene:init()
	-- 背景
	local bg = display.newSprite("loadingBG.png")
	local scaleX = display.width/bg:getContentSize().width 
	local scaleY = display.height/bg:getContentSize().height
	bg:setScaleX(scaleX)
	bg:setScaleY(scaleY)
	bg:setPosition(display.cx,display.cy)
	self:addChild(bg)
    
    -- 进度条
    local  timer = cc.ProgressTimer:create(cc.Sprite:create("slider.png"))
    timer:setPosition(display.cx-10,display.cy-175)
    timer:setBarChangeRate(cc.p(1,0))
    timer:setType(display.PROGRESS_TIMER_BAR)
    timer:setMidpoint(cc.p(0,0.5))
    timer:setPercentage(0)
    timer:addTo(self)

     local progress = cc.ProgressTo:create(4,100)
    local call = cc.CallFunc:create(function()
       local secene = require("app.scenes.Start").new()
       local turn = cc.TransitionPageTurn:create(1,secene,false)
       -- local turn =cc.TransitionFadeBL:create(1,secene)
       cc.Director:getInstance():replaceScene(turn)
        end)
    local seq = cc.Sequence:create(progress,call)
    timer:runAction(seq)

    -- -- label
    -- local lab=ui.newTTFLabel({text="帝国纵横",size=40,color=cc.c3b(0, 0, 200)})
    -- lab:setPosition(cc.p(display.cx,display.cy+120))
    -- lab:addTo(self)


end
function MainScene:onEnter()
end

function MainScene:onExit()
end

return MainScene
