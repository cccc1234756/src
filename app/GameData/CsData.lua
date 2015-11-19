--
-- Author: Your Name
-- Date: 2015-11-18 16:55:30
--
module("CsData",package.seeall)

-- 调用表
function getAllStarNum()
	local startnum = 0
	for i=1,3 do
		for j=1,5 do
			startnum=startnum+CsData.SCENE[i][j].star
		end
		return startnum
	end

	-- local  0开1关
	-- star  所得星星数
	-- boy   怪物数
	SCENE={} --总表
	SCENE[1]={} --场景1对应的关卡
	SCENE[1][1]={lock=0 ,star=0,boy1=4,boy2=0,body3=0 }
    SCENE[1][2]={lock=1,star=0,body1=2,body2=4,body3=0}
    SCENE[1][3]={lock=1,star=0,body1=3,body2=6,body3=0}
    SCENE[1][4]={lock=1,star=0,body1=6,body2=3,body3=1}
    SCENE[1][5]={lock=1,star=0,body1=7,body2=4,body3=2}
   
    SCENE[2]={} --场景2对应的关卡
    SCENE[2][1]={lock=1,star=0,body1=3,body2=4,body3=2}
    SCENE[2][2]={lock=1,star=0,body1=4,body2=5,body3=3}
    SCENE[2][3]={lock=1,star=0,body1=5,body2=4,body3=3}
    SCENE[2][4]={lock=1,star=0,body1=6,body2=5,body3=4}
    SCENE[2][5]={lock=1,star=0,body1=7,body2=7,body3=5}
    

    SCENE[3]={} 
    SCENE[3][1]={lock=1,star=0,body1=3,body2=4,body3=2}
    SCENE[3][2]={lock=1,star=0,body1=5,body2=4,body3=3} 
    SCENE[3][3]={lock=1,star=0,body1=7,body2=2,body3=4} 
    SCENE[3][4]={lock=1,star=0,body1=4,body2=8,body3=5}
    SCENE[3][5]={lock=1,star=0,body1=9,body2=4,body3=6}