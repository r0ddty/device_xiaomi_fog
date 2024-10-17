# Remove Pixel kernel header
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Clone vendor tree
git clone -b fifteen https://github.com/r0ddty/vendor_xiaomi_fog vendor/xiaomi/fog

# Clone kernel tree
git clone --depth=1 -b another-main https://github.com/r0ddty/kernel_xiaomi_fog kernel/xiaomi/fog

# Clone PixelOS-AOSP hardware/xiaomi
git clone https://github.com/PixelOS-AOSP/hardware_xiaomi hardware/xiaomi

# Clone CertifiedPropsOverlay
git clone https://github.com/pure-soul-kk/vendor_extra vendor/extra

# Kernel fixups
rm kernel/xiaomi/fog/Android.bp
rm kernel/xiaomi/fog/techpack/audio/Android.bp
