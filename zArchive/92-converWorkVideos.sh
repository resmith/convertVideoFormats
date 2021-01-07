export TARGET_DIR=/media/robert/Data/ZWorkoutMotivation

rgx='.*\(avi\)'
#
cd $TARGET_DIR

#
pwd
#
echo "process files"

#
# echo "find - works"
# find . -type f -iregex "$rgx" -exec echo "Listing"  {} \;
# #
#
# echo "find print - works"
# find . -type f -iregex "$rgx"
#
echo "find ls2 while"
echo $"" > filesProcessed.txt
find . -type f -iregex "$rgx"   > findList.txt
find . -type f -iregex "$rgx"  | while read -r file
do
  echo "*** >>> Processing" $file
  echo $file >> filesProcessed.txt
  ffmpeg -i   $file   $file.mp4  -crf 22 -hide_banner -stats

done
#
# echo "find ls2 xargs"
# find . -type f -iregex "$rgx" -print0 | xargs -0 -I echo {};
# echo "find process"
# find . -type f -iregex "$rgx" -print0 | xargs -I echo "Processing"  {};  ffmpeg -i  {}  {}.mp4  -loglevel warning -hide_banner -stats
