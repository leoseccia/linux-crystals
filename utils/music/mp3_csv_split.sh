    #!/bin/bash
    inputCSV="name.csv"
    inputMP3="name.mp3" 
    i=0
    #ffmpeg -i $inputMP3 -f null -
    while IFS=',' read -r f1 f2 f3
      do
      ((i++))
      #echo "$i $f1 $f2 $f3"
      </dev/null ffmpeg -i "$inputMP3" -vn -acodec copy -ss "$f1" -to "$f2" -metadata title="$f3" -metadata author="The Growlers" -metadata album_artist="The Growlers" -metadata album="Acoustic" -metadata year="2020" -metadata track="$i" "$i - $f3.mp3" 
    done < "$inputCSV"