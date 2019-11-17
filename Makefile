CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB1=basicMath.o
OBJECTS_LIB2=power.o
FLAGS= -Wall -g

all: mymathd mymaths mains maind .PHONY	
mains: $(OBJECTS_MAIN) libmyMath.a 
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mymathd: $(OBJECTS_LIB1) $(OBJECTS_LIB2)
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB1) $(OBJECTS_LIB2)
mymaths: $(OBJECTS_LIB1) $(OBJECTS_LIB2)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB1) $(OBJECTS_LIB2)	
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c 
power.o: power.c  myMath.h
	$(CC) $(FLAGS) -c power.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind 
