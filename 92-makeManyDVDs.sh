export TARGET_DIR=/media/robert/Data/NFS_ZWorkoutMotivation/Yoga
cd $TARGET_DIR
pwd
#
FILENAME=fileLList.txt
#
cat > $FILENAME << ENDOFFILE
AshantaYogaIntroPoses
BasicYogaForDummies
YogaStepByStep
ENDOFFILE
#
for file in $(cat $FILENAME)
do
  echo "*** >>> Processing" $file
  cd $TARGET_DIR/$file
  pwd
  cat VTS_0*_*VOB | ffmpeg -i - -vcodec h264 -acodec mp2 -y $file.mp4
done
