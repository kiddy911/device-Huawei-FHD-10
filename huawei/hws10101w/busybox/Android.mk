LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := busybox
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_UNSTRIPPED_PATH := $(LOCAL_MODULE_PATH)

ALL_TOOLS := \
[ [[ adjtimex arp ash awk base64 basename bbconfig blkid \
blockdev brctl bunzip2 bzcat bzip2 cal cat catv chattr chcon \
chgrp chmod chown chroot chvt clear cmp comm cp cpio crond \
crontab cut date dc dd deallocvt depmod devmem df diff \
dirname dmesg dnsd dos2unix du echo ed egrep env expand expr \
false fbsplash fdisk fgconsole fgrep find findfs flash_lock \
flash_unlock flashcp flock fold free freeramdisk fstrim fsync \
ftpget ftpput fuser getenforce getopt getsebool grep groups \
gunzip gzip halt head hexdump hwclock id ifconfig inetd \
insmod install ionice iostat ip kill killall killall5 less ln \
losetup ls lsattr lsmod lsof lspci lsusb lzcat lzma lzop \
lzopcat man matchpathcon md5sum mesg mkdir mkdosfs mke2fs \
mkfifo mkfs.ext2 mkfs.vfat mknod mkswap mktemp modinfo modprobe \
more mount mountpoint mpstat mv nanddump nandwrite nbd-client \
nc netstat nice nmeter nohup nslookup ntpd od openvt patch \
pgrep pidof ping pipe_progress pkill pmap poweroff printenv \
printf ps pstree pwd pwdx rdate rdev readlink realpath reboot \
renice reset resize restorecon rev rm rmdir rmmod route \
run-parts runcon rx sed selinuxenabled seq sestatus setconsole \
setenforce setfiles setkeycodes setsebool setserial setsid sh \
sha1sum sha256sum sha3sum sha512sum sleep smemcap sort split \
stat strings stty sum swapoff swapon switch_root sync sysctl \
tac tail tar taskset tee telnet telnetd test tftp tftpd time \
timeout top touch tr traceroute true ttysize tune2fs umount \
uname uncompress unexpand uniq unix2dos unlzma unlzop unxz \
unzip uptime usleep uudecode uuencode vi watch wc wget which \
whoami xargs xz xzcat yes zcat

# Install the symlinks.
LOCAL_POST_INSTALL_CMD := $(hide) $(foreach t,$(ALL_TOOLS),ln -sf busybox $(TARGET_OUT)/xbin/$(t);)

include $(BUILD_PREBUILT)

