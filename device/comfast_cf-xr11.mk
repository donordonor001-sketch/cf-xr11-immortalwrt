
define Device/comfast_cf-xr11
  $(Device/dsa-migration)
  $(Device/uimage-lzma-loader)
  IMAGE_SIZE := 15808k
  DEVICE_VENDOR := COMFAST
  DEVICE_MODEL := CF-XR11
  DEVICE_PACKAGES := kmod-mt7915-firmware -uboot-envtools
  IMAGES += factory.bin
  IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | \
	check-size | append-metadata
  IMAGE/factory.bin := append-kernel | append-rootfs | pad-rootfs | check-size
endef
TARGET_DEVICES += comfast_cf-xr11
