# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common havoc stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := havoc_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM4.171019.021.P1 4820305 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:8.1.0/OPM4.171019.021.P1/4820305:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
