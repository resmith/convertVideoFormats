#

## Mount NAS

[How to mount drive](https://acceptdefaults.com/2020/03/16/mounting-a-synology-share-in-ubuntu/)
https://0ut3r.space/2019/07/23/mount-nas/
http://benkoren.com/mounting-synology-nas-on-linux-via-smb/


## Find File
https://askubuntu.com/questions/799691/convert-files-to-mp4-in-sub-directories


##

for i in *schat*.png; do
    TEXT=$(echo $i | cut -d - -f 2)
    echo -n "$TEXT                     " \\r
    convert -pointsize 12 -fill white -draw "text 780,550 '$TEXT'" $i mod-schat-$TEXT.png
done

find . -type f -print0 | while IFS= read -r -d '' filename; do
  ...
done
---------------


find . -type f -iregex "$rgx"
  -exec echo "Processing" {} {}.mp4
  -exec ffmpeg -i {} {}.mp4  -loglevel warning -hide_banner -stats \;


    -----

    while IFS= read file
    do
       echo "Processing"  $file
       ffmpeg -i  $file  $file.mp4  -loglevel warning -hide_banner -stats \;
   #    rm $file
   done <<  find . -type f -iregex "$rgx" -print0
