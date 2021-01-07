export TARGET_DIR=/media/robert/Data/ZWorkoutMotivation/Yoga
cd $TARGET_DIR/$FNAME
pwd
#
export FNAME=AshantaYogaIntroPoses
cd $FNAME
pwd
cat VTS_0*_*VOB | ffmpeg -i - -vcodec h264 -acodec mp2 -y $FNAME.mp4
#
export FNAME=BasicYogaForDummies
cd ../$FNAME
pwd
cat VTS_0*_*VOB | ffmpeg -i - -vcodec h264 -acodec mp2 -y $FNAME.mp4
