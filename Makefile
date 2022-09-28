SRCDIR := src
CLSDIR := dst
MAIN   := Main

TARGET := $(CLSDIR)/$(MAIN).class
ENTRY  := $(SRCDIR)/$(MAIN).java

$(TARGET): $(ENTRY)
	@javac -d ./$(CLSDIR) $(ENTRY)

run: $(TARGET)
	@java -cp ./$(CLSDIR) $(MAIN)

clean:
	@rm cls -rf

re: clean run

all: $(TARGET)

.PHONY: clean all
