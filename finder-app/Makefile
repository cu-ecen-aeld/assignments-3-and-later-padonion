
writer: writer.o
	$(CROSS_COMPILE)gcc writer.o -o writer

writer.o: writer.c
	$(CROSS_COMPILE)gcc -c writer.c

all: writer

clean:
	rm -f writer.o writer

