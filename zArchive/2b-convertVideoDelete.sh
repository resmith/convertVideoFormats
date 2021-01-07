export TARGET_DIR=/media/robert/Data/MyHomeMoviesConverted
cd $TARGET_DIR

find . -type f -iregex '.*\(MTS\|mpeg\|avi\|wmv\|mov\)' -exec ffmpeg -i {} {}.mp4 \; -exec rm {} \;
