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
%#   File: framework-target-Makefile.t
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
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(generic)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%%Framework%,,%(%framework%)%)%,%(%if-no(%is_framework%%Framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%%Framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%%Framework%,,%(%framework%)%)%)%)%)%,%
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
%is_source_framework,%(%else-then(%is_source_framework%,%(%is_Source_framework%)%)%)%,%
%source_framework,%(%else-then(%if-no(%is_source_framework%,,%(%source_framework%)%)%,%(%if-no(%is_source_framework%,,%(%Framework%)%)%)%)%)%,%
%Source_framework,%(%else-then(%if-no(%is_source_framework%,,%(%Source_framework%)%)%,%(%if-no(%is_source_framework%,,%(%source_framework%)%)%)%)%)%,%
%SOURCE_FRAMEWORK,%(%else-then(%SOURCE_FRAMEWORK%,%(%toupper(%Source_framework%)%)%)%)%,%
%source_framework,%(%else-then(%_source_framework%,%(%tolower(%Source_framework%)%)%)%)%,%
%is_target_namespace,%(%else-then(%is_target_namespace%,%(%is_Target_namespace%)%)%)%,%
%target_namespace,%(%else-then(%if-no(%is_target_namespace%,,%(%target_namespace%)%)%,%(%if-no(%is_target_namespace%,,%(%
%%else(%Lib%%SLib%%KMod%,%(%Source_framework%/app/console/%Framework%)%,%(%Source_framework%/lib/%Framework%)%)%)%)%)%)%)%,%
%Target_namespace,%(%else-then(%if-no(%is_target_namespace%,,%(%Target_namespace%)%)%,%(%if-no(%is_target_namespace%,,%(%target_namespace%)%)%)%)%)%,%
%TARGET_NAMESPACE,%(%else-then(%TARGET_NAMESPACE%,%(%toupper(%Target_namespace%)%)%)%)%,%
%target_namespace,%(%else-then(%_target_namespace%,%(%tolower(%Target_namespace%)%)%)%)%,%
%is_target_class,%(%else-then(%is_target_class%,%(%is_Target_class%)%)%)%,%
%target_class,%(%else-then(%if-no(%is_target_class%,,%(%target_class%)%)%,%(%if-no(%is_target_class%,,%(%
%%else(%Lib%%SLib%%KMod%,%(main)%,%(version)%)%)%)%)%)%)%,%
%Target_class,%(%else-then(%if-no(%is_target_class%,,%(%Target_class%)%)%,%(%if-no(%is_target_class%,,%(%target_class%)%)%)%)%)%,%
%TARGET_CLASS,%(%else-then(%TARGET_CLASS%,%(%toupper(%Target_class%)%)%)%)%,%
%target_class,%(%else-then(%_target_class%,%(%tolower(%Target_class%)%)%)%)%,%
%is_target_path,%(%else-then(%is_target_path%,%(%is_Target_path%)%)%)%,%
%target_path,%(%else-then(%if-no(%is_target_path%,,%(%target_path%)%)%,%(%if-no(%is_target_path%,,%(%parse(%Target_namespace%,::,,/)%)%)%)%)%)%,%
%Target_path,%(%else-then(%if-no(%is_target_path%,,%(%Target_path%)%)%,%(%if-no(%is_target_path%,,%(%target_path%)%)%)%)%)%,%
%TARGET_PATH,%(%else-then(%TARGET_PATH%,%(%toupper(%Target_path%)%)%)%)%,%
%target_path,%(%else-then(%_target_path%,%(%tolower(%Target_path%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-Makefile.t)%%
%
#
# target
#
%LibTargetExe%_%OUT%TARGET = %LibTarget%%then-if(%if(%LIB%,%(${LIBEXT})%)%%if(%SLIB%,%(${SLIBEXT})%)%%if(%KMOD%,%(${KMODEXT})%)%,.)%

%if(%KMOD%,,%(########################################################################

#
# user c++ flags
#
%LibTargetExe%_USRCXXFLAGS += \
${%Framework%_USRCXXFLAGS} \

#
# user defines
#
%LibTargetExe%_USRDEFINES += \
${%Framework%_USRDEFINES} \

#
# user includes
#
%LibTargetExe%_USRINCLUDES += \
${%Framework%_USRINCLUDES} \

#
# user libdirs
#
%LibTargetExe%_USRLIBDIRS += \
${%Framework%_USRLIBDIRS} \

)%)%########################################################################

%if(%KMOD%,%(#
# %Output% .c sources
#
#%LibTargetExe%_%OUT%_c_SOURCES += \
#${%FRAMEWORK%_SRC}/%Target_path%/%Target_class%.c \

)%,%(%parse(c;cc;cxx;cpp;m;mm,;,,,,%(#
# %Output% .%cpp% sources
#
#%LibTargetExe%_%OUT%_%toupper(%cpp%)%_SOURCES += \
#${%FRAMEWORK%_SRC}/%Target_path%/%Target_class%.%cpp% \

)%,cpp)%)%)%
########################################################################

%else(%KMod%%Lib%,%(#
# %Output% libraries
#
%LibTargetExe%_LIBS += \
${%Framework%_LIBS}
)%)%
%
%)%)%