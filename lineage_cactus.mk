# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cactus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := cactus
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_cactus
PRODUCT_MODEL := Redmi 6A

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cactus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cactus-user 9 PPR1.180610.011 V12.0.2.0.PCBCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/cactus/cactus:9/PPR1.180610.011/V12.0.2.0.PCBCNXM:user/release-keys
