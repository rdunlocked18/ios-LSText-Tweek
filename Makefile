INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LSAnyTex

LSAnyTex_FILES = Tweak.x
LSAnyTex_CFLAGS = -fobjc-arc

# MARK :- ARCH define 
#justincase the tweek is for 32 bit devices << because i have ip5 :(
ARCHS = armv7 

#make it compatible with all using 64,64E archs

include $(THEOS_MAKE_PATH)/tweak.mk
