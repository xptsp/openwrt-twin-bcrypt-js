# Copyright 2024- Douglas Orend <doug.orend2@gmail.com>
# This is free software, licensed under the Apache License, Version 2.0

include $(TOPDIR)/rules.mk

PKG_NAME:=twin-bcrypt-js
PKG_VERSION:=2.2.0
PKG_RELEASE:=1
PKG_LICENSE:=unlicense
PKG_MAINTAINER:=Douglas Orend <doug.orend2@gmail.com>

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/fpirsch/twin-bcrypt
PKG_SOURCE_VERSION:=v$(PKG_VERSION)
PKG_MIRROR_HASH:=844acb153dded8e24fba414f9995f0bcdb8eceee39217aaf9e4ce8c3ab93910e

include $(INCLUDE_DIR)/package.mk

define Package/twin-bcrypt-js
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=twin-bcrypt-js
	PKGARCH:=all
endef

define Package/twin-bcrypt-js/description
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/twin-bcrypt-js/install
	$(INSTALL_DIR) $(1)/www/luci-static/resources/view
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/twin-bcrypt.min.js $(1)/www/luci-static/resources/view/
endef

$(eval $(call BuildPackage,twin-bcrypt-js))
