# Copyright (C) 2017 Flash ROM
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include vendor/flash/configs/aosp_fixes.mk
include vendor/flash/configs/flash_main.mk
include vendor/flash/sepolicy/sepolicy.mk

# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Add blacked out Pixel bootanimation based on device
ifneq ($(filter shamu angler,$(TARGET_DEVICE)),)
    PRODUCT_COPY_FILES += \
        vendor/flash/prebuilt/zip/bootanimation.zip:system/media/bootanimation.zip
endif
