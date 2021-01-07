export TARGET_DIR=/media/robert/Data/ZWorkoutMotivation
export SUB_DIR=Insanity/INSANITY_ASYLUM_DISC1-Assessment
cd $TARGET_DIR
cd $SUB_DIR

find . -type f -iregex '.*\(MTS\|mpeg\|avi\|wmv\|mov\)'
  -exec echo "Processing" {} {}.mp4  \;


  find . -type f -iregex '.*\(MTS\|mpeg\|avi\|wmv\|mov\)' -exec ffmpeg -i {} {}.mp4  -loglevel warning -hide_banner -stats \;
