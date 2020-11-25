for f in *.gif
do
    currentfile="$(basename -s .gif $f)"
    echo "Processing $f ..."
    touch "$currentfile.txt"
    base64 -i "$f" -o "$currentfile.txt"

done
