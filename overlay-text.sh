for i in {001..100}; do
	convert test-image.png -fill '#FFFFFF' -gravity North -pointsize 30 -annotate +0+100 "Make America Great Again $i" test/$i
done
