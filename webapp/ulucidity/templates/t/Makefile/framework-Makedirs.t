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
%#   File: framework-Makedirs.t
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
%makefile,%(%else-then(%if-no(%is_makefile%%Makefile%,,%(%makefile%)%)%,%(%if-no(%is_makefile%%Makefile%,,%(Makedirs)%)%)%)%)%,%
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
all:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir" ; \
		(cd $$dir && make) || (echo "Make $$dir Failed") ; \
	done

install:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir install" ; \
		(cd $$dir && make install) || (echo "Make $$dir install Failed") ; \
	done

clean:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir clean" ; \
		(cd $$dir && make clean) || (echo "Make $$dir clean Failed") ; \
	done

again:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir again" ; \
		(cd $$dir && make again) || (echo "Make $$dir again Failed") ; \
	done
	
########################################################################

help:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir help" ; \
		(cd $$dir && make help) || (echo "Make $$dir help Failed") ; \
	done

install-links:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir install-links" ; \
		(cd $$dir && make install-links) || (echo "Make $$dir install-links Failed") ; \
	done

build:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir build" ; \
		(cd $$dir && make build) || (echo "Make $$dir build Failed") ; \
	done

config:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir config" ; \
		(cd $$dir && make config) || (echo "Make $$dir config Failed") ; \
	done

unconfig:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir unconfig" ; \
		(cd $$dir && make unconfig) || (echo "Make $$dir unconfig Failed") ; \
	done

extract:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir extract" ; \
		(cd $$dir && make extract) || (echo "Make $$dir extract Failed") ; \
	done

unextract:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir unextract" ; \
		(cd $$dir && make unextract) || (echo "Make $$dir unextract Failed") ; \
	done

extract-patch:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir extract-patch" ; \
		(cd $$dir && make extract-patch) || (echo "Make $$dir extract-patch Failed") ; \
	done

extract-docs:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir extract-docs" ; \
		(cd $$dir && make extract-docs) || (echo "Make $$dir extract-docs Failed") ; \
	done

%
%)%)%