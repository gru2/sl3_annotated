
OPT_FLAGS = -g

CFLAGS = $(OPT_FLAGS) -I.

TARGETS = sl3

all: $(TARGETS)

sl3: sl3.o
	gcc -o sl3 sl3.o

%.o: %.c
	gcc -c $(CFLAGS) $< -o $@

clean::
	-rm -vf $(TARGETS) *.o
