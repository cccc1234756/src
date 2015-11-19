
require("config")
require("cocos.init")
require("framework.init")
require("app.scenes.Start")
-- require("app.scenes.SelectScence")
require("app.Class.SetLayer")
require("app.scenes.SelectScence")
require("app.GameData.ModifyData")
require("app.Class.ClassMangager")
local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    cc.FileUtils:getInstance():addSearchPath("res/")
    self:enterScene("Start")
end

return MyApp
