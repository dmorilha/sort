sort: sort.c
	clang -c -Werror=all -O3 --std=gnu17 -o $@.o $<
	clang -o $@ $@.o -lm -lc -lpthread
	strip -s $@;

dev: sort.c
	clang -Werror=all -lpthread -fsanitize=address -lm -O0 -g --std=gnu17 -o $@ $<
	./dev
