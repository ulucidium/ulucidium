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
%#   File: build-framework-Makefile.t
%#
%# Author: $author$
%#   Date: 12/26/2021
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
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
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%%Depends%,,%(%depends%)%)%,%(%if-no(%is_depends%%Depends%,,%(depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%%Depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%%Depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-Makefile.t)%%
%%include(%Include_path%/build-framework-depends-Makefile.t)%%
%
########################################################################
# build %Framework%

# build %Framework% USRDEFINES
#
build_%Framework%_USRDEFINES += \
%parse(%Depends%,;,,,,%(${build_%Depends%_USRDEFINES} \
)%,Depends)%

# build %Framework% USRINCLUDES
#
build_%Framework%_USRINCLUDES += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_USRINCLUDES} \
)%,Depends)%

# build %Framework% USRCXXFLAGS
#
build_%Framework%_USRCXXFLAGS += \
%parse(%Depends%,;,,,,%(${build_%Depends%_USRCXXFLAGS} \
)%,Depends)%

# build %Framework% USRLIBDIRS
#
build_%Framework%_USRLIBDIRS += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_USRLIBDIRS} \
)%,Depends)%

# build %Framework% FRAMEWORKS
#
build_%Framework%_FRAMEWORKS += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_FRAMEWORKS} \
)%,Depends)%

# build %Framework% LIBS
#
build_%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_LIBS} \
)%,Depends)%%
%${build_%Framework%_FRAMEWORKS}

)%)%