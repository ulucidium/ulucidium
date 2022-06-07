%########################################################################
%# Copyright (c) 1988-2021 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: framework-Makedefines.t
%#
%# Author: $author$
%#   Date: 12/28/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%%Include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%%Include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%%Include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%%Include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_makefile,%(%else-then(%is_makefile%,%(%is_Makefile%)%)%)%,%
%makefile,%(%else-then(%if-no(%is_makefile%%Makefile%,,%(%makefile%)%)%,%(%if-no(%is_makefile%%Makefile%,,%(Makedefines)%)%)%)%)%,%
%Makefile,%(%else-then(%if-no(%is_makefile%%Makefile%,,%(%Makefile%)%)%,%(%if-no(%is_makefile%%Makefile%,,%(%makefile%)%)%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%%Framework%,,%(%framework%)%)%,%(%if-no(%is_framework%%Framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%%Framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%%Framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-Makefile.t)%%
%
ifndef BUILD_HOME
BUILD_HOME = $(HOME)
endif

ifndef BUILD_TYPE
BUILD_TYPE = Debug
endif

ifndef BUILD_OS
BUILD_OS = os
endif

ifeq ($(BUILD_TYPE),Debug)
DBGFLAGS = -D_DEBUG -g
BUILD_DEFINE = -DDEBUG_BUILD
else
DBGFLAGS = -D_RELEASE
BUILD_DEFINE = -DRELEASE_BUILD
endif

ifndef UNAME
UNAME = $(shell uname)
endif

ifndef OS
ifneq ($(UNAME),Darwin)
OS = linux
else
OS = macosx
endif
endif

ifndef BUILD_OS
BUILD_OS = $(OS)
endif

ifndef BLD
BLD = build/$(BUILD_OS)
endif

ifndef INS
INS = $(BUILD_HOME)/$(BLD)
endif

PKGROOT = $(PKG)
PKGBLD = $(PKG)/$(BLD)/$(BUILD_TYPE)
BINDIR = $(PKGBLD)/bin
LIBDIR = $(PKGBLD)/lib
INSBIN = $(INS)/bin
INSLIB = $(INS)/lib

COMPILER_PATH =
COMPILER_PREFIX =

DEFINES = \
$(DBGFLAGS) \
$(BUILD_DEFINE) \

INCLUDES = \
-I$(PKG)/$(SRC) \
-I$(PKG) \

LIBDIRS	= \
-L$(LIBDIR) \

ifeq ($(OS),macosx)
STDLIBS	= \
-lpthread \
-ldl
else
STDLIBS	= \
-lpthread \
-ldl \
-lrt
endif

#
# Kernel
#
ifndef KERNEL_ARCH
KERNEL_ARCH = $(shell uname -m)
endif # KERNEL_ARCH
ifndef KERNEL_VERSION
KERNEL_VERSION = $(shell uname -r)
endif # KERNEL_VERSION
KERNEL_CC = $(COMPILER_PATH)$(COMPILER_PREFIX)gcc
KERNEL_LD = ld -r
KERNEL_DEFINES = -D_DBPRINTK -D__KERNEL__ -DMODULE -DLINUX
KERNEL_OPTIONS = -Wall -O2 -pipe
KERNEL_INCLUDES = -I$(INCLUDES) -I/usr/src/linux-headers-$(KERNEL_VERSION)/include
KERNEL_CFLAGS = $(KERNEL_OPTIM) $(KERNEL_USRINCLUDES) $(KERNEL_INCLUDES) $(KERNEL_DEFINES) $(KERNEL_USRDEFINES) $(KERNEL_USRDEFS) $(KERNEL_OPTIONS) $(KERNEL_USRFLAGS)
KERNEL_LDFLAGS = $(KERNEL_LIBDIRS) $(KERNEL_USRLIBDIRS) $(KERNEL_USRLDFLAGS) $(KERNEL_OPTIM)

#
# C
#
CC = $(COMPILER_PATH)$(COMPILER_PREFIX)gcc
CCLD = $(CC)
CCDSO = $(CCLD)
OPTIM = -fpic
CFLAGS = $(OPTIM) $(USRINCLUDES) $(INCLUDES) $(DEFINES) $(USRDEFINES) $(USRDEFS) $(OPTIONS) $(USRCFLAGS) $(USRFLAGS)

#
# C++
#
CXX = $(COMPILER_PATH)$(COMPILER_PREFIX)g++
CXXLD = $(CXX)
CXXDSO = $(CXXLD)
CXXOPTIM = -fno-rtti -fpermissive
CXXFLAGS = $(OPTIM) $(CXXOPTIM) $(USRINCLUDES) $(INCLUDES) $(DEFINES) $(USRDEFINES) $(USRDEFS) $(OPTIONS) $(USRCXXFLAGS) $(USRFLAGS)

#
# Librarian
#
AR = $(COMPILER_PATH)$(COMPILER_PREFIX)ar
RANLIB = ranlib
STRIP = strip
LIBTOOL =
LIBEXT = a

ifeq ($(OS),macosx)
SLIBEXT = dylib
else
SLIBEXT = so
endif

KMODEXT = ko

#
# Filesystem
#
CHMOD =	chmod
CP =	cp
LN =	ln -sf
MV =	mv
RM =	rm -f
MKDIR =	mkdir -p
D2U  =	dos2unix

DSOFLAGS = -shared $(USRDSOFLAGS)
LDFLAGS = $(LIBDIRS) $(USRLIBDIRS) $(USRLDFLAGS) $(OPTIM) $(CXXOPTIM)
ARFLAGS = crs $(USRARFLAGS)

OPTIONS := $(shell if [ "$(BUILD_TYPE)" = "Debug" ] ; then echo -g; fi)
STRIP := $(shell if [ "$(BUILD_TYPE)" = "Debug" ] ; then echo "@echo Not Stripping"; else echo strip; fi)

#
# Rules
#
.cpp.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.cxx.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.cc.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.mm.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.c.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CC) -c $(CFLAGS) -o $@ $<

.m.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CC) -c $(CFLAGS) -o $@ $<

.S.o:
	@$(CC) -c -o $*.o $<

.s.o:
	@$(AS) -o $*.o $<
%
%)%)%