export TARGET_DIR=/media/robert/Data/MyHomeMovies
export SUB_DIR=2000
rgx='.*\(MTS\|mpeg\|avi\|wmv\|mov|MPEG|MPG\)'
#
cd $TARGET_DIR
cd $SUB_DIR
#
pwd
#
echo "remove spaces"
find -name "* *$rgx" -type f | rename 's/ //g' -f
find -name "*_$rgx*" -type f | rename 's/_//g' -f
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
find . -type f -iregex "$rgx"  | while read  file
do
  echo "*** >>> Processing" $file
  echo $file >> filesProcessed.txt
  ffmpeg -i  $file  -crf 18 -y -loglevel error -hide_banner -stats $file.mp4

done
#
# echo "find ls2 xargs"
# find . -type f -iregex "$rgx" -print0 | xargs -0 -I echo {};
# echo "find process"
# find . -type f -iregex "$rgx" -print0 | xargs -I echo "Processing"  {};  ffmpeg -i  {}  {}.mp4  -loglevel warning -hide_banner -stats
