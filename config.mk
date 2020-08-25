# st version
VERSION = 0.8.4

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

PKG_CONFIG = pkg-config


# >>>>>>>>>>>>>>>>>>>> alpha
# ==================== alpha
ALPHA_OPTS =
# ==================== alpha
# <<<<<<<<<<<<<<<<<<<< alpha


# >>>>>>>>>>>>>>>>>>>> ligatures
# ==================== ligatures
LIGATURES_INCS =
LIGATURES_LIBS =
# ==================== ligatures
# <<<<<<<<<<<<<<<<<<<< ligatures


# includes and libs
INCS = -I$(X11INC) `$(PKG_CONFIG) --cflags fontconfig` `$(PKG_CONFIG) --cflags freetype2` $(LIGATURES_INCS)

LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft $(ALPHA_OPTS) `$(PKG_CONFIG) --libs fontconfig` `$(PKG_CONFIG) --libs freetype2` $(LIGATURES_LIBS)


# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# OpenBSD:
#CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE
#LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`

# compiler and linker
# CC = c99

