--
-- Author: Your Name
-- Date: 2015-11-13 11:58:50
--
local  Start = class("Start", function()
    return display.newScene("Start")
	end)
function Start:ctor()
	self:init()
  -- 设置层出来以后界面不可再点击
  self.canSet = true

end

function Start:init()
-- 背景
-- local bg = display.newSprite("start.png")
-- local scaleX = display.width/bg:getContentSize().width 
-- local scaleY = display.height/bg:getContentSize().height
-- bg:setScaleX(scaleX)
-- bg:setScaleY(scaleY)
-- bg:setPosition(display.cx,display.cy)
-- self:addChild(bg)

-- -- 开始按钮
-- local btn = cc.ui.UIPushButton.new({normal="mz_start1.png",pressed="mz_start2.png"},{scale9=true})
-- :onButtonClicked(function(event)
--    local selectScene=require("app.scenes.SelectScence").new()
--    cc.Director:getInstance():replaceScene(selectScene)
-- 	end)
-- :pos(display.cx, display.cy-150)
-- :addTo(self)


-- -- 设置按钮
-- local btn1 = cc.ui.UIPushButton.new({normal="music.png",pressed="music.png"},{scale9=true})
--   :onButtonClicked(function (event)
--         print("11")
--                        local setLayer =require("app.Class.SetLayer").new()
--                           setLayer:setPosition(cc.p(0, -200))
--                           self:addChild(setLayer,2)
-- 			              transition.moveTo(setLayer, {x = 0, y = 0, time = 0.8})
--                      end) 。。。。。。。。。。。。。。。。。。。。。。。
--                      :pos(100,400)
--                      :addTo(self)
-- csb方法
local sence = cc.uiloader:load("Layer.csb"):addTo(self)
-- button方法
local button = sence:getChildByName("Button_4");
    button:addTouchEventListener(function(psender,event)
      if self.canSet == false then
        return
      end
    	print("button");

      if event == ccui.TouchEventType.ended then
        print("end")
        self.canSet = false
        local setLayer =require("app.Class.SetLayer").new()
                          setLayer:setPosition(cc.p(0, -200))
                          self:addChild(setLayer,2)
                    transition.moveTo(setLayer, {x = 0, y = 0, time = 0.8})
                   end
  end)

local timeline = cc.CSLoader:createTimeline("Layer.csb");
    sence:runAction(timeline);

    timeline:gotoFrameAndPlay(0,true);

    timeline:setFrameEventCallFunc(function(dt)
         print(dt:getEvent())
    end)

local button = sence:getChildByName("Button_5");
    button:addTouchEventListener(function(psender,event)
      local selectScene=require("app.scenes.SelectScence").new()
     cc.Director:getInstance():replaceScene(selectScene)
 end)

  
                    




end 
return Start