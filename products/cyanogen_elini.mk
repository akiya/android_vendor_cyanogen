# Inherit device configuration
$(call inherit-product, device/lge/elini/elini.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cyanogen_elini
PRODUCT_BRAND := lge
PRODUCT_DEVICE := elini
PRODUCT_MODEL := L-04C
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lge_elini BUILD_ID=FRG83G BUILD_DISPLAY_ID=FRG83G BUILD_FINGERPRINT=LGE/elini/elini/elini:2.2.2/FRG83G/eng.user.20111215.145223:user/release-keys PRIVATE_BUILD_DESC="elini-user 2.2.2 FRG83G eng.user.20111215.145223 release-keys"

# Extra Star overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/elini

# Release name and versioning
PRODUCT_RELEASE_NAME := elini-aki-$(shell date +%Y%m%d)
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

