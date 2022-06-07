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
%#   File: framework-depends-Makefile.t
%#
%# Author: $author$
%#   Date: 12/26/2021
%########################################################################
%with(%
%%(%
%%parse(%Depends%,;,,,,%(%
%%with(%
%DEPEND,%(%else-then(%DEPEND%,%(%toupper(%Depend%)%)%)%)%,%
%depend,%(%else-then(%_depend%,%(%tolower(%Depend%)%)%)%)%,%
%%(%
%########################################################################
# %Depend%
%DEPEND%_VERSION_MAJOR = 0
%DEPEND%_VERSION_MINOR = 0
%DEPEND%_VERSION_RELEASE = 0
%DEPEND%_VERSION = ${%DEPEND%_VERSION_MAJOR}.${%DEPEND%_VERSION_MINOR}.${%DEPEND%_VERSION_RELEASE}
%DEPEND%_NAME = %Depend%
%DEPEND%_GROUP = ${%DEPEND%_NAME}
%DEPEND%_VERSION_DIR = ${%DEPEND%_GROUP}/${%DEPEND%_NAME}-${%DEPEND%_VERSION}
%DEPEND%_DEPENDS_DIR = ${%DEPEND%_NAME}%then-if(%Language%,/)%%then-if(%Style%,/)%

#%DEPEND%_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${%DEPEND%_VERSION_DIR}
#%DEPEND%_PKG = ${OTHER_VERSION_PKG}/${%DEPEND%_VERSION_DIR}
%DEPEND%_PKG = ${OTHER_DEPENDS_PKG}/${%DEPEND%_DEPENDS_DIR}
#%DEPEND%_SRC = ${%DEPEND%_PKG}/%Source%/${BN_GROUP}/${BN_NAME}
%DEPEND%_SRC = ${%DEPEND%_PKG}/%Source%
%DEPEND%_BLD = ${%DEPEND%_PKG}/${BLD}/${BUILD_TYPE}
%DEPEND%_LIB = ${%DEPEND%_BLD}/lib
%DEPEND%_BIN = ${%DEPEND%_BLD}/bin

# %Depend% USRDEFINES
#
%Depend%_USRDEFINES += \

# %Depend% USRINCLUDES
#
%Depend%_USRINCLUDES += \
-I${%DEPEND%_SRC} \

# %Depend% USRCXXFLAGS
#
%Depend%_USRCXXFLAGS += \

# %Depend% USRLIBDIRS
#
%Depend%_USRLIBDIRS += \
-L${%DEPEND%_LIB} \

# %Depend% LIBS
#
%Depend%_LIBS += \
-l%Depend% \

# %Depend% FRAMEWORKS
#
%Depend%_FRAMEWORKS += \

)%)%)%,Depend)%%
%%)%)%