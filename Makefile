KANJI := utf8
PLATEX := platex -kanji=$(KANJI)
PBIB := pbibtex -kanji=$(KANJI)
DVIPDF := dvipdfmx -p a4

.PHONY: all clean
all: abst
abst:
	$(eval FILE := main)
	$(PLATEX) $(FILE)
	$(DVIPDF) $(FILE) 

clean:
	-rm -f *~ *.log *.dvi *.aux *.out

