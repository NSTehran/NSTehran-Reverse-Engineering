MODULES = jailed
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NSTehranSession6
DISPLAY_NAME = NSTehranSession6
BUNDLE_ID = ir.nstehran.dummy
PROFILE = ID-7C961A06.com.yourcompany.nstehran

NSTehranSession6_FILES = Tweak.xm
NSTehranSession6_IPA = /Users/amir/Desktop/NSTehran/DummyApp.ipa

include $(THEOS_MAKE_PATH)/tweak.mk
