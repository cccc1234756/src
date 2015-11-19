--
-- Author: Your Name
-- Date: 2015-11-17 11:34:05
--
local ChapterSelect =class("ChapterSelect", function()
    return display.newScene("ChapterSelect")
end)

function ChapterSelect:ctor()
	print("11")
	local bg = display.newSprite("loadingBG.png")
	local scaleX = display.width/bg:getContentSize().width 
	local scaleY = display.height/bg:getContentSize().height
	bg:setScaleX(scaleX)
	bg:setScaleY(scaleY)
	bg:setPosition(display.cx,display.cy)
	self:addChild(bg)
--返回按钮
  local backbtn = cc.ui.UIPushButton.new({normal = "back.png",pressed="back.png"}, {scale9 = true})
  :onButtonClicked(function(event)
    
    display.replaceScene(SelectScence.new())
  end)
  backbtn:setPosition(cc.p(50, display.top-50))
 self:addChild(backbtn,1)


	-- self:stag()
    -- end
-- function ChapterSelect:stag()

		
--         local selectScene2=require("app.scenes.Start").new()
--         cc.Director:getInstance():replaceScene(selectScene2)
-- 	end



end
return ChapterSelect