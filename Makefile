# RyukGram Open Source Edition
# 100% open source, 0% source included.

TARGET := iphone:clang:latest:15.0
ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = Instagram

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = RyukGram

RyukGram_FILES = Tweak.xm
RyukGram_CFLAGS = -fobjc-arc
RyukGram_FRAMEWORKS = UIKit Foundation
RyukGram_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	@echo ""
	@echo "=========================================="
	@echo " RyukGram Open Source Edition Installed"
	@echo "=========================================="
	@echo " Features loaded:"
	@echo " - Liquid Glass: spiritually enabled"
	@echo " - Ad removal: emotionally active"
	@echo " - Downloads: available in your dreams"
	@echo " - Source code: coming soon"
	@echo ""
	@echo "If Instagram looks the same, everything worked."
	@echo ""
