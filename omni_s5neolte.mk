# Release name
PRODUCT_RELEASE_NAME := s5neolte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s5neolte
PRODUCT_NAME := omni_s5neolte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
