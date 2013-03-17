#
# Makefile for gnote
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_MT11i.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := LegacyCamera

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider Stk SuperMarket Updater

local-miui-modified-apps := Mms MiuiHome MiuiSystemUI Settings Phone ThemeManager

# All apps need to be removed from original ZIP file
local-remove-apps   := SystemUI Gallery2 Launcher2 VideoEditor DSPManager PicoTts VoiceDialer \
		HoloSpiralWallpaper MagicSmokeWallpapers PhaseBeam Galaxy4 NoiseField \
		#antstatenotifer FmRxService antradioservice Fmapplication

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
#	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
#	cp other/apns-conf.xml $(ZIP_DIR)/system/etc/apns-conf.xml
	cp other/boot.img $(ZIP_DIR)/boot.img
	cp other/icons $(ZIP_DIR)/system/media/theme/default/icons
	
	@echo Add various apps
	cp other/AirkanPhoneService.apk $(ZIP_DIR)/system/app/AirkanPhoneService.apk
	cp other/MiuiWeather.apk $(ZIP_DIR)/system/app/MiuiWeather.apk
#	cp other/MusicFX.apk $(ZIP_DIR)/system/app/MusicFX.apk
	
	@echo Add various tweaks
	cp other/10speedmemory $(ZIP_DIR)/system/etc/init.d/10speedmemory
	cp other/11speedsd $(ZIP_DIR)/system/etc/init.d/11speedsd
	cp other/12cleaner $(ZIP_DIR)/system/etc/init.d/12cleaner
	
	@echo DalvikVM Build 28 Qualcomm Optimized
	cp other/dalvikvm $(ZIP_DIR)/system/bin/dalvikvm
	cp other/dexopt $(ZIP_DIR)/system/bin/dexopt
	cp other/libdvm.so $(ZIP_DIR)/system/lib/libdvm.so
	cp other/libqc-opt.so $(ZIP_DIR)/system/lib/libqc-opt.so
	
	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	
	@echo Update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation.zip $(ZIP_DIR)/system/media/bootanimation.zip
	
	@echo Remove usless stuff
	rm -rf $(ZIP_DIR)/data/media/preinstall_apps/*.apk
	rm -rf $(ZIP_DIR)/system/media/video/*.mp4
	rm -rf $(ZIP_DIR)/system/tts/lang_pico/*.bin

out/framework2.jar : out/framework.jar

