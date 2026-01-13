export ARCHS = arm64 arm64e
export TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TrongQuoc
TrongQuoc_FILES = main.m AppDelegate.m MenuView.m
TrongQuoc_FRAMEWORKS = UIKit CoreGraphics QuartzCore
TrongQuoc_RESOURCE_FILES = TrongQuoc-Info.plist PkgInfo

export PACKAGE_FORMAT = ipa

include $(THEOS_MAKE_PATH)/application.mk

# Tuyệt chiêu xử lý lỗi Codespaces và đóng gói đủ ruột App
internal-package::
	@echo "--- ĐANG ĐÓNG GÓI THỦ CÔNG ĐỂ FIX 777 ---"
	@mkdir -p $(THEOS_STAGING_DIR)/DEBIAN
	@cp control $(THEOS_STAGING_DIR)/DEBIAN/
	@chmod 0755 $(THEOS_STAGING_DIR)/DEBIAN/control
	@chmod -R 0755 $(THEOS_STAGING_DIR)/Applications/TrongQuoc.app
	@$(THEOS)/bin/dpkg-deb -Zgzip -b $(THEOS_STAGING_DIR) $(THEOS_PACKAGE_DIR)
