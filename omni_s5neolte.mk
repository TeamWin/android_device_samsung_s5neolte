$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/s5neolte/overlay

LOCAL_PATH := device/samsung/s5neolte
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/init.recovery.samsungexynos7580.rc:root/init.recovery.samsungexynos7580.rc \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/recovery.fstab
    

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_s5neolte
PRODUCT_DEVICE := s5neolte
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := s5neolte
