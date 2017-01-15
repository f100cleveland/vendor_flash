# Copyright (C) 2016 The Pure Nexus Project
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

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/flash/overlay/common

# Main Required Packages
PRODUCT_PACKAGES += \
    Launcher3 \
    LiveWallpapersPicker

# Include explicitly to work around Facelock issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

# Custom Packages
PRODUCT_PACKAGES += \
    Busybox \
    masquerade

# DU Utils Library
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# DU Utils Library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Copy Superuser binary
PRODUCT_COPY_FILES += \
    vendor/flash/prebuilt/sbin/su:root/sbin/su \

# Add Superuser APK
PRODUCT_PACKAGES += \
    Superuser

# Build Substratum unless SUBSTRATUM is set to false
ifneq ($(SUBSTRATUM),false)
    PRODUCT_PACKAGES += \
        Substratum
endif

# OmniStyle
PRODUCT_PACKAGES += \
    OmniStyle