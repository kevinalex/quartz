---
title: Cloning a Windows HDD to SSD for upgrade
tags:
  - windows
  - how-to
---

# Objective

Upgrade a Windows installation on an HDD to a SSD
## Explanation:

We want to upgrade a Windows laptop HDD unit to a SSD unit without data loss or having to reinstall the OS. 

## What software is used?

There's a multitude of software for this end, I'd recommend EaseUS Partition Master's paid version or Lasezoft's Recovery Suite Home for FREE home users.

# Normal Clone vs Sector by Sector

These software usually have a sector by sector option. The sector is *"The smallest physical storage unit of the disk"*. So **you can only** turn it on when you are going to clone a smaller unit to a larger unit and you want to make sure that even if there are bad sectors on the disk, all the information is going to be copied, also it is recommended if you don't want to reinstall windows because sometimes the normal clone gives some errors as there are some partitions windows creates to manage the boot process and recovery that corrupt or misconfigure during this process too often. 
# GPT vs MBR

Another variable to have in mind when doing this process is the partition table used by the storages.  
In short, these are the way that the information is programmed to be stored to query the data, so they are not compatible. MBR is the oldest and it has limitations like a maximum of 4 partitions per storage unit as well as a maximum of 2 TB capacity. Some old systems only accept MBR. It is usually called "Legacy" on the bios sata options. You need to have a computer with "UEFI" firmware to use the newer GPT partition tables. It is recommended to use GPT for any modern purposes. 

For this article its important that you have both units using the same partition table BEFORE making the clone as it is more likely to fail/corrupt the clone data in the process.

# Crucial Final Steps

As a note, it is really crucial that when turning on the machine for the first time after making the clone, only one storage unit is connected to the computer. Some users report having issues when both units are connected. Also if you are doing this process on another machine, different from the one you're going to install the clone to:

* Do not hot swap/connect disconnect the storage units. Rather turn off the device first beforehand.
* When starting the machine press the boot key option, do not let it choose by default as it may want to boot from the laptop or other machine's storage unit, causing it to corrupt the data or drivers in the process.
* When booting the newly cloned drive for the first time on the other machine or laptop, always press the boot option key menu and select the newly installed storage unit instead of letting it boot automatically.
* If you are doing the cloning process on a laptop or a device without any additional sata ports, you need a usb adapter, the target storage unit has to be connected to the internal sata and the older unit to the usb for better reading/writing speeds. If the usb doesn't provide enough power to run the old HDD you have to do it the other way around.
# Final Thoughts 

Cloning disks is a weird process with many caveats that makes it difficult in some cases to do it successfully.  That's why I decided to write this article. 

# Sources


*Sector by Sector cloning*
https://www.easeus.com/backup-utility/easeus-todo-clone.html
*Boot Partition - an overview*
https://www.sciencedirect.com/topics/computer-science/boot-partition
*Replace A Hard Drive or SSD For FREE Without Losing Data*
https://www.youtube.com/watch?v=SY052k5bODA