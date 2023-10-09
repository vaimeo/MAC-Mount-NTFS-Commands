#!/bin/bash

# List available disks and their identifiers
diskutil list

# Prompt the user to select a disk by identifier
read -p "Enter the disk identifier you want to mount (e.g., disk2s1): " selected_disk

# Check if the selected disk identifier is valid
if [ -z "$selected_disk" ]; then
    echo "Invalid disk identifier. Exiting."
    exit 1
fi

# Get the name of the selected disk
selected_disk_name=$(diskutil info "/dev/${selected_disk}" | grep "Volume Name" | awk '{print $3}')

# Check if the selected disk name is empty
if [ -z "$selected_disk_name" ]; then
    echo "Failed to get the disk name. Using a default name."
    selected_disk_name="MyDisk"
else
    echo "Selected disk name: $selected_disk_name"   
        
    # Step 1: Unmount the NTFS Drive
    sudo umount "/Volumes/${selected_disk_name}"

    # Step 2: Create a Mount Point
    sudo mkdir "/Volumes/${selected_disk_name}-ntfs-new"

    # Step 3: Mount the Selected Disk with Write Permissions
    sudo mount -t ntfs -o rw,auto,nobrowse /dev/${selected_disk} "/Volumes/${selected_disk_name}-ntfs-new"

    # Step 4: Open the Mounted Drive
    open "/Volumes/${selected_disk_name}-ntfs-new"

    # Wait for 'q' to be pressed to unmount and eject
    read -n 1 -s -r -p "Press 'q' to unmount and eject the drive, or any other key to exit..."

    if [ "$REPLY" == "q" ]; then
        # Unmount the drive
        sudo umount "/Volumes/${selected_disk_name}-ntfs-new"
        
        # Eject the drive
        diskutil eject "/dev/${selected_disk}"
        echo "Drive unmounted and ejected."
    fi 
fi

