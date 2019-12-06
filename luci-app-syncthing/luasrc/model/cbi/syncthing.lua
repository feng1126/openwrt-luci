local fs = require "nixio.fs"
local util = require "nixio.util"

local running=(luci.sys.call("pidof syncthing > /dev/null") == 0)
local button=""



if running then
	m = Map("syncthing", translate("syncthing"), translate("<strong><font color=\"green\">syncthing 运行中</font></strong>"))
	
else
	m = Map("syncthing", translate("syncthing"), translate("<strong><font color=\"red\">syncthing 未运行</font></strong>"))
end



s = m:section(TypedSection, "syncthing","syncthing 设置")
s.anonymous = true

s:tab("basic",  translate("Settings"))

enable = s:taboption("basic", Flag, "enable", "启用 syncthing")
enable.rmempty = false

path=s:taboption("basic",Value,"path",translate("安装路径"))

return m
