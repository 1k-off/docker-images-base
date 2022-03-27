VMA Backup extractor (Proxmox VE)
============================================

**a docker isolated proxmox vma file extractor - get full access to your files**

Usage
----------------------------

### Run Extraction (within isolated env) ###

```bash
# build and run
docker build -t local/extractor .
docker run -itd -v $(pwd):/app --name extractor local/extractor
docker exec -it extractor bash
cd /app

# convert vma file to raw disk image
vma extract ./vzdump-qemu.vma -v ./vm101

# view partitions
fdisk -l ./vm101/disk-drive-scsi0.raw

# exit docker ctrl+d
```

### Mount RAW disk image

```bash
# create loopback device
losetup --find --partscan output/vm101/disk-drive-scsi0.raw 

# view partitions
fdisk -l | grep loop
Disk /dev/loop0: 50 GiB, 53687091200 bytes, 104857600 sectors
/dev/loop0p1     2048     22527    20480   10M Linux filesystem
/dev/loop0p2    22528   1048542  1026015  501M Linux filesystem
/dev/loop0p3  1048576   9437183  8388608    4G Linux swap
/dev/loop0p4  9437184  17825791  8388608    4G Linux filesystem
/dev/loop0p5 17825792  59768831 41943040   20G Linux filesystem
/dev/loop0p6 59768832 104857566 45088735 21.5G Linux filesystem

# mount partitions
mount /dev/loop0p6 /mnt/diskimage/
```

References
-------------------

* [VMA archive restore outside of Proxmox](https://forum.proxmox.com/threads/vma-archive-restore-outside-of-proxmox.14226/)
