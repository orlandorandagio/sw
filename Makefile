TARGET = sw
CC = gcc
CFLAGS = -Iinclude -DMAX_STOPS=64

INSTALL_DIR = /usr/bin


SOURCES =  main.c format.c sw.c termios_helper.c

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	    cp $(TARGET) $(INSTALL_DIR)

.PHONY: clean install
