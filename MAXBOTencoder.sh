mkdir transcoded
for i in *.mp4; do
  filename=$(basename -- "$i")  # Extract the base name of the input file
  filename_noext="${filename%.*}"  # Remove the extension
  ffmpeg -i "$i" -vcodec mjpeg -q:v 2 -acodec aac -q:a 0 -f mov "transcoded/${filename_noext}.mov"
done

