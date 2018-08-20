FILENAME = test.txt
INFILE = $(FILENAME).fpp
OUTFILE = $(FILENAME)
FLAGS = -m for.pm -m foreach.pm -m cmacros.pm
FPP := $(shell command -v filepp 2> /dev/null)

all: $(INFILE)
ifndef FPP
	$(error Error: filepp not installed)
endif
	$(info Processing: $(INFILE))
	filepp $(FLAGS) $(INFILE) -o $(OUTFILE)

clean:
	$(RM) $(OUTFILE) $(OUTFILE)~

.PHONY: all clean
