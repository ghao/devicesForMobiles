## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := blaze

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ghao/blaze/device_blaze.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := blaze
PRODUCT_NAME := cm_blaze
PRODUCT_BRAND := ghao
PRODUCT_MODEL := blaze
PRODUCT_MANUFACTURER := ghao
