PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
TARGET = blindsort-tty
SOURCE = game.sh

.PHONY: install uninstall

install:
	@echo "Installing $(TARGET)..."
	install -Dm755 $(SOURCE) $(BINDIR)/$(TARGET)
	@echo "Installed in $(BINDIR)/$(TARGET)"

uninstall:
	@echo "Uninstalling $(TARGET)..."
	rm -f $(BINDIR)/$(TARGET)
	@echo "Uninstalled successfully"
