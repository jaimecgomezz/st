# st - simple terminal
# See LICENSE file for copyright and license details.
.POSIX:

include config.mk

# >>>>>>>>>>>>>>>>>>>> ligatures
# ==================== ligatures
SRC = st.c x.c
# ==================== ligatures
# <<<<<<<<<<<<<<<<<<<< ligatures
OBJ = $(SRC:.c=.o)
# >>>>>>>>>>>>>>>>>>>> desktop-entry
# ==================== desktop-entry
DESKTOP_FILE = st.desktop
DESKTOP_FOLDER = $(DESTDIR)$(PREFIX)/share/applications
INSTALL_DESKTOP =
UNINSTALL_DESKTOP =
# ==================== desktop-entry
# <<<<<<<<<<<<<<<<<<<< desktop-entry

all: options st

options:
	@echo st build options:
	@echo "CFLAGS  = $(STCFLAGS)"
	@echo "LDFLAGS = $(STLDFLAGS)"
	@echo "CC      = $(CC)"

config.h: config.def.h
	cp config.def.h config.h

.c.o:
	$(CC) $(STCFLAGS) -c $<

# >>>>>>>>>>>>>>>>>>>> vim-browse
# ==================== vim-browse
st.o: config.h st.h win.h
# ==================== vim-browse
# <<<<<<<<<<<<<<<<<<<< vim-browse
# >>>>>>>>>>>>>>>>>>>> ligatures
# ==================== ligatures
x.o: arg.h config.h st.h win.h
# ==================== ligatures
# <<<<<<<<<<<<<<<<<<<< ligatures

$(OBJ): config.h config.mk

st: $(OBJ)
	$(CC) -o $@ $(OBJ) $(STLDFLAGS)

clean:
	rm -f st $(OBJ) st-$(VERSION).tar.gz *.rej *.orig

dist: clean
	mkdir -p st-$(VERSION)
	cp -R FAQ LEGACY TODO LICENSE Makefile README config.mk\
		config.def.h st.info st.1 arg.h st.h win.h $(SRC)\
		st-$(VERSION)
	tar -cf - st-$(VERSION) | gzip > st-$(VERSION).tar.gz
	rm -rf st-$(VERSION)

install: st
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f st $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/st
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	sed "s/VERSION/$(VERSION)/g" < st.1 > $(DESTDIR)$(MANPREFIX)/man1/st.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/st.1
	tic -sx st.info
	@echo Please see the README file regarding the terminfo entry of st.
	$(INSTALL_DESKTOP)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/st
	rm -f $(DESTDIR)$(MANPREFIX)/man1/st.1
	$(UNINSTALL_DESKTOP)

.PHONY: all options clean dist install uninstall

