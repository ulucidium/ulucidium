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
%#   File: Framework-os-pri.t
%#
%# Author: $author$
%#   Date: 12/15/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(pri)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(%Os2%)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%if-no(%is_os%,,%(%os%)%)%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_os%,%(%tolower(%Os%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(%else-then(%Os%,os)%)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_build,%(%else-then(%is_build%,%(%is_Build%)%)%)%,%
%build,%(%else-then(%if-no(%is_build%,,%(%build%)%)%,%(%if-no(%is_build%,,%(build)%)%)%)%)%,%
%Build,%(%else-then(%if-no(%is_build%,,%(%Build%)%)%,%(%if-no(%is_build%,,%(%build%)%)%)%)%)%,%
%BUILD,%(%else-then(%BUILD%,%(%toupper(%Build%)%)%)%)%,%
%build,%(%else-then(%_build%,%(%tolower(%Build%)%)%)%)%,%
%is_appdir,%(%else-then(%is_appdir%,%(%is_Appdir%)%)%)%,%
%appdir,%(%else-then(%if-no(%is_appdir%,,%(%appdir%)%)%,%(%if-no(%is_appdir%,,%(app)%)%)%)%)%,%
%Appdir,%(%else-then(%if-no(%is_appdir%,,%(%Appdir%)%)%,%(%if-no(%is_appdir%,,%(%appdir%)%)%)%)%)%,%
%APPDIR,%(%else-then(%APPDIR%,%(%toupper(%Appdir%)%)%)%)%,%
%appdir,%(%else-then(%_appdir%,%(%tolower(%Appdir%)%)%)%)%,%
%is_bindir,%(%else-then(%is_bindir%,%(%is_Bindir%)%)%)%,%
%bindir,%(%else-then(%if-no(%is_bindir%,,%(%bindir%)%)%,%(%if-no(%is_bindir%,,%(bin)%)%)%)%)%,%
%Bindir,%(%else-then(%if-no(%is_bindir%,,%(%Bindir%)%)%,%(%if-no(%is_bindir%,,%(%bindir%)%)%)%)%)%,%
%BINDIR,%(%else-then(%BINDIR%,%(%toupper(%Bindir%)%)%)%)%,%
%bindir,%(%else-then(%_bindir%,%(%tolower(%Bindir%)%)%)%)%,%
%is_libdir,%(%else-then(%is_libdir%,%(%is_Libdir%)%)%)%,%
%libdir,%(%else-then(%if-no(%is_libdir%,,%(%libdir%)%)%,%(%if-no(%is_libdir%,,%(lib)%)%)%)%)%,%
%Libdir,%(%else-then(%if-no(%is_libdir%,,%(%Libdir%)%)%,%(%if-no(%is_libdir%,,%(%libdir%)%)%)%)%)%,%
%LIBDIR,%(%else-then(%LIBDIR%,%(%toupper(%Libdir%)%)%)%)%,%
%libdir,%(%else-then(%_libdir%,%(%tolower(%Libdir%)%)%)%)%,%
%%(%
%%include(%Include_path%/Framework-pri-pro.t)%%
%%else(%Os%,%(
UNAME = $$system(uname)

contains(UNAME,Darwin) {
%FRAMEWORK%_OS = macosx
} else {
contains(UNAME,Linux) {
%FRAMEWORK%_OS = linux
} else {
%FRAMEWORK%_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)
)%,%(
%FRAMEWORK%_OS = %os%
)%)%
contains(BUILD_OS,%FRAMEWORK%_OS) {
%FRAMEWORK%_BUILD = $${%FRAMEWORK%_OS}
} else {
%FRAMEWORK%_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,%FRAMEWORK%_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(%FRAMEWORK%_OS,macosx) {
} else {
contains(%FRAMEWORK%_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(%FRAMEWORK%_OS,windows) {
} else {
} # contains(%FRAMEWORK%_OS,windows)
} # contains(%FRAMEWORK%_OS,linux)
} # contains(%FRAMEWORK%_OS,macosx)
%parse(%Depends%,;,,,,%(%
%%with(%
%depends,%(%tolower(%Depends%)%)%,%
%DEPENDS,%(%toupper(%Depends%)%)%,%
%%(%
%
########################################################################
# %Depends%
%DEPENDS%_THIRDPARTY_PKG_MAKE_BLD = $${%DEPENDS%_THIRDPARTY_PKG}/%Build%/$${%FRAMEWORK%_BUILD}/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_PRJ}/%Build%/$${%FRAMEWORK%_BUILD}/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PKG_BLD = $${%DEPENDS%_THIRDPARTY_PKG}/%Build%/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_PRJ}/%Build%/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_PKG_BLD = $${OTHER_BLD}/$${%DEPENDS%_PKG}/%Build%/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_PRJ}/%Build%/$${%FRAMEWORK%_BUILD}/QtCreator/$${BUILD_CONFIG}
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PKG_MAKE_BLD}/%Libdir%
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PRJ_MAKE_BLD}/%Libdir%
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PKG_BLD}/%Libdir%
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PRJ_BLD}/%Libdir%
%DEPENDS%_LIB = $${%DEPENDS%_PKG_BLD}/%Libdir%
#%DEPENDS%_LIB = $${%DEPENDS%_PRJ_BLD}/%Libdir%
#%DEPENDS%_LIB = $${%FRAMEWORK%_LIB}
%DEPENDS%_LIB_NAME = $${%DEPENDS%_NAME}

# %Depends% LIBS
#
%Depends%_LIBS += \
-L$${%DEPENDS%_LIB}/lib$${%DEPENDS%_LIB_NAME} \
-l$${%DEPENDS%_LIB_NAME} \

%
%)%)%%
%)%,Depends)%%
%########################################################################
# %Framework%

# %Framework% INCLUDEPATH
#
%Framework%_INCLUDEPATH += \

# %Framework% DEFINES
#
%Framework%_DEFINES += \

# %Framework% LIBS
#
%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_LIBS} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_LIBS} \
%if-no(%is_Os%,%(
contains(%FRAMEWORK%_OS,macosx|linux) {
%Framework%_LIBS += \
-lpthread \
-ldl
} else {
} # contains(%FRAMEWORK%_OS,macosx|linux)

contains(%FRAMEWORK%_OS,linux) {
%Framework%_LIBS += \
-lrt
} else {
} # contains(%FRAMEWORK%_OS,linux)
)%,%(%else(,%(-lpthread \
-ldl \
)%)%%else(%equal(macosx,%os%)%%equal(windows,%os%)%,-lrt)%)%)%

%
%)%)%