LECTURE = lecture-11

.PHONY: $(LECTURE)

$(LECTURE): $(LECTURE).pdf

$(LECTURE).html: $(LECTURE).qmd
	poetry run quarto render $(LECTURE).qmd -o $(LECTURE).html

$(LECTURE).pdf: $(LECTURE).html
	decktape --screenshots-size 1920x1080 $(LECTURE).html $(LECTURE).pdf

preview:
	poetry run quarto preview $(LECTURE).qmd
