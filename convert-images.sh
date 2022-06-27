for image in *.png
do
	convert $image "${image%.*}.ps"
done
