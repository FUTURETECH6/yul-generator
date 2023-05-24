.PHONY: ir clean

ir: $(patsubst %.sol, %.yul, $(wildcard *.sol))

%.yul: %.sol
	solc --ir $^ > $@
	solc --hashes $^

hashes:
	solc --hashes *.sol

clean:
	rm -f *.yul
