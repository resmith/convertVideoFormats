export TARGET_DIR=/media/robert/Data/ZWorkoutMotivation

rgx='.*\(avi\)'
#
cd $TARGET_DIR

#
pwd
#
echo "process files"
ffmpeg -i  00CindyCrawford-NextChallenge.avi -crf 22 -hide_banner -stats  00CindyCrawford-NextChallenge.mp4 
#

done

