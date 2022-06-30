all:
	[ -f /tmp/accum.roff ] && rm /tmp/accum.roff; echo
	./convert-images.sh
	cat ./0-cover-page.roff >> /tmp/accum.roff
	cat ./1-signal-theory.roff >> /tmp/accum.roff
	cat ./2-images-are-colorful.roff >> /tmp/accum.roff
	cat ./3-digital-images.roff >> /tmp/accum.roff
	cat ./4-images-have-operations.roff >> /tmp/accum.roff
	cat ./5-images-are-sampled.roff >> /tmp/accum.roff
	cat ./6-image-compression.roff >> /tmp/accum.roff
	cat ./7-combining-images.roff >> /tmp/accum.roff
	echo ".TC" >> /tmp/accum.roff
	refer -Sp ./bibliography /tmp/accum.roff | groff -Uep -mspdf -Tps > output.ps
	ps2pdf output.ps output.pdf
