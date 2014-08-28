#
# Makefile for Pandoc Document
#

INPUT="HSR_ParProg_Zusammenfassung.md"
TARGET="HSR_ParProg_Zusammenfassung.pdf"

all: $(TARGET)

clean:
	rm $(TARGET)

$(TARGET):
	pandoc -f markdown $(INPUT) --toc -N --variable "date=`date '+%Y-%m-%d %H:%M'`" -o $(TARGET)
