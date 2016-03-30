

POSTER=NGS2016poster

all: $(POSTER).pdf $(POSTER).jpg

%.png: %.svg
	inkscape -e $@ $<

%.jpg: %.png
	convert -resize 1024 $< $@

%.pdf: %.svg
	inkscape -A $@ $<
