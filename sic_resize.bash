for file in data/original/*.jpg
do
  sic --input $file --output "$file.png" --resize 150 150
  echo "$(ls -l $file.png | cut -d " " -f 5) $(sha1sum $file.png)" > $file.png.size
  mv $file.png out/sic/ && mv $file.png.size out/sic/
done