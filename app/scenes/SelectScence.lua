--
-- Author: Your Name
-- Date: 2015-11-15 16:32:52
--
local SelectScence = class("SelectScence", function ()
	return display.newScene("SelectScence")
end)
function SelectScence:ctor()
   local bg = display.newSprite("bg.png")
   local scaleX =display.width/bg:getContentSize().width 
   local scaleY = display.height/bg:getContentSize().height
   bg:setScaleX(scaleX)
   bg:setScaleY(scaleY)
   bg:setPosition(display.cx,display.cy)
   self:addChild(bg)


--返回按钮
  local backbtn = cc.ui.UIPushButton.new({normal = "back.png",pressed="back.png"}, {scale9 = true})
  :onButtonClicked(function(event)
    
    display.replaceScene(Start.new())
  end)
  backbtn:setPosition(cc.p(50, display.top-50))
 self:addChild(backbtn,1)

   self:SelectSceneNode()
   end
function SelectScence:SelectSceneNode()
	-- 创建节点
	local node = display.newNode()
	node:setPosition(display.cx,display.cy+100)
	node:addTo(self)

	local jump = cc.JumpTo:create(1.0,cc.p(display.cx,display.cy),50,2)
    node:runAction(jump)

    -- 1
    local item1 = cc.ui.UIPushButton.new({normal="chapter1_normal.png",pressed="chapter1_selected.png"},{scale9=true})
    :onButtonClicked(function(event)
     ModifyData.setScenceNumber(1)

        local selectScene1=require("app.scenes.ChapterSelect").new()
        cc.Director:getInstance():replaceScene(selectScene1)
     	
end)
    item1:setPosition(cc.p(-250,0))
    item1:addTo(node)


    -- 2
    local item2 = cc.ui.UIPushButton.new({normal="chapter2_normal.png",pressed="chapter2_selected.png"},{scale9=true})
    :onButtonClicked(function(event)
      ModifyData.setScenceNumber(2)
        local selectScene2=require("app.scenes.ChapterSelect").new()
        cc.Director:getInstance():replaceScene(selectScene2)
     	
end)
    item2:setPosition(cc.p(0,0))
    item2:addTo(node)

    -- 3
      local item3 = cc.ui.UIPushButton.new({normal="chapter3_normal.png",pressed="chapter3_selected.png"},{scale9=true})
    :onButtonClicked(function(event)
      ModifyData.setScenceNumber(3)
        local selectScene3=require("app.scenes.ChapterSelect").new()
        cc.Director:getInstance():replaceScene(selectScene3)
     	
end)
    item3:setPosition(cc.p(250,0))
    item3:addTo(node)

 
  






   end

	return SelectScence