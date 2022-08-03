Lets assume your drive name is TOSHIBA EXT

## step1
`sudo umount /Volumes/TOSHIBA EXT`

## step2
*Now we will create mount volume with TOSHIBA EXT1

`sudo mkdir "/Volumes/TOSHIBA EXT1"`

## step3

*Now we are mounting the our volume make sure disj2s1 is replaced with the BSD id 

`sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk2s1 "/Volumes/TOSHIBA EXT1"`

## Step4
*Open the drive

`open "/Volumes/TOSHIBA EXT1"`


# TO get devise BSD ID follow 

## step1 

* open disk utility 

## step2 

* click on drive

## step3 

* right click on the drive and click getinfo, there is `BSD device node : disk3s1`
