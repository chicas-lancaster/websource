
for f in *.pdf *.ppt *.pptx; do
echo $f
convert  -density 150 -geometry 1200x -background white -alpha remove "$f" \
          -sharpen 0x1.0 \
         "${f%.*}.webp"
done

