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
%#   File: thirdparty-depends-rules-Makefile.t
%#
%# Author: $author$
%#   Date: 12/28/2021
%########################################################################
%with(%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(Depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(What)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%%(%
%%parse(%Depends%,;,,,,%(%with(%
%DEPENDS,%(%toupper(%Depends%)%)%,%
%depends,%(%tolower(%Depends%)%)%,%
%%(
%cc_%########################################################################
#
# %What% %Depends% defs
#
########################################################################%_cc%
%WHAT%_%DEPENDS%_MAKEDIR=$(PWD)

%WHAT%_%DEPENDS%_HOME_BUILD = $(HOME)
%WHAT%_%DEPENDS%_HOME_SOURCE_BUILD = $(HOME)/source
%WHAT%_%DEPENDS%_THIRDPARTY_BUILD = $(%WHAT%_%DEPENDS%_MAKEDIR)/..

ifeq ($(%DEPENDS%_BUILD_HOME),HOME_BUILD)
%WHAT%_%DEPENDS%_BUILD_HOME = $(%WHAT%_%DEPENDS%_HOME_BUILD)
else
ifeq ($(%DEPENDS%_BUILD_HOME),HOME_SOURCE_BUILD)
%WHAT%_%DEPENDS%_BUILD_HOME = $(%WHAT%_%DEPENDS%_HOME_SOURCE_BUILD)
else
ifeq ($(%DEPENDS%_BUILD_HOME),%DEPENDS%_THIRDPARTY_BUILD)
%WHAT%_%DEPENDS%_BUILD_HOME = $(%WHAT%_%DEPENDS%_THIRDPARTY_BUILD)
else
ifndef %DEPENDS%_BUILD_HOME
%WHAT%_%DEPENDS%_BUILD_HOME = $(%WHAT%_%DEPENDS%_THIRDPARTY_BUILD)
else
%WHAT%_%DEPENDS%_BUILD_HOME = $(%WHAT%_%DEPENDS%_BUILD_HOME)
endif
endif
endif
endif

ifndef %WHAT%_%DEPENDS%_UNAME
%WHAT%_%DEPENDS%_UNAME = $(shell uname)
endif

ifndef %WHAT%_%DEPENDS%_OS
ifneq ($(%WHAT%_%DEPENDS%_UNAME),Darwin)
%WHAT%_%DEPENDS%_OS = linux
else
%WHAT%_%DEPENDS%_OS = macosx
endif
endif

ifndef %DEPENDS%_BUILD_HOME
ifndef %DEPENDS%_VERSION
ifeq ($(%DEPENDS%),yes)
%WHAT%_%DEPENDS% = yes
else
ifeq ($(%DEPENDS%),no)
%WHAT%_%DEPENDS% = no
else
ifndef %WHAT%_%DEPENDS%
%WHAT%_%DEPENDS% = no
endif
endif
endif
else
%WHAT%_%DEPENDS% = yes
endif
else
%WHAT%_%DEPENDS% = yes
endif

%cc_%#
# %What% %Depends% version
#%_cc%
ifeq ($(%DEPENDS%_VERSION),%depends_version_major%%depends_version_minor%%depends_version_release%%depends_version_build%)
%WHAT%_%DEPENDS%_VERSION_MAJOR = %depends_version_major%%
%%if(%depends_version_minor%,%(
%WHAT%_%DEPENDS%_VERSION_MINOR = %depends_version_minor%)%)%%
%%if(%depends_version_release%,%(
%WHAT%_%DEPENDS%_VERSION_RELEASE = %depends_version_release%)%)%%
%%if(%depends_version_build%,%(
%WHAT%_%DEPENDS%_VERSION_BUILD = %depends_version_build%)%)%
else
%WHAT%_%DEPENDS%_VERSION_MAJOR = %depends_version_major%%
%%if(%depends_version_minor%,%(
%WHAT%_%DEPENDS%_VERSION_MINOR = %depends_version_minor%)%)%%
%%if(%depends_version_release%,%(
%WHAT%_%DEPENDS%_VERSION_RELEASE = %depends_version_release%)%)%%
%%if(%depends_version_build%,%(
%WHAT%_%DEPENDS%_VERSION_BUILD = %depends_version_build%)%)%
endif

%WHAT%_%DEPENDS%_VERSION_SEPARATOR = %else-then(%depends_version_separator%,%(%else-then(%depends_version_major_separator%,.)%)%)%%
%%if(%depends_version_minor%,%(
%WHAT%_%DEPENDS%_VERSION_MAJOR_SEPARATOR = %else-then(%depends_version_major_separator%,%($%(()%%WHAT%_%DEPENDS%_VERSION_SEPARATOR%())%)%)%)%)%%
%%if(%depends_version_release%,%(
%WHAT%_%DEPENDS%_VERSION_MINOR_SEPARATOR = %else-then(%depends_version_minor_separator%,%($%(()%%WHAT%_%DEPENDS%_VERSION_SEPARATOR%())%)%)%)%)%%
%%if(%depends_version_build%,%(
%WHAT%_%DEPENDS%_VERSION_RELEASE_SEPARATOR = %else-then(%depends_version_release_separator%,%($%(()%%WHAT%_%DEPENDS%_VERSION_SEPARATOR%())%)%)%)%)%

%WHAT%_%DEPENDS%_VERSION_SHORT = \
$(%WHAT%_%DEPENDS%_VERSION_MAJOR)$(%WHAT%_%DEPENDS%_VERSION_MINOR)\
$(%WHAT%_%DEPENDS%_VERSION_RELEASE)$(%WHAT%_%DEPENDS%_VERSION_BUILD)

%WHAT%_%DEPENDS%_VERSION = \
$(%WHAT%_%DEPENDS%_VERSION_MAJOR)$(%WHAT%_%DEPENDS%_VERSION_MAJOR_SEPARATOR)\
$(%WHAT%_%DEPENDS%_VERSION_MINOR)$(%WHAT%_%DEPENDS%_VERSION_MINOR_SEPARATOR)\
$(%WHAT%_%DEPENDS%_VERSION_RELEASE)$(%WHAT%_%DEPENDS%_VERSION_RELEASE_SEPARATOR)\
$(%WHAT%_%DEPENDS%_VERSION_BUILD)

%cc_%#
# %What% %Depends% name
#%_cc%
%WHAT%_%DEPENDS%_NAME_SEPARATOR = %depends_name_separator%
%WHAT%_%DEPENDS%_NAME_BASE = %depends%
%WHAT%_%DEPENDS%_NAME = $(%WHAT%_%DEPENDS%_NAME_BASE)$(%WHAT%_%DEPENDS%_NAME_SEPARATOR)$(%WHAT%_%DEPENDS%_VERSION)
%WHAT%_%DEPENDS%_DIR = $(%WHAT%_%DEPENDS%_NAME)

%WHAT%_%DEPENDS%_INSTALL_NAME_SEPARATOR = %depends_name_separator%
%WHAT%_%DEPENDS%_INSTALL_NAME_BASE = %depends%
%WHAT%_%DEPENDS%_INSTALL_NAME = $(%WHAT%_%DEPENDS%_INSTALL_NAME_BASE)$(%WHAT%_%DEPENDS%_INSTALL_NAME_SEPARATOR)$(%WHAT%_%DEPENDS%_VERSION)
%WHAT%_%DEPENDS%_INSTALL_DIR = $(%WHAT%_%DEPENDS%_BUILD_HOME)/build/$(%WHAT%_%DEPENDS%_INSTALL_NAME)
)%)%)%,Depends)%%
%)%)%