# initialize the NAME_BASE variable with the file name without any extension
NAME_BASE=draft-roca-nwcrg-generic-fec-api-04
XML=${NAME_BASE}.xml
TXT=${NAME_BASE}.txt
HTML=${NAME_BASE}.html

all:
	xml2rfc --text ${XML}
	xml2rfc --html ${XML}


diff:
	rfcdiff.sh rfc6363.txt ${TXT}


clean:
	rm ${TXT}
	rm ${HTML}
