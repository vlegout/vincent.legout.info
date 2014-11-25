
SRC = $(wildcard p/*.html)
DEST = $(patsubst p/%.html,output/%.html,$(SRC))

all: $(DEST)

output/%.html: t/head.html p/%.html t/foot.html
	rm -f $@
	cat $^ > $@
