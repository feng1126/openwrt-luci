#
# Copyright (C) 2016-2017 GitHub 
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=feng-settings
PKG_VERSION:=1.0
PKG_RELEASE:=35
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/feng-settings
  CATEGORY:=feng
  TITLE:=LuCI support for feng Settings
  PKGARCH:=all
  DEPENDS:= +wget +luci-app-frpc +luci-app-entware +luci-theme-openwrt +luci-app-k3usb +wget
endef

define Package/feng-settings/description
	Language Support Packages.
endef



define Build/Configure
endef

define Build/Compile
endef


$(eval $(call BuildPackage,feng-settings))
