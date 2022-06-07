%########################################################################
%# Copyright (c) 1988-2020 $organization$
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
%#   File: xos-app-console-framework-main-cpp.t
%#
%# Author: $author$
%#   Date: 5/18/2020
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(main)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(cpp)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-hpp-cpp.t)%%
%#include "xos/app/console/%framework%/main.hpp"

#if defined(XOS_CONSOLE_MAIN_MAIN)
#if !defined(XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE)
#define XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE
#endif /// !defined(XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE)
#endif /// defined(XOS_CONSOLE_MAIN_MAIN)

#if defined(XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE)
#if !defined(NO_XOS_CONSOLE_MAIN_MAIN)
#include "xos/console/main_main.cpp"
#endif /// !defined(NO_XOS_CONSOLE_MAIN_MAIN)
#endif /// defined(XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE)

namespace xos {
namespace app {
namespace console {
namespace %framework% {

/// class maint
#if defined(XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE)
static main the_main;
#endif /// defined(XOS_APP_CONSOLE_%FRAMEWORK%_MAIN_INSTANCE)

} /// namespace %framework%
} /// namespace console
} /// namespace app
} /// namespace xos
)%)%