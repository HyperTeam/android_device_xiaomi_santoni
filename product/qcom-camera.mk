# Snap
PRODUCT_PACKAGES += \
    Snap

# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
    media.camera.ts.monotonic=0 \
    persist.camera.gyro.android=1 \
    persist.camera.is_type=1 \
    vidc.debug.perf.mode=2 \
    vidc.enc.dcvs.extra-buff-count=2 \
    vidc.enc.disable.pq=true
