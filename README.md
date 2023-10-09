

# Mount NTFS Drive to Mac


<img width="156" alt="image" src="https://github.com/vaimeo/MAC-Mount-NTFS-Commands/assets/3579069/2ca09401-1370-45ed-a7c1-87c8ad32c1f7">

Mac commands to mount any NTFS drive to enable write feature.

Lets assume your drive name is TOSHIBA EXT

## Step 1
```
 sudo umount /Volumes/TOSHIBA EXT
```

## Step 2
*Now we will create mount volume with TOSHIBA EXT1

```
shell sudo mkdir "/Volumes/TOSHIBA EXT1"
```

## Step 3

Find the disk identifier

```
   diskutil list | grep TOSH
```


*Now the the volume, make sure to replace disj2s1 with the disk identifer. 

```
sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk2s1 "/Volumes/TOSHIBA EXT1"
```

## Step 4
*Open the drive

``` 
open "/Volumes/TOSHIBA EXT1"
```

