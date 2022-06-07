%########################################################################
%# Copyright (c) 1988-2022 $organization$
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
%#   File: xos-app-console-what-main-cpp.t
%#
%# Author: $author$
%#   Date: 1/1/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(cpp)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(xos)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(app/console)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_application_ifdef,%(%else-then(%is_application_ifdef%,%(%is_Application_ifdef%)%)%)%,%
%application_ifdef,%(%else-then(%if-no(%is_application_ifdef%,,%(%application_ifdef%)%)%,%(%if-no(%is_application_ifdef%,,%(%parse(%APPLICATION%,/,,,,%(%application%_)%,application)%)%)%)%)%)%,%
%Application_ifdef,%(%else-then(%if-no(%is_application_ifdef%,,%(%Application_ifdef%)%)%,%(%if-no(%is_application_ifdef%,,%(%application_ifdef%)%)%)%)%)%,%
%APPLICATION_IFDEF,%(%else-then(%APPLICATION_IFDEF%,%(%toupper(%Application_ifdef%)%)%)%)%,%
%application_ifdef,%(%else-then(%_application_ifdef%,%(%tolower(%Application_ifdef%)%)%)%)%,%
%is_application_path,%(%else-then(%is_application_path%,%(%is_Application_path%)%)%)%,%
%application_path,%(%else-then(%if-no(%is_application_path%,,%(%application_path%)%)%,%(%if-no(%is_application_path%,,%(%parse(%Application%,/,,,,%(%namespace%/)%,namespace)%)%)%)%)%)%,%
%Application_path,%(%else-then(%if-no(%is_application_path%,,%(%Application_path%)%)%,%(%if-no(%is_application_path%,,%(%application_path%)%)%)%)%)%,%
%APPLICATION_PATH,%(%else-then(%APPLICATION_PATH%,%(%toupper(%Application_path%)%)%)%)%,%
%application_path,%(%else-then(%_application_path%,%(%tolower(%Application_path%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(what)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(%What%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_namespace_ifdef,%(%else-then(%is_namespace_ifdef%,%(%is_Namespace_ifdef%)%)%)%,%
%namespace_ifdef,%(%else-then(%if-no(%is_namespace_ifdef%,,%(%namespace_ifdef%)%)%,%(%if-no(%is_namespace_ifdef%,,%(%parse(%NAMESPACE%,/,,,,%(%namespace%_)%,namespace)%)%)%)%)%)%,%
%Namespace_ifdef,%(%else-then(%if-no(%is_namespace_ifdef%,,%(%Namespace_ifdef%)%)%,%(%if-no(%is_namespace_ifdef%,,%(%namespace_ifdef%)%)%)%)%)%,%
%NAMESPACE_IFDEF,%(%else-then(%NAMESPACE_IFDEF%,%(%toupper(%Namespace_ifdef%)%)%)%)%,%
%namespace_ifdef,%(%else-then(%_namespace_ifdef%,%(%tolower(%Namespace_ifdef%)%)%)%)%,%
%is_namespace_path,%(%else-then(%is_namespace_path%,%(%is_Namespace_path%)%)%)%,%
%namespace_path,%(%else-then(%if-no(%is_namespace_path%,,%(%namespace_path%)%)%,%(%if-no(%is_namespace_path%,,%(%parse(%Namespace%,/,,,,%(%namespace%/)%,namespace)%)%)%)%)%)%,%
%Namespace_path,%(%else-then(%if-no(%is_namespace_path%,,%(%Namespace_path%)%)%,%(%if-no(%is_namespace_path%,,%(%namespace_path%)%)%)%)%)%,%
%NAMESPACE_PATH,%(%else-then(%NAMESPACE_PATH%,%(%toupper(%Namespace_path%)%)%)%)%,%
%namespace_path,%(%else-then(%_namespace_path%,%(%tolower(%Namespace_path%)%)%)%)%,%
%is_framework_application_ifdef,%(%else-then(%is_framework_application_ifdef%,%(%is_Framework_application_Ifdef%)%)%)%,%
%framework_application_ifdef,%(%else-then(%if-no(%is_framework_application_ifdef%,,%(%framework_application_ifdef%)%)%,%(%if-no(%is_framework_application_ifdef%,,%(%Framework%_%Application_ifdef%%Namespace_ifdef%)%)%)%)%)%,%
%Framework_application_Ifdef,%(%else-then(%if-no(%is_framework_application_ifdef%,,%(%Framework_application_Ifdef%)%)%,%(%if-no(%is_framework_application_ifdef%,,%(%framework_application_ifdef%)%)%)%)%)%,%
%FRAMEWORK_APPLICATION_IFDEF,%(%else-then(%FRAMEWORK_APPLICATION_IFDEF%,%(%toupper(%Framework_application_Ifdef%)%)%)%)%,%
%framework_application_ifdef,%(%else-then(%_framework_application_ifdef%,%(%tolower(%Framework_application_Ifdef%)%)%)%)%,%
%is_framework_application_path,%(%else-then(%is_framework_application_path%,%(%is_Framework_application_path%)%)%)%,%
%framework_application_path,%(%else-then(%if-no(%is_framework_application_path%,,%(%framework_application_path%)%)%,%(%if-no(%is_framework_application_path%,,%(%Framework%/%Application_path%%Namespace_path%)%)%)%)%)%,%
%Framework_application_path,%(%else-then(%if-no(%is_framework_application_path%,,%(%Framework_application_path%)%)%,%(%if-no(%is_framework_application_path%,,%(%framework_application_path%)%)%)%)%)%,%
%FRAMEWORK_APPLICATION_PATH,%(%else-then(%FRAMEWORK_APPLICATION_PATH%,%(%toupper(%Framework_application_path%)%)%)%)%,%
%is_framework_application_namespace,%(%else-then(%is_framework_application_namespace%,%(%is_Framework_application_namespace%)%)%)%,%
%framework_application_namespace,%(%else-then(%if-no(%is_framework_application_namespace%,,%(%framework_application_namespace%)%)%,%(%if-no(%is_framework_application_namespace%,,%(%parse(%Framework%/%Application_path%%Namespace_path%,/,,,,%(%Namespace%::)%,Namespace)%)%)%)%)%)%,%
%Framework_application_namespace,%(%else-then(%if-no(%is_framework_application_namespace%,,%(%Framework_application_namespace%)%)%,%(%if-no(%is_framework_application_namespace%,,%(%framework_application_namespace%)%)%)%)%)%,%
%FRAMEWORK_APPLICATION_NAMESPACE,%(%else-then(%FRAMEWORK_APPLICATION_NAMESPACE%,%(%toupper(%Framework_application_namespace%)%)%)%)%,%
%framework_application_namespace,%(%else-then(%_framework_application_namespace%,%(%tolower(%Framework_application_namespace%)%)%)%)%,%
%framework_application_path,%(%else-then(%_framework_application_path%,%(%tolower(%Framework_application_path%)%)%)%)%,%
%is_main,%(%else-then(%is_main%,%(%is_Main%)%)%)%,%
%main,%(%else-then(%if-no(%is_main%,,%(%main%)%)%,%(%if-no(%is_main%,,%(main)%)%)%)%)%,%
%Main,%(%else-then(%if-no(%is_main%,,%(%Main%)%)%,%(%if-no(%is_main%,,%(%main%)%)%)%)%)%,%
%MAIN,%(%else-then(%MAIN%,%(%toupper(%Main%)%)%)%)%,%
%main,%(%else-then(%_main%,%(%tolower(%Main%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%Main%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-hpp-cpp.t)%%
%#include "%Framework_application_path%%Main%.hpp"

#if defined(%FRAMEWORK%_CONSOLE_MAIN_MAIN)
#include "%Framework%/console/main_main.cpp"
#if !defined(%FRAMEWORK_APPLICATION_IFDEF%%MAIN%_INSTANCE)
#define %FRAMEWORK_APPLICATION_IFDEF%%MAIN%_INSTANCE
#endif /// !defined(%FRAMEWORK_APPLICATION_IFDEF%%MAIN%_NSTANCE)
#endif /// defined(%FRAMEWORK%_CONSOLE_MAIN_MAIN)

#if !defined(%FRAMEWORK_APPLICATION_IFDEF%%MAIN%_INSTANCE)
///#define %FRAMEWORK_APPLICATION_IFDEF%%MAIN%_INSTANCE
#endif /// !defined(%FRAMEWORK_APPLICATION_IFDEF%%MAIN%_NSTANCE)

namespace %Framework% {%parse(%Application%,/,,,,%(
namespace %namespace% {)%,namespace)%%parse(%Namespace%,/,,,,%(
namespace %namespace% {)%,namespace)%

/// class %Main%
#if defined(%FRAMEWORK_APPLICATION_IFDEF%%MAIN%_INSTANCE)
static %Main% the_%Main%;
#endif /// defined(%FRAMEWORK_APPLICATION_IFDEF%%MAIN%_INSTANCE)

%reverse-parse(%Namespace%,/,,,,%(} /// namespace %namespace%
)%,namespace)%%reverse-parse(%Application%,/,,,,%(} /// namespace %namespace%
)%,namespace)%} /// namespace %Framework%
%
%)%)%