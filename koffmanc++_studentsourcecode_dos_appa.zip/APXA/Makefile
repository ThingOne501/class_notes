TARGETS = test_small_allocator.exe test_list_with_allocator.exe \
standard_allocator_test.exe test_ci_string.exe test_shared_ptr.exe

CC = g++
CCFLAGS = -Wall -g

all:	$(TARGETS)

test_small_allocator.exe:	test_small_allocator.o
	$(CC) $(CCFLAGS) -o $@ $^

test_list_with_allocator.exe:	test_list_with_allocator.o
	$(CC) $(CCFLAGS) -o $@ $^

standard_allocator_test.exe:	standard_allocator_test.o
	$(CC) $(CCFLAGS) -o $@ $^

test_ci_string.exe:	test_ci_string.o
	$(CC) $(CCFLAGS) -o $@ $^

test_shared_ptr.exe:	test_shared_ptr.o
	$(CC) $(CCFLAGS) -o $@ $^

standard_allocator_test.o:	standard_allocator_test.cpp
	$(CC) $(CCFLAGS) -c -o $@ $<

test_char_allocator.o:	test_char_allocator.cpp small_allocator.h
	$(CC) $(CCFLAGS) -c -o $@ $<

test_ci_string.o:	test_ci_string.cpp ci_string.h
	$(CC) $(CCFLAGS) -c -o $@ $<

test_list_with_allocator.o:	test_list_with_allocator.cpp \
list_with_allocator.h small_allocator.h DNode.h list_iterator.h \
list_const_iterator.h
	$(CC) $(CCFLAGS) -c -o $@ $<

test_shared_ptr.o:	test_shared_ptr.cpp shared_ptr.h
	$(CC) $(CCFLAGS) -c -o $@ $<

test_small_allocator.o:	test_small_allocator.cpp small_allocator.h
	$(CC) $(CCFLAGS) -c -o $@ $<


.PHONY:	clean

clean:
	del *.o
	del *.exe
