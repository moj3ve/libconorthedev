include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libconorthedev

libconorthedev_FILES = libconorthedev.m
libconorthedev_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/library.mk

stage::
	mkdir -p $(THEOS_STAGING_DIR)/usr/include/ConorTheDev
	$(ECHO_NOTHING)rsync -a ./public/* $(THEOS_STAGING_DIR)/usr/include/ConorTheDev $(FW_RSYNC_EXCLUDES)$(ECHO_END)
	cp -r $(THEOS_STAGING_DIR)/usr/include/ConorTheDev $(THEOS)/include/ConorTheDev
	cp $(THEOS_STAGING_DIR)/usr/lib/libconorthedev.dylib $(THEOS)/lib/libconorthedev.dylib
