--
-- Author: Your Name
-- Date: 2015-11-18 17:38:03
--
module("HeroData",package.seeall)
Data={}
-- 属性
Data.HP=1000  --血量
Data.Mp=200   --蓝量
Data.AC=54    --攻击
Data.A1=185  --技能
Data.A2=194  --技能2
Data.A3=153  --技能3
Data.A4=215   --技能5

function setHp(x)
	Data.HP=x
end
function getHP()
	return Data.HP
end

function setMp(y)
	Data.Mp=y
end
function getMp()
   return Data.Mp
end