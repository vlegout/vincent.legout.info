
SRC = $(wildcard p/*.html)
DEST = $(patsubst p/%.html,public/%.html,$(SRC))

all: $(DEST)

public/%.html: t/head.html p/%.html t/foot.html
	rm -f $@
	cat $^ > $@
