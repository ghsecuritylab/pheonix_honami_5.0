LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_CFLAGS	:= -D_FILE_OFFSET_BITS=64 -DFUSE_USE_VERSION=26 -D__MULTI_THREAD
LOCAL_MODULE    := libfuse
LOCAL_SRC_FILES := buffer.c cuse_lowlevel.c fuse.c fuse_kern_chan.c fuse_loop.c \
		   fuse_loop_mt.c fuse_lowlevel.c fuse_mt.c fuse_opt.c fuse_session.c \
		   fuse_signals.c helper.c mount.c mount_util.c ulockmgr.c
LOCAL_SHARED_LIBRARIES := libdl libcutils
LOCAL_C_INCLUDES := $(TOP_LOCAL_PATH)/include
include $(BUILD_SHARED_LIBRARY)