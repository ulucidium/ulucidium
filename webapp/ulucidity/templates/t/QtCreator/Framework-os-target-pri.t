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
%#   File: Framework-os-target-pri.t
%#
%# Author: $author$
%#   Date: 12/16/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(pro)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(os)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_no_repository_depends,%(%else-then(%is_no_repository_depends%,%(%is_no_Repository_depends%)%)%)%,%
%no_repository_depends,%(%else-then(%if-no(%is_no_repository_depends%,,%(%no_repository_depends%)%)%,%(%if-no(%is_no_repository_depends%,,%(yes)%)%)%)%)%,%
%no_Repository_depends,%(%else-then(%if-no(%is_no_repository_depends%,,%(%no_Repository_depends%)%)%,%(%if-no(%is_no_repository_depends%,,%(%no_repository_depends%)%)%)%)%)%,%
%NO_REPOSITORY_DEPENDS,%(%else-then(%NO_REPOSITORY_DEPENDS%,%(%toupper(%no_Repository_depends%)%)%)%)%,%
%no_repository_depends,%(%else-then(%_no_repository_depends%,%(%tolower(%no_Repository_depends%)%)%)%)%,%
%is_is_mo_depends_repository,%(%else-then(%is_is_mo_depends_repository%,%(%is_is_mo_Depends_repository%)%)%)%,%
%is_mo_depends_repository,%(%else-then(%if-no(%is_is_mo_depends_repository%,,%(%is_mo_depends_repository%)%)%,%(%if-no(%is_is_mo_depends_repository%,,%(yes)%)%)%)%)%,%
%is_mo_Depends_repository,%(%else-then(%if-no(%is_is_mo_depends_repository%,,%(%is_mo_Depends_repository%)%)%,%(%if-no(%is_is_mo_depends_repository%,,%(%is_mo_depends_repository%)%)%)%)%)%,%
%IS_MO_DEPENDS_REPOSITORY,%(%else-then(%IS_MO_DEPENDS_REPOSITORY%,%(%toupper(%is_mo_Depends_repository%)%)%)%)%,%
%is_mo_depends_repository,%(%else-then(%_is_mo_depends_repository%,%(%tolower(%is_mo_Depends_repository%)%)%)%)%,%
%is_no_depends,%(%else-then(%is_no_depends%,%(%is_no_Depends%)%)%)%,%
%no_depends,%(%else-then(%if-no(%is_no_depends%,,%(%no_depends%)%)%,%(%if-no(%is_no_depends%,,%(yes)%)%)%)%)%,%
%no_Depends,%(%else-then(%if-no(%is_no_depends%,,%(%no_Depends%)%)%,%(%if-no(%is_no_depends%,,%(%no_depends%)%)%)%)%)%,%
%NO_DEPENDS,%(%else-then(%NO_DEPENDS%,%(%toupper(%no_Depends%)%)%)%)%,%
%no_depends,%(%else-then(%_no_depends%,%(%tolower(%no_Depends%)%)%)%)%,%
%is_out,%(%else-then(%is_out%,%(%is_Out%)%)%)%,%
%out,%(%else-then(%if-no(%is_out%,,%(%out%)%)%,%(%if-no(%is_out%,,%(Lib)%)%)%)%)%,%
%Out,%(%else-then(%if-no(%is_out%,,%(%Out%)%)%,%(%if-no(%is_out%,,%(%out%)%)%)%)%)%,%
%OUT,%(%else-then(%OUT%,%(%toupper(%Out%)%)%)%)%,%
%out,%(%else-then(%_out%,%(%tolower(%Out%)%)%)%)%,%
%is_lib,%(%else-then(%is_lib%,%(%is_Lib%)%)%)%,%
%lib,%(%else-then(%if-no(%is_lib%,,%(%lib%)%)%,%(%if-no(%is_lib%,,%(%equal(Lib,%Out%)%)%)%)%)%)%,%
%Lib,%(%else-then(%if-no(%is_lib%,,%(%Lib%)%)%,%(%if-no(%is_lib%,,%(%lib%)%)%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_lib%,%(%tolower(%Lib%)%)%)%)%,%
%is_slib,%(%else-then(%is_slib%,%(%is_SLib%)%)%)%,%
%slib,%(%else-then(%if-no(%is_slib%,,%(%slib%)%)%,%(%if-no(%is_slib%,,%(%equal(SLib,%Out%)%)%)%)%)%)%,%
%SLib,%(%else-then(%if-no(%is_slib%,,%(%SLib%)%)%,%(%if-no(%is_slib%,,%(%slib%)%)%)%)%)%,%
%SLIB,%(%else-then(%SLIB%,%(%toupper(%SLib%)%)%)%)%,%
%slib,%(%else-then(%_slib%,%(%tolower(%SLib%)%)%)%)%,%
%is_xos,%(%else-then(%is_xos%,%(%is_Xos%)%)%)%,%
%xos,%(%else-then(%if-no(%is_xos%,,%(%xos%)%)%,%(%if-no(%is_xos%,,%(xos)%)%)%)%)%,%
%Xos,%(%else-then(%if-no(%is_xos%,,%(%Xos%)%)%,%(%if-no(%is_xos%,,%(%xos%)%)%)%)%)%,%
%XOS,%(%else-then(%XOS%,%(%toupper(%Xos%)%)%)%)%,%
%xos,%(%else-then(%_xos%,%(%tolower(%Xos%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%,,%(%target%)%)%,%(%if-no(%is_target%,,%(%Framework%)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%,,%(%Target%)%)%,%(%if-no(%is_target%,,%(%target%)%)%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_target%,%(%tolower(%Target%)%)%)%)%,%
%is_exe,%(%else-then(%is_exe%,%(%is_Exe%)%)%)%,%
%exe,%(%else-then(%if-no(%is_exe%,,%(%exe%)%)%,%(%if-no(%is_exe%,,%else(%lib%%slib%,%(%if(%HasExe%%equal(%Target%,%Framework%)%,_exe)%)%)%)%)%)%)%,%
%Exe,%(%else-then(%if-no(%is_exe%,,%(%Exe%)%)%,%(%if-no(%is_exe%,,%(%exe%)%)%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_exe%,%(%tolower(%Exe%)%)%)%)%,%
%is_output,%(%else-then(%is_output%,%(%is_Output%)%)%)%,%
%output,%(%else-then(%if-no(%is_output%,,%(%output%)%)%,%(%if-no(%is_output%,,%(%if(%Lib%%SLib%,%(%if(%SLib%,%(shared )%,%(static )%)%library)%,executable)%)%)%)%)%)%,%
%Output,%(%else-then(%if-no(%is_output%,,%(%Output%)%)%,%(%if-no(%is_output%,,%(%output%)%)%)%)%)%,%
%OUTPUT,%(%else-then(%OUTPUT%,%(%toupper(%Output%)%)%)%)%,%
%output,%(%else-then(%_output%,%(%tolower(%Output%)%)%)%)%,%
%is_libtarget,%(%else-then(%is_libtarget%,%(%is_LibTarget%)%)%)%,%
%libtarget,%(%else-then(%if-no(%is_libtarget%,,%(%libtarget%)%)%,%(%if-no(%is_libtarget%,,%(%if(%lib%%slib%,lib)%%Target%)%)%)%)%)%,%
%LibTarget,%(%else-then(%if-no(%is_libtarget%,,%(%LibTarget%)%)%,%(%if-no(%is_libtarget%,,%(%libtarget%)%)%)%)%)%,%
%LIBTARGET,%(%else-then(%LIBTARGET%,%(%toupper(%LibTarget%)%)%)%)%,%
%libtarget,%(%else-then(%_libtarget%,%(%tolower(%LibTarget%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(%else-then(%Os2%,%(%else-then(%os%,os)%)%)%)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%if-no(%is_os%,,%(%os%)%)%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_os%,%(%tolower(%Os%)%)%)%)%,%
%is_osdir,%(%else-then(%is_osdir%,%(%is_Osdir%)%)%)%,%
%osdir,%(%else-then(%if-no(%is_osdir%,,%(%osdir%)%)%,%(%if-no(%is_osdir%,,%(%else-then(%os%,os)%)%)%)%)%)%,%
%Osdir,%(%else-then(%if-no(%is_osdir%,,%(%Osdir%)%)%,%(%if-no(%is_osdir%,,%(%osdir%)%)%)%)%)%,%
%OSDIR,%(%else-then(%OSDIR%,%(%toupper(%Osdir%)%)%)%)%,%
%osdir,%(%else-then(%_osdir%,%(%tolower(%Osdir%)%)%)%)%,%
%is_bindir,%(%else-then(%is_bindir%,%(%is_Bindir%)%)%)%,%
%bindir,%(%else-then(%if-no(%is_bindir%,,%(%bindir%)%)%,%(%if-no(%is_bindir%,,%(%if(%lib%%slib%,lib,bin)%)%)%)%)%)%,%
%Bindir,%(%else-then(%if-no(%is_bindir%,,%(%Bindir%)%)%,%(%if-no(%is_bindir%,,%(%bindir%)%)%)%)%)%,%
%BINDIR,%(%else-then(%BINDIR%,%(%toupper(%Bindir%)%)%)%)%,%
%bindir,%(%else-then(%_bindir%,%(%tolower(%Bindir%)%)%)%)%,%
%is_appdir,%(%else-then(%is_appdir%,%(%is_Appdir%)%)%)%,%
%appdir,%(%else-then(%if-no(%is_appdir%,,%(%appdir%)%)%,%(%if-no(%is_appdir%,,%(%if(%lib%%slib%,lib,app)%)%)%)%)%)%,%
%Appdir,%(%else-then(%if-no(%is_appdir%,,%(%Appdir%)%)%,%(%if-no(%is_appdir%,,%(%appdir%)%)%)%)%)%,%
%APPDIR,%(%else-then(%APPDIR%,%(%toupper(%Appdir%)%)%)%)%,%
%appdir,%(%else-then(%_appdir%,%(%tolower(%Appdir%)%)%)%)%,%
%is_is_include_host_build,%(%else-then(%is_is_include_host_build%,%(%is_is_Include_host_build%)%)%)%,%
%is_include_host_build,%(%else-then(%if-no(%is_is_include_host_build%,,%(%is_include_host_build%)%)%,%(%if-no(%is_is_include_host_build%,,%(no)%)%)%)%)%,%
%is_Include_host_build,%(%else-then(%if-no(%is_is_include_host_build%,,%(%is_Include_host_build%)%)%,%(%if-no(%is_is_include_host_build%,,%(%is_include_host_build%)%)%)%)%)%,%
%IS_INCLUDE_HOST_BUILD,%(%else-then(%IS_INCLUDE_HOST_BUILD%,%(%toupper(%is_Include_host_build%)%)%)%)%,%
%is_include_host_build,%(%else-then(%_is_include_host_build%,%(%tolower(%is_Include_host_build%)%)%)%)%,%
%%(%
%%include(%Include_path%/Framework-pri-pro.t)%%
%%if-no(%is_Config%,,%(#
# Debug: %Framework%/build/%Osdir%/QtCreator/Debug/%Bindir%/%LibTarget%
# Release: %Framework%/build/%Osdir%/QtCreator/Release/%Bindir%/%LibTarget%
# Profile: %Framework%/build/%Osdir%/QtCreator/Profile/%Bindir%/%LibTarget%
#
)%)%%
%%if-no(%is_Include_host_build%,,%(include(../../../../../../build/QtCreator/%Framework%.pri)
)%)%include(../../../../../build/QtCreator/%Framework%.pri)
include(../../../../QtCreator/%Framework%.pri)
include(../../%Framework%.pri)
include(../../../../QtCreator/%Appdir%/%LibTarget%/%LibTarget%.pri)

TARGET = $${%LibTarget%%exe%_TARGET}%
%%if(%Lib%%SLib%,%(
TEMPLATE = $${%LibTarget%_TEMPLATE}%if(%Lib%,%(
CONFIG += $${%LibTarget%_CONFIG})%)%)%)%

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${%LibTarget%%exe%_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${%LibTarget%%exe%_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${%LibTarget%%exe%_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${%LibTarget%%exe%_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${%LibTarget%%exe%_HEADERS} \
$${%LibTarget%%exe%_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${%LibTarget%%exe%_SOURCES} \

########################################################################
%else(%lib%,%(# FRAMEWORKS
#
FRAMEWORKS += \
$${%LibTarget%%exe%_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${%LibTarget%%exe%_LIBS} \
$${FRAMEWORKS} \

########################################################################
)%)%
%
%)%)%