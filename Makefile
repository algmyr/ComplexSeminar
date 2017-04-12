# Transitions:
#   None - Fade - Slide - Convex - Concave - Zoom
#
# Themes:
#   Black (default) - White - League - Sky - Beige - Simple
#   Serif - Blood - Night - Moon - Solarized

SRC = slides.markdown

slides.html: slides.markdown template-revealjs.html Makefile
	pandoc -t revealjs -s --template=template-revealjs.html \
	                   --standalone --section-divs \
	                   -V theme="solarized" \
	                   -V transition="slide" \
	                   --bibliography=bib.bib --csl ieee.csl \
	                   -o $@ $(SRC)
	sed -i 's;<section id="[^"]*" class="titleslide slide level1"><h1></h1></section>;;g' $@

clean:
	rm -f slides.html
