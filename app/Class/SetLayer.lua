local SetLayer = class("SetLayer", function()
	return display.newColorLayer(cc.c4b(100, 100, 100, 0))
end)

-- function SetLayer:ctor()
--    self:setTouchEnabled(true)
--    self:setTouchSwallowEnabled(true)
--    self:init()
-- end

-- SetLayer.SLIDER_IMAGES = {
--     bar = "UISlider.png",
--     button = "UI11.png",
-- }
-- SetLayer.isPlayMusic=true
-- SetLayer.isPlaySound=true
-- function SetLayer:init()
-- 	--面板
-- 	local bg = display.newSprite("UI12.png")
--     local scaleX = display.width/bg:getContentSize().width
--     local scaleY = display.height/bg:getContentSize().height
--     bg:setScaleX(scaleX)
--     bg:setScaleY(scaleY)
-- 	bg:setPosition(cc.p(display.cx, display.cy))
-- 	self:addChild(bg)

-- 	--音乐开关
-- 	cc.ui.UICheckBoxButton.new({on = "UIC.png",off = "UIr.png"})
--         :pos(display.cx-300, display.cy+100)
--         :setButtonSelected(SetLayer.isPlayMusic)
--         :onButtonStateChanged(function(event)
--         	if event.state=="on" then
--       SetLayer.isPlayMusic=true
--       audio.resumeMusic()
--           elseif event.state=="off" then
--         -- SetLayer.isPlayMusic=false
--             audio.pauseMusic()
--           end
--        end)
--         :addTo(self,4)
--     --音效开关
-- 	cc.ui.UICheckBoxButton.new({on = "UIC.png",off = "UIr.png"})
--         :pos(display.cx-300,display.cy) 
--         :setButtonSelected(SetLayer.isPlaySound)
--         :onButtonStateChanged(function(event)
--         	if event.state=="on" then
--       SetLayer.isPlaySound=true
--           elseif event.state=="off" then
--         SetLayer.isPlaySound=false
--         audio.pauseMusic()
--           end
--       end)
--         :addTo(self,4)
-- 	--音量控制滑块
-- 	cc.ui.UISlider.new(display.LEFT_TO_RIGHT, SetLayer.SLIDER_IMAGES, {scale9 = true})
--         :onSliderValueChanged(function(event)
--         audio.setMusicVolume(event.value/100)
            
--         end)
--         :setSliderSize(450, 40)
--         :setSliderValue(70)--默认音量70
--         :align(display.LEFT_BOTTOM, 100, bg:getContentSize().height/2-50) 	--align 停靠方式   X方向位置 Y方向位置
--         :addTo(bg)
--         :setPosition(390, display.cy+60)

    
--     --音效控制滑块
-- 	cc.ui.UISlider.new(display.LEFT_TO_RIGHT, SetLayer.SLIDER_IMAGES, {scale9 = true})
--         :onSliderValueChanged(function(event)

--             audio.setSoundsVolume(event.value/100)

--         end)
--         :setSliderSize(450, 40)
--         :setSliderValue(70)--默认音量70
--         :align(display.LEFT_BOTTOM, 100, bg:getContentSize().height/2-50) 	--align 停靠方式   X方向位置 Y方向位置
--         :addTo(bg)
--         :setPosition(390, display.cy-40)

--     --保存设置
--     local SeveBu=cc.ui.UIPushButton.new({normal="UIlabel.png",pressed="UIlabel.png"},{scale9=true})
--         :onButtonClicked(function (event)
--         	self:removeFromParent() 
--         end)
--         :pos(display.cx,display.cy-200)
--         :addTo(bg)
-- end
function  SetLayer:ctor()

  local sence = cc.uiloader:load("Setlayer.csb"):addTo(self)
  local slider1 =sence:getChildByName("Slider_1")
  slider1:addEventListener(function(psender,event)
     print("slider1")
    end)
  local slider2 = sence:getChildByName("Slider_2")
   slider2:addEventListener(function(psender,event)
     print("slider2")
   end)
   local check1 = sence:getChildByName("CheckBox_1")
   check1:addEventListener(function(psender,event)
    
    if event==ccui.TouchEventType.on then
      print("check1on")
      elseif event==ccui.TouchEventType.off then
        print("check2off")
       
      end
      end)
  
   local check2 = sence:getChildByName("CheckBox_2")
   check2:addEventListener(function(psender,event)
     print("che2")
   end)

   local button = sence:getChildByName("Button_1");

    button:addTouchEventListener(function(psender,event)

   if event == ccui.TouchEventType.ended then
   -- 获得父节点
   self:getParent().canSet=true


    self:removeFromParent()
   end
    end)

  






end




return SetLayer