# export TARGET_DIR=/media/robert/Data/MyHomeMoviesConverted
# cd $TARGET_DIR


while IFS= read -r -d '' movie ; do
    echo "Found: $movie"

    convert_command="ffmpeg -i '$movie' -vcodec copy -acodec copy '$movie.mp4'"

    if bash -c "$convert_command" ; then
        echo "Converted to mp4"
        rm "$movie"
    else
        echo "Convertation failed"
    fi
done < <(find . -type f -iregex '.*\(mkv\|mpeg\|avi\|wmv\|mov\)' -print0)
