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
%#   File: build-framework-Makedefines.t
%#
%# Author: $author$
%#   Date: 12/27/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_makefile,%(%else-then(%is_makefile%,%(%is_Makefile%)%)%)%,%
%makefile,%(%else-then(%if-no(%is_makefile%,,%(%makefile%)%)%,%(%if-no(%is_makefile%,,%(Makedefines)%)%)%)%)%,%
%Makefile,%(%else-then(%if-no(%is_makefile%,,%(%Makefile%)%)%,%(%if-no(%is_makefile%,,%(%makefile%)%)%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(build specific)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%%Framework%,,%(%framework%)%)%,%(%if-no(%is_framework%%Framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%%Framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%%Framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-Makefile.t)%%
%
#
# build HOME
#
ifndef BUILD_HOME
ifdef PKG
BUILD_HOME = $(PKG)/../..
else
BUILD_HOME = $(HOME)
endif
endif

#
# build UNAME
#
ifndef UNAME
UNAME = $(shell uname)
endif

#
# build OS
#
ifndef OS
ifneq ($(UNAME),Darwin)
OS = linux
else
OS = macosx
endif
endif

#
# install directory
#
ifndef INS
INS = $(BUILD_HOME)/build/%Framework%
endif

%
%)%)%