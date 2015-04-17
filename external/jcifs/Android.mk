# Copyright 2014 Sony Mobile Communications AB.
# All rights, including trade secret rights, reserved.

LOCAL_PATH := $(call my-dir)

LOCAL_DIR_PATH:= $(call my-dir)

# Build the jcifs library
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_DEX_PREOPT := false

LOCAL_SRC_FILES := $(call all-java-files-under, src/jcifs/netbios) \
                   $(call all-java-files-under, src/jcifs/util) \
                   $(call all-java-files-under, src/jcifs/smb) \
                   $(call all-java-files-under, src/jcifs/dcerpc) \
                   $(call all-java-files-under, src/jcifs/ntlmssp) \
                   src/jcifs/Config.java \
                   src/jcifs/UniAddress.java \

LOCAL_JAVA_LIBRARIES :=

LOCAL_MODULE := jcifs

include $(BUILD_JAVA_LIBRARY)

# Inform Android
include $(CLEAR_VARS)

LOCAL_MODULE := jcifs.xml

LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)
