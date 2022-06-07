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
%#   File: os-framework-target-Makefile.t
%#
%# Author: $author$
%#   Date: 12/28/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(Linux)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%if-no(%is_os%,,%(%os%)%)%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_os%,%(%tolower(%Os%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(%if-then(%else-then(%os%,os)%, specific)%)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_out,%(%else-then(%is_out%,%(%is_Out%)%)%)%,%
%out,%(%else-then(%if-no(%is_out%%Out%,,%(%out%)%)%,%(%if-no(%is_out%%Out%,,%(Lib)%)%)%)%)%,%
%Out,%(%else-then(%if-no(%is_out%%Out%,,%(%Out%)%)%,%(%if-no(%is_out%%Out%,,%(%out%)%)%)%)%)%,%
%OUT,%(%else-then(%OUT%,%(%toupper(%Out%)%)%)%)%,%
%out,%(%else-then(%_out%,%(%tolower(%Out%)%)%)%)%,%
%is_kmod,%(%else-then(%is_kmod%,%(%is_KMod%)%)%)%,%
%kmod,%(%else-then(%if-no(%is_kmod%%KMod%,,%(%kmod%)%)%,%(%if-no(%is_kmod%%KMod%,,%(%else(%equal(EXE,%OUT%)%%equal(SLIB,%OUT%)%%equal(LIB,%OUT%)%,Mod)%)%)%)%)%)%,%
%KMod,%(%else-then(%if-no(%is_kmod%%KMod%,,%(%KMod%)%)%,%(%if-no(%is_kmod%%KMod%,,%(%kmod%)%)%)%)%)%,%
%KMOD,%(%else-then(%KMOD%,%(%toupper(%KMod%)%)%)%)%,%
%kmod,%(%else-then(%_kmod%,%(%tolower(%KMod%)%)%)%)%,%
%is_slib,%(%else-then(%is_slib%,%(%is_SLib%)%)%)%,%
%slib,%(%else-then(%if-no(%is_slib%%SLib%,,%(%slib%)%)%,%(%if-no(%is_slib%%SLib%,,%(%else(%equal(KMOD,%OUT%)%%equal(EXE,%OUT%)%%equal(LIB,%OUT%)%,Lib)%)%)%)%)%)%,%
%SLib,%(%else-then(%if-no(%is_slib%%SLib%,,%(%SLib%)%)%,%(%if-no(%is_slib%%SLib%,,%(%slib%)%)%)%)%)%,%
%SLIB,%(%else-then(%SLIB%,%(%toupper(%SLib%)%)%)%)%,%
%slib,%(%else-then(%_slib%,%(%tolower(%SLib%)%)%)%)%,%
%is_lib,%(%else-then(%is_lib%,%(%is_Lib%)%)%)%,%
%lib,%(%else-then(%if-no(%is_lib%%Lib%,,%(%lib%)%)%,%(%if-no(%is_lib%%Lib%,,%(%else(%equal(KMOD,%OUT%)%%equal(EXE,%OUT%)%%equal(SLIB,%OUT%)%,Lib)%)%)%)%)%)%,%
%Lib,%(%else-then(%if-no(%is_lib%%Lib%,,%(%Lib%)%)%,%(%if-no(%is_lib%%Lib%,,%(%lib%)%)%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_lib%,%(%tolower(%Lib%)%)%)%)%,%
%is_output,%(%else-then(%is_output%,%(%is_Output%)%)%)%,%
%output,%(%else-then(%if-no(%is_output%%Output%,,%(%output%)%)%,%(%if-no(%is_output%%Output%,,%(%else(%Lib%%SLib%%KMod%,%(executable)%,%(%if(%KMod%,%(kernel module)%,%(%if(%SLib%,shared )%library)%)%)%)%)%)%)%)%)%,%
%Output,%(%else-then(%if-no(%is_output%%Output%,,%(%Output%)%)%,%(%if-no(%is_output%%Output%,,%(%output%)%)%)%)%)%,%
%OUTPUT,%(%else-then(%OUTPUT%,%(%toupper(%Output%)%)%)%)%,%
%output,%(%else-then(%_output%,%(%tolower(%Output%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%%Target%,,%(%target%)%)%,%(%if-no(%is_target%%Target%,,%(%Framework%)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%%Target%,,%(%Target%)%)%,%(%if-no(%is_target%%Target%,,%(%target%)%)%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_target%,%(%tolower(%Target%)%)%)%)%,%
%is_exe,%(%else-then(%is_exe%,%(%is_Exe%)%)%)%,%
%exe,%(%else-then(%if-no(%is_exe%%Exe%,,%(%exe%)%)%,%(%if-no(%is_exe%%Exe%,,%(%else(%Lib%%SLib%%KMod%,%(%if(%equal(%Target%,%Framework%)%,%(_exe)%)%)%)%)%)%)%)%)%,%
%Exe,%(%else-then(%if-no(%is_exe%%Exe%,,%(%Exe%)%)%,%(%if-no(%is_exe%%Exe%,,%(%exe%)%)%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_exe%,%(%tolower(%Exe%)%)%)%)%,%
%is_libtarget,%(%else-then(%is_libtarget%,%(%is_LibTarget%)%)%)%,%
%libtarget,%(%else-then(%if-no(%is_libtarget%,,%(%libtarget%)%)%,%(%if-no(%is_libtarget%,,%(%kmod%%slib%%lib%%Target%)%)%)%)%)%,%
%LibTarget,%(%else-then(%if-no(%is_libtarget%,,%(%LibTarget%)%)%,%(%if-no(%is_libtarget%,,%(%libtarget%)%)%)%)%)%,%
%LIBTARGET,%(%else-then(%LIBTARGET%,%(%toupper(%LibTarget%)%)%)%)%,%
%libtarget,%(%else-then(%_libtarget%,%(%tolower(%LibTarget%)%)%)%)%,%
%is_libtargetexe,%(%else-then(%is_libtargetexe%,%(%is_LibTargetExe%)%)%)%,%
%libtargetexe,%(%else-then(%if-no(%is_libtargetexe%,,%(%libtargetexe%)%)%,%(%if-no(%is_libtargetexe%,,%(%LibTarget%%exe%)%)%)%)%)%,%
%LibTargetExe,%(%else-then(%if-no(%is_libtargetexe%,,%(%LibTargetExe%)%)%,%(%if-no(%is_libtargetexe%,,%(%libtargetexe%)%)%)%)%)%,%
%LIBTARGETEXE,%(%else-then(%LIBTARGETEXE%,%(%toupper(%LibTargetExe%)%)%)%)%,%
%libtargetexe,%(%else-then(%_libtargetexe%,%(%tolower(%LibTargetExe%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-Makefile.t)%%
%
%if(%os%,%(OS = %os%
)%)%%
%PKG = ../../../../../..

BMK = build/Makefile/Gcc
MAK = projects/Makefile/Gcc
PRJ = projects/%if(%os%,${OS},os)%/Makefile/Gcc
SRC = %Source%

include $(PKG)/$(BMK)/Makedefines
include $(PKG)/$(MAK)/Makedefines
include $(PKG)/$(MAK)/Makefile
include $(PKG)/$(BMK)/Makefile
include $(PKG)/$(MAK)/%if(%KMod%%Lib%,lib,app)%/%LibTarget%/Makefile

#
# target
#
%OUT%TARGET = ${%LibTargetExe%_%OUT%TARGET}

%if(%KMOD%,,%(########################################################################

#
# user defines
#
USRDEFINES += \
${%LibTargetExe%_USRDEFINES}

#
# user includes
#
USRINCLUDES += \
${%LibTargetExe%_USRINCLUDES}

#
# user libdirs
#
USRLIBDIRS += \
${%LibTargetExe%_USRLIBDIRS}

#
# user c++ flags
#
USRCXXFLAGS += \
${%LibTargetExe%_USRCXXFLAGS}

#
# user c flags
#
USRCFLAGS += \
${%LibTargetExe%_USRCFLAGS}

#
# user ld flags
#
USRLDFLAGS += \
${%LibTargetExe%_USRLDFLAGS}

)%)%########################################################################

#
# %Output% C sources
#
%OUT%_C_SOURCES += \
${%LibTargetExe%_%OUT%_C_SOURCES}

%if(%KMOD%,,%(#
# %Output% C++ .cc sources
#
%OUT%_CC_SOURCES += \
${%LibTargetExe%_%OUT%_CC_SOURCES}

#
# %Output% C++ .cxx sources
#
%OUT%_CXX_SOURCES += \
${%LibTargetExe%_%OUT%_CXX_SOURCES}

#
# %Output% C++ .cpp sources
#
%OUT%_CPP_SOURCES += \
${%LibTargetExe%_%OUT%_CPP_SOURCES}

#
# %Output% Objective C .m sources
#
%OUT%_M_SOURCES += \
${%LibTargetExe%_%OUT%_M_SOURCES}

#
# %Output% Objective C++ .mm sources
#
%OUT%_MM_SOURCES += \
${%LibTargetExe%_%OUT%_MM_SOURCES}

)%)%%else(%KMod%%Lib%,%(%
%########################################################################

#
# %Output% libraries
#
LIBS += \
${%LibTargetExe%_LIBS}

)%)%########################################################################

#
# %Output% depends
#
#%OUT%DEP += \
#$(PKG)/$(BLD)/libsomelib \
#
%OUT%DEP += \

#
# %Output% depend dirs
#
#%OUT%DEP_DIRS += \
#../libsomelib
#
%OUT%DEP_DIRS += \

include $(PKG)/$(MAK)/Makerules

#
# %Output% depend rules
#
#$(PKG)/$(BLD)/libsomelib.a:
#	@(echo Building libsomelib.a ...;\
#	  pushd ../libsomelib;\
#	  ((make) || (exit 1));\
#	  popd)
#
%
%)%)%