### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=ProjectR by @OnFire_Nasir
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=1
device.name1=raphael
device.name2=raphaelin
supported.versions=
supported.patchlevels=
'; } # end properties

### AnyKernel install
# boot shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
no_block_display=true;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
split_boot;
mv $home/rd-new.cpio $home/ramdisk-new.cpio
flash_boot;
## end boot install
