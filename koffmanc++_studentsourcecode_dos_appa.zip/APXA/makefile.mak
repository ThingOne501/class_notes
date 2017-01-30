TARGETS = test_small_allocator.exe test_list_with_allocator.exe \
standard_allocator_test.exe test_ci_string.exe test_shared_ptr.exe

CC = cl
CCFLAGS = /Zi /EHsc /GR /GZ

all:	$(TARGETS)

test_small_allocator.exe:	test_small_allocator.obj
	$(CC) $(CCFLAGS) /Fe$@ $**

test_list_with_allocator.exe:	test_list_with_allocator.obj
	$(CC) $(CCFLAGS) /Fe$@ $**

standard_allocator_test.exe:	standard_allocator_test.obj
	$(CC) $(CCFLAGS) /Fe$@ $**

test_ci_string.exe:	test_ci_string.obj
	$(CC) $(CCFLAGS) /Fe$@ $**

test_shared_ptr.exe:	test_shared_ptr.obj
	$(CC) $(CCFLAGS) /Fe$@ $**

standard_allocator_test.obj:	standard_allocator_test.cpp
	$(CC) $(CCFLAGS) /c /Fo$@ standard_allocator_test.cpp

test_char_allocator.obj:	test_char_allocator.cpp small_allocator.h
	$(CC) $(CCFLAGS) /c /Fo$@ test_char_allocator.cpp

test_ci_string.obj:	test_ci_string.cpp ci_string.h
	$(CC) $(CCFLAGS) /c /Fo$@ test_ci_string.cpp

test_list_with_allocator.obj:	test_list_with_allocator.cpp \
list_with_allocator.h small_allocator.h DNode.h list_iterator.h \
list_const_iterator.h
	$(CC) $(CCFLAGS) /c /Fo$@ test_list_with_allocator.cpp

test_shared_ptr.obj:	test_shared_ptr.cpp shared_ptr.h
	$(CC) $(CCFLAGS) /c /Fo$@ test_shared_ptr.cpp

test_small_allocator.obj:	test_small_allocator.cpp small_allocator.h
	$(CC) $(CCFLAGS) /c /Fo$@ test_small_allocator.cpp


.PHONY:	clean

clean:
	del *.obj
	del *.exe
	del *.pdb
	del *.ilk
