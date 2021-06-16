FILENAME = test.txt
INFILE = $(FILENAME).fpp
OUTFILE = $(FILENAME)
FLAGS = -m for.pm -m foreach.pm -m cmacros.pm -m bigfunc.pm
FPP := $(shell command -v filepp 2> /dev/null)

ifdef EXAMPLE_ENV_VAR
FLAGS += -DUSED_IN_FPP=$(EXAMPLE_ENV_VAR)
endif

all: $(INFILE)
ifndef FPP
	$(error Error: filepp not installed)
endif
	$(info Processing: $(INFILE))
	filepp $(FLAGS) $(INFILE) -o $(OUTFILE)

clean:
	$(RM) $(OUTFILE) $(OUTFILE)~

.PHONY: all clean
