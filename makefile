all:main

trie.o: trie.h trie.cpp
	g++ -c -g -std=c++17 trie.cpp

main.o: main.cpp trie.h
	g++ -c -g -std=c++17 main.cpp

main: trie.o main.o
	g++ -g -std=c++17 trie.o main.o -o main

clean:
	rm *.o *~ main
