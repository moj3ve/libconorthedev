include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libconorthedev

libconorthedev_FILES = libconorthedev.m
libconorthedev_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/library.mk
