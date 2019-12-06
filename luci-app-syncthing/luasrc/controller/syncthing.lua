
module("luci.controller.syncthing", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/syncthing") then
		return
	end

	local page
	page = entry({"admin", "services", "syncthing"}, cbi("syncthing"), _("syncthing私有云同步"), 199)
	page.i18n = "syncthing"
	page.dependent = true
end
