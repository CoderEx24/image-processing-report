all:
	[ -f /tmp/accum.ms ] && rm /tmp/accum.ms; echo
	cat ./0-cover-page.ms >> /tmp/accum.ms
	cat ./3-digital-images.ms >> /tmp/accum.ms
	cat ./7-combining-images.ms >> /tmp/accum.ms
	refer -p ./bibliography /tmp/accum.ms | groff -Ue -mspdf -Tpdf > output.pdf	
