all:
	[ -f /tmp/accum.roff ] && rm /tmp/accum.roff; echo
	cat ./0-cover-page.roff >> /tmp/accum.roff
	cat ./3-digital-images.roff >> /tmp/accum.roff
	cat ./7-combining-images.roff >> /tmp/accum.roff
	echo ".TC" >> /tmp/accum.roff
	refer -p ./bibliography /tmp/accum.roff | groff -Uep -mspdf -Tpdf > output.pdf	
