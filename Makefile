# Makefile

# Derleyici
CC = gcc

# Derleme bayrakları (u), uyarıları ve hata ayıklama bilgilerini aktif hale getirir
CFLAGS = -Wall -Wextra -Wconversion -g

# Çıktı dosyasının adı
TARGET = example


C_SOURCES = main.c

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $(TARGET) $(C_SOURCES)

# Hedef: Temizlik (binary dosyayı siler)
clean:
	rm -f $(TARGET)

# Programı çalıştır
run: all
	./$(TARGET)

