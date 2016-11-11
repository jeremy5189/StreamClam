for i in {010..100}; do
	sleep 10
	convert test-image.png -fill '#FFFFFF' -gravity North -pointsize 30 -annotate +0+100 "Make America Great Again $i" test/img-$i.png
done
