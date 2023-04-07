.PHONY: ir clean

ir: $(patsubst %.sol, %.yul, $(wildcard *.sol))

%.yul: %.sol
	solc --ir $^ > $@
	solc --hashes $^

clean:
	rm -f *.yul
