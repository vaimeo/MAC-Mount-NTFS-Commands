# macmoutntfswrite
Simple mac commands to mount any NTFS drive with write feature



# these are just commands to run on mac terminal


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
<img width="264" alt="image" src="https://user-images.githubusercontent.com/3579069/182595820-918780b8-67d1-469b-ac97-315822e07db2.png">

## step2 

* click on drive
<img width="287" alt="image" src="https://user-images.githubusercontent.com/3579069/182595761-05600875-0890-466c-932a-1a1affe85baa.png">


## step3 

* right click on the drive and click getinfo, there is `BSD device node : disk3s1`
<img width="393" alt="image" src="https://user-images.githubusercontent.com/3579069/182595871-b0f8107b-0ee3-4dab-9f7e-7981f6c05e87.png">
