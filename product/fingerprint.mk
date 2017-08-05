# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
    fingerprint.santoni

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml
