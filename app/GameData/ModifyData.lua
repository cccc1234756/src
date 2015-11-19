--
-- Author: Your Name
-- Date: 2015-11-18 17:48:32
--
module("ModifyData",package.seeall)
scene=1
chapter=1
start=0
Mp=0
function setMp(x)
	Mp=x
end
function getMp()
	return Mp 
end
function setScenceNumber(num)
	scence=num 
end
function getScenceNumber()
	return scence 
end
function setChapterNumber(num)
	chapter=num
end
function  getChapterNumber()
	return chapter 
end
function setStartNumber(num)
	start=num 
end
function  getChapterNumber()
	return start 
end
-- 写入文件
function WriteDataToDoc(str)
	local docpath=cc.FileUtils:getInstance():getWritablePath() .. "data.txt"
	local f = assert(io.open(docpath,"w"))
	f:write(str)
	f:close()
end
-- 从沙河路径下读出
function readFromDoc()
	local docpath = cc.FileUtils:getInstance():getWritablePath() .. "data.txt"
	local str = cc.FileUtils:getInstance():getStringFromFile(docpath)
	return str 
end
   






