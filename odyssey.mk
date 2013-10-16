## Specify phone tech before including full_phone
$(call inherit-product, vendor/odyssey/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Odyssey stuff.
$(call inherit-product, vendor/odyssey/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/odyssey/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb/full_geeb.mk)

# Hybrid
 PRODUCT_COPY_FILES +=  \
    vendor/odyssey/prebuilt/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb
PRODUCT_NAME := odyssey_geeb
PRODUCT_BRAND := LGE
PRODUCT_MODEL := Optimus G
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/geeb:4.3/JLS36C/573038:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.3 JLS36C 573038 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
