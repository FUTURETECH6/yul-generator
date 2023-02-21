.PHONY: ir clean

ir: $(patsubst %.sol, %.yul, $(wildcard *.sol))

%.yul: %.sol
	solc --ir $^ > $@

clean:
	rm -f *.yul
