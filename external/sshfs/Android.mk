LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -D_FILE_OFFSET_BITS=64 -DFUSE_USE_VERSION=26

LOCAL_SRC_FILES := \
    cache.c sshfs.c sshnodelay.c

LOCAL_MODULE := sshfs
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := external/sshfs/include external/libfuse/include/ external/openssl/include external/glib
PRIVATE_C_INCLUDES := external/openssl/openbsd-compat

LOCAL_SHARED_LIBRARIES += libssh libcutils  libutils libssl libcrypto libdl libz libglib
LOCAL_SHARED_LIBRARIES += libfuse

include $(BUILD_EXECUTABLE)
