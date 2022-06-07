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
%#   File: xos-app-console-what-main-options-hpp.t
%#
%# Author: $author$
%#   Date: 1/3/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_xos,%(%else-then(%is_xos%,%(%is_Xos%)%)%)%,%
%xos,%(%else-then(%if-no(%is_xos%,,%(%xos%)%)%,%(%if-no(%is_xos%,,%(xos)%)%)%)%)%,%
%Xos,%(%else-then(%if-no(%is_xos%,,%(%Xos%)%)%,%(%if-no(%is_xos%,,%(%xos%)%)%)%)%)%,%
%XOS,%(%else-then(%XOS%,%(%toupper(%Xos%)%)%)%)%,%
%xos,%(%else-then(%_xos%,%(%tolower(%Xos%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%Xos%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_app,%(%else-then(%is_app%,%(%is_App%)%)%)%,%
%app,%(%else-then(%if-no(%is_app%,,%(%app%)%)%,%(%if-no(%is_app%,,%(app)%)%)%)%)%,%
%App,%(%else-then(%if-no(%is_app%,,%(%App%)%)%,%(%if-no(%is_app%,,%(%app%)%)%)%)%)%,%
%APP,%(%else-then(%APP%,%(%toupper(%App%)%)%)%)%,%
%app,%(%else-then(%_app%,%(%tolower(%App%)%)%)%)%,%
%is_console,%(%else-then(%is_console%,%(%is_Console%)%)%)%,%
%console,%(%else-then(%if-no(%is_console%,,%(%console%)%)%,%(%if-no(%is_console%,,%(console)%)%)%)%)%,%
%Console,%(%else-then(%if-no(%is_console%,,%(%Console%)%)%,%(%if-no(%is_console%,,%(%console%)%)%)%)%)%,%
%CONSOLE,%(%else-then(%CONSOLE%,%(%toupper(%Console%)%)%)%)%,%
%console,%(%else-then(%_console%,%(%tolower(%Console%)%)%)%)%,%
%is_main,%(%else-then(%is_main%,%(%is_Main%)%)%)%,%
%main,%(%else-then(%if-no(%is_main%,,%(%main%)%)%,%(%if-no(%is_main%,,%(main)%)%)%)%)%,%
%Main,%(%else-then(%if-no(%is_main%,,%(%Main%)%)%,%(%if-no(%is_main%,,%(%main%)%)%)%)%)%,%
%MAIN,%(%else-then(%MAIN%,%(%toupper(%Main%)%)%)%)%,%
%main,%(%else-then(%_main%,%(%tolower(%Main%)%)%)%)%,%
%is_class,%(%else-then(%is_class%,%(%is_Class%)%)%)%,%
%class,%(%else-then(%if-no(%is_class%,,%(%class%)%)%,%(%if-no(%is_class%,,%(%Main%)%)%)%)%)%,%
%Class,%(%else-then(%if-no(%is_class%,,%(%Class%)%)%,%(%if-no(%is_class%,,%(%class%)%)%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_class%,%(%tolower(%Class%)%)%)%)%,%
%is_main_class,%(%else-then(%is_main_class%,%(%is_Main_class%)%)%)%,%
%main_class,%(%else-then(%if-no(%is_main_class%,,%(%main_class%)%)%,%(%if-no(%is_main_class%,,%(%Class%)%)%)%)%)%,%
%Main_class,%(%else-then(%if-no(%is_main_class%,,%(%Main_class%)%)%,%(%if-no(%is_main_class%,,%(%main_class%)%)%)%)%)%,%
%MAIN_CLASS,%(%else-then(%MAIN_CLASS%,%(%toupper(%Main_class%)%)%)%)%,%
%main_class,%(%else-then(%_main_class%,%(%tolower(%Main_class%)%)%)%)%,%
%is_extends,%(%else-then(%is_extends%,%(%is_Extends%)%)%)%,%
%extends,%(%else-then(%if-no(%is_extends%,,%(%extends%)%)%,%(%if-no(%is_extends%,,%(%Main%)%)%)%)%)%,%
%Extends,%(%else-then(%if-no(%is_extends%,,%(%Extends%)%)%,%(%if-no(%is_extends%,,%(%extends%)%)%)%)%)%,%
%EXTENDS,%(%else-then(%EXTENDS%,%(%toupper(%Extends%)%)%)%)%,%
%extends,%(%else-then(%_extends%,%(%tolower(%Extends%)%)%)%)%,%
%is_implements,%(%else-then(%is_implements%,%(%is_Implements%)%)%)%,%
%implements,%(%else-then(%if-no(%is_implements%,,%(%implements%)%)%,%(%if-no(%is_implements%,,%(typename %Extends%::implements)%)%)%)%)%,%
%Implements,%(%else-then(%if-no(%is_implements%,,%(%Implements%)%)%,%(%if-no(%is_implements%,,%(%implements%)%)%)%)%)%,%
%IMPLEMENTS,%(%else-then(%IMPLEMENTS%,%(%toupper(%Implements%)%)%)%)%,%
%implements,%(%else-then(%_implements%,%(%tolower(%Implements%)%)%)%)%,%
%is_on,%(%else-then(%is_on%,%(%is_On%)%)%)%,%
%on,%(%else-then(%if-no(%is_on%,,%(%on%)%)%,%(%if-no(%is_on%,,%(on)%)%)%)%)%,%
%On,%(%else-then(%if-no(%is_on%,,%(%On%)%)%,%(%if-no(%is_on%,,%(%on%)%)%)%)%)%,%
%ON,%(%else-then(%ON%,%(%toupper(%On%)%)%)%)%,%
%on,%(%else-then(%_on%,%(%tolower(%On%)%)%)%)%,%
%is_option,%(%else-then(%is_option%,%(%is_Option%)%)%)%,%
%option,%(%else-then(%if-no(%is_option%,,%(%option%)%)%,%(%if-no(%is_option%,,%(option)%)%)%)%)%,%
%Option,%(%else-then(%if-no(%is_option%,,%(%Option%)%)%,%(%if-no(%is_option%,,%(%option%)%)%)%)%)%,%
%OPTION,%(%else-then(%OPTION%,%(%toupper(%Option%)%)%)%)%,%
%option,%(%else-then(%_option%,%(%tolower(%Option%)%)%)%)%,%
%is_on_,%(%else-then(%is_on_%,%(%is_On_%)%)%)%,%
%on_,%(%else-then(%if-no(%is_on_%,,%(%on_%)%)%,%(%if-no(%is_on_%,,%(%On%_)%)%)%)%)%,%
%On_,%(%else-then(%if-no(%is_on_%,,%(%On_%)%)%,%(%if-no(%is_on_%,,%(%on_%)%)%)%)%)%,%
%ON_,%(%else-then(%ON_%,%(%toupper(%On_%)%)%)%)%,%
%on_,%(%else-then(%_on_%,%(%tolower(%On_%)%)%)%)%,%
%is_option_,%(%else-then(%is_option_%,%(%is_Option_%)%)%)%,%
%option_,%(%else-then(%if-no(%is_option_%,,%(%option_%)%)%,%(%if-no(%is_option_%,,%(%Option%_)%)%)%)%)%,%
%Option_,%(%else-then(%if-no(%is_option_%,,%(%Option_%)%)%,%(%if-no(%is_option_%,,%(%option_%)%)%)%)%)%,%
%OPTION_,%(%else-then(%OPTION_%,%(%toupper(%Option_%)%)%)%)%,%
%option_,%(%else-then(%_option_%,%(%tolower(%Option_%)%)%)%)%,%
%is_onoption,%(%else-then(%is_onoption%,%(%is_OnOption%)%)%)%,%
%onoption,%(%else-then(%if-no(%is_onoption%,,%(%onoption%)%)%,%(%if-no(%is_onoption%,,%(%On_%%Option%)%)%)%)%)%,%
%OnOption,%(%else-then(%if-no(%is_onoption%,,%(%OnOption%)%)%,%(%if-no(%is_onoption%,,%(%onoption%)%)%)%)%)%,%
%ONOPTION,%(%else-then(%ONOPTION%,%(%toupper(%OnOption%)%)%)%)%,%
%onoption,%(%else-then(%_onoption%,%(%tolower(%OnOption%)%)%)%)%,%
%is_usage,%(%else-then(%is_usage%,%(%is_Usage%)%)%)%,%
%usage,%(%else-then(%if-no(%is_usage%,,%(%usage%)%)%,%(%if-no(%is_usage%,,%(usage)%)%)%)%)%,%
%Usage,%(%else-then(%if-no(%is_usage%,,%(%Usage%)%)%,%(%if-no(%is_usage%,,%(%usage%)%)%)%)%)%,%
%USAGE,%(%else-then(%USAGE%,%(%toupper(%Usage%)%)%)%)%,%
%usage,%(%else-then(%_usage%,%(%tolower(%Usage%)%)%)%)%,%
%is_isusage,%(%else-then(%is_isusage%,%(%is_IsUsage%)%)%)%,%
%isusage,%(%else-then(%if-no(%is_isusage%,,%(%isusage%)%)%,%(%if-no(%is_isusage%,,%(no)%)%)%)%)%,%
%IsUsage,%(%else-then(%if-no(%is_isusage%,,%(%IsUsage%)%)%,%(%if-no(%is_isusage%,,%(%isusage%)%)%)%)%)%,%
%ISUSAGE,%(%else-then(%ISUSAGE%,%(%toupper(%IsUsage%)%)%)%)%,%
%isusage,%(%else-then(%_isusage%,%(%tolower(%IsUsage%)%)%)%)%,%
%is_isusages,%(%else-then(%is_isusages%,%(%is_IsUsages%)%)%)%,%
%isusages,%(%else-then(%if-no(%is_isusages%,,%(%isusages%)%)%,%(%if-no(%is_isusages%,,%(no)%)%)%)%)%,%
%IsUsages,%(%else-then(%if-no(%is_isusages%,,%(%IsUsages%)%)%,%(%if-no(%is_isusages%,,%(%isusages%)%)%)%)%)%,%
%ISUSAGES,%(%else-then(%ISUSAGES%,%(%toupper(%IsUsages%)%)%)%)%,%
%isusages,%(%else-then(%_isusages%,%(%tolower(%IsUsages%)%)%)%)%,%
%is_optionusage,%(%else-then(%is_optionusage%,%(%is_OptionUsage%)%)%)%,%
%optionusage,%(%else-then(%if-no(%is_optionusage%,,%(%optionusage%)%)%,%(%if-no(%is_optionusage%,,%(%Option_%%Usage%)%)%)%)%)%,%
%OptionUsage,%(%else-then(%if-no(%is_optionusage%,,%(%OptionUsage%)%)%,%(%if-no(%is_optionusage%,,%(%optionusage%)%)%)%)%)%,%
%OPTIONUSAGE,%(%else-then(%OPTIONUSAGE%,%(%toupper(%OptionUsage%)%)%)%)%,%
%optionusage,%(%else-then(%_optionusage%,%(%tolower(%OptionUsage%)%)%)%)%,%
%is_options,%(%else-then(%is_options%,%(%is_Options%)%)%)%,%
%options,%(%else-then(%if-no(%is_options%,,%(%options%)%)%,%(%if-no(%is_options%,,%(%Option%s)%)%)%)%)%,%
%Options,%(%else-then(%if-no(%is_options%,,%(%Options%)%)%,%(%if-no(%is_options%,,%(%options%)%)%)%)%)%,%
%OPTIONS,%(%else-then(%OPTIONS%,%(%toupper(%Options%)%)%)%)%,%
%options,%(%else-then(%_options%,%(%tolower(%Options%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(application)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_extends_application,%(%else-then(%is_extends_application%,%(%is_Extends_Application%)%)%)%,%
%extends_application,%(%else-then(%if-no(%is_extends_application%,,%(%extends_application%)%)%,%(%if-no(%is_extends_application%,,%(%()%)%)%)%)%)%,%
%Extends_Application,%(%else-then(%if-no(%is_extends_application%,,%(%Extends_Application%)%)%,%(%if-no(%is_extends_application%,,%(%extends_application%)%)%)%)%)%,%
%EXTENDS_APPLICATION,%(%else-then(%EXTENDS_APPLICATION%,%(%toupper(%Extends_Application%)%)%)%)%,%
%extends_application,%(%else-then(%_extends_application%,%(%tolower(%Extends_Application%)%)%)%)%,%
%is_module,%(%else-then(%is_module%,%(%is_Module%)%)%)%,%
%module,%(%else-then(%if-no(%is_module%,,%(%module%)%)%,%(%if-no(%is_module%,,%(%if-then(%Framework%,/)%%if-then(%App%,/)%%if-then(%Console%,/)%%if-then(%parse(%Application%,::,,/)%,)%)%)%)%)%)%,%
%Module,%(%else-then(%if-no(%is_module%,,%(%Module%)%)%,%(%if-no(%is_module%,,%(%module%)%)%)%)%)%,%
%MODULE,%(%else-then(%MODULE%,%(%toupper(%Module%)%)%)%)%,%
%module,%(%else-then(%_module%,%(%tolower(%Module%)%)%)%)%,%
%is_class_implements,%(%else-then(%is_class_implements%,%(%is_Class_Implements%)%)%)%,%
%class_implements,%(%else-then(%if-no(%is_class_implements%,,%(%class_implements%)%)%,%(%if-no(%is_class_implements%,,%(%if-then(%Xos%,/)%%if-then(%App%,/)%%if-then(%Console%,/)%%if-then(%Extends_Application%,)%)%)%)%)%)%,%
%Class_Implements,%(%else-then(%if-no(%is_class_implements%,,%(%Class_Implements%)%)%,%(%if-no(%is_class_implements%,,%(%class_implements%)%)%)%)%)%,%
%CLASS_IMPLEMENTS,%(%else-then(%CLASS_IMPLEMENTS%,%(%toupper(%Class_Implements%)%)%)%)%,%
%class_implements,%(%else-then(%_class_implements%,%(%tolower(%Class_Implements%)%)%)%)%,%
%is_extends_path,%(%else-then(%is_extends_path%,%(%is_Extends_path%)%)%)%,%
%extends_path,%(%else-then(%if-no(%is_extends_path%,,%(%extends_path%)%)%,%(%if-no(%is_extends_path%,,%(%Class_Implements%)%)%)%)%)%,%
%Extends_path,%(%else-then(%if-no(%is_extends_path%,,%(%Extends_path%)%)%,%(%if-no(%is_extends_path%,,%(%extends_path%)%)%)%)%)%,%
%EXTENDS_PATH,%(%else-then(%EXTENDS_PATH%,%(%toupper(%Extends_path%)%)%)%)%,%
%extends_path,%(%else-then(%_extends_path%,%(%tolower(%Extends_path%)%)%)%)%,%
%is_extends_module,%(%else-then(%is_extends_module%,%(%is_Extends_Module%)%)%)%,%
%extends_module,%(%else-then(%if-no(%is_extends_module%,,%(%extends_module%)%)%,%(%if-no(%is_extends_module%,,%(%parse(%Extends_path%,::,,/)%)%)%)%)%)%,%
%Extends_Module,%(%else-then(%if-no(%is_extends_module%,,%(%Extends_Module%)%)%,%(%if-no(%is_extends_module%,,%(%extends_module%)%)%)%)%)%,%
%EXTENDS_MODULE,%(%else-then(%EXTENDS_MODULE%,%(%toupper(%Extends_Module%)%)%)%)%,%
%extends_module,%(%else-then(%_extends_module%,%(%tolower(%Extends_Module%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(%Module%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_extends_namespace,%(%else-then(%is_extends_namespace%,%(%is_Extends_Namespace%)%)%)%,%
%extends_namespace,%(%else-then(%if-no(%is_extends_namespace%,,%(%extends_namespace%)%)%,%(%if-no(%is_extends_namespace%,,%(%Extends_Module%)%)%)%)%)%,%
%Extends_Namespace,%(%else-then(%if-no(%is_extends_namespace%,,%(%Extends_Namespace%)%)%,%(%if-no(%is_extends_namespace%,,%(%extends_namespace%)%)%)%)%)%,%
%EXTENDS_NAMESPACE,%(%else-then(%EXTENDS_NAMESPACE%,%(%toupper(%Extends_Namespace%)%)%)%)%,%
%extends_namespace,%(%else-then(%_extends_namespace%,%(%tolower(%Extends_Namespace%)%)%)%)%,%
%is_ifndef,%(%else-then(%is_ifndef%,%(%is_Ifndef%)%)%)%,%
%ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%parse(%Namespace%,/,,_,,%(%Namespace%)%,Namespace)%)%)%)%)%)%,%
%Ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%Ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%ifndef%)%)%)%)%)%,%
%IFNDEF,%(%else-then(%IFNDEF%,%(%toupper(%Ifndef%)%)%)%)%,%
%ifndef,%(%else-then(%_ifndef%,%(%tolower(%Ifndef%)%)%)%)%,%
%is_extends_ifndef,%(%else-then(%is_extends_ifndef%,%(%is_Extends_Ifndef%)%)%)%,%
%extends_ifndef,%(%else-then(%if-no(%is_extends_ifndef%,,%(%extends_ifndef%)%)%,%(%if-no(%is_extends_ifndef%,,%(%parse(%Extends_Namespace%,/,,_,,%(%Namespace%)%,Namespace)%)%)%)%)%)%,%
%Extends_Ifndef,%(%else-then(%if-no(%is_extends_ifndef%,,%(%Extends_Ifndef%)%)%,%(%if-no(%is_extends_ifndef%,,%(%extends_ifndef%)%)%)%)%)%,%
%EXTENDS_IFNDEF,%(%else-then(%EXTENDS_IFNDEF%,%(%toupper(%Extends_Ifndef%)%)%)%)%,%
%extends_ifndef,%(%else-then(%_extends_ifndef%,%(%tolower(%Extends_Ifndef%)%)%)%)%,%
%is_class_template_parameters,%(%else-then(%is_class_template_parameters%,%(%is_class_template_parameters%)%)%)%,%
%class_template_parameters,%(%else-then(%if-no(%is_class_template_parameters%,,%(%class_template_parameters%)%)%,%(%if-no(%is_class_template_parameters%,,%(s:long=name)%)%)%)%)%,%
%class_template_parameters,%(%else-then(%if-no(%is_class_template_parameters%,,%(%class_template_parameters%)%)%,%(%if-no(%is_class_template_parameters%,,%(%class_template_parameters%)%)%)%)%)%,%
%CLASS_TEMPLATE_PARAMETERS,%(%else-then(%CLASS_TEMPLATE_PARAMETERS%,%(%toupper(%class_template_parameters%)%)%)%)%,%
%class_template_parameters,%(%else-then(%_class_template_parameters%,%(%tolower(%class_template_parameters%)%)%)%)%,%
%is_parameters,%(%else-then(%is_parameters%,%(%is_Parameters%)%)%)%,%
%parameters,%(%else-then(%if-no(%is_parameters%,,%(%parameters%)%)%,%(%if-no(%is_parameters%,,%(%class_template_parameters%)%)%)%)%)%,%
%Parameters,%(%else-then(%if-no(%is_parameters%,,%(%Parameters%)%)%,%(%if-no(%is_parameters%,,%(%parameters%)%)%)%)%)%,%
%PARAMETERS,%(%else-then(%PARAMETERS%,%(%toupper(%Parameters%)%)%)%)%,%
%parameters,%(%else-then(%_parameters%,%(%tolower(%Parameters%)%)%)%)%,%
%is_required,%(%else-then(%is_required%,%(%is_Required%)%)%)%,%
%required,%(%else-then(%if-no(%is_required%,,%(%required%)%)%,%(%if-no(%is_required%,,%(None)%)%)%)%)%,%
%Required,%(%else-then(%if-no(%is_required%,,%(%Required%)%)%,%(%if-no(%is_required%,,%(%required%)%)%)%)%)%,%
%REQUIRED,%(%else-then(%REQUIRED%,%(%toupper(%Required%)%)%)%)%,%
%required,%(%else-then(%_required%,%(%tolower(%Required%)%)%)%)%,%
%is_none,%(%else-then(%is_none%,%(%is_None%)%)%)%,%
%none,%(%else-then(%if-no(%is_none%,,%(%none%)%)%,%(%if-no(%is_none%,,%(%equal(none,%required%)%)%)%)%)%)%,%
%None,%(%else-then(%if-no(%is_none%,,%(%None%)%)%,%(%if-no(%is_none%,,%(%none%)%)%)%)%)%,%
%NONE,%(%else-then(%NONE%,%(%toupper(%None%)%)%)%)%,%
%none,%(%else-then(%_none%,%(%tolower(%None%)%)%)%)%,%
%is_optional,%(%else-then(%is_optional%,%(%is_Optional%)%)%)%,%
%optional,%(%else-then(%if-no(%is_optional%,,%(%optional%)%)%,%(%if-no(%is_optional%,,%(%equal(optional,%required%)%)%)%)%)%)%,%
%Optional,%(%else-then(%if-no(%is_optional%,,%(%Optional%)%)%,%(%if-no(%is_optional%,,%(%optional%)%)%)%)%)%,%
%OPTIONAL,%(%else-then(%OPTIONAL%,%(%toupper(%Optional%)%)%)%)%,%
%optional,%(%else-then(%_optional%,%(%tolower(%Optional%)%)%)%)%,%
%is_long,%(%else-then(%is_long%,%(%is_Long%)%)%)%,%
%long,%(%else-then(%if-no(%is_long%,,%(%long%)%)%,%(%if-no(%is_long%,,%()%)%)%)%)%,%
%Long,%(%else-then(%if-no(%is_long%,,%(%Long%)%)%,%(%if-no(%is_long%,,%(%long%)%)%)%)%)%,%
%LONG,%(%else-then(%LONG%,%(%toupper(%Long%)%)%)%)%,%
%long,%(%else-then(%_long%,%(%tolower(%Long%)%)%)%)%,%
%is_short,%(%else-then(%is_short%,%(%is_Short%)%)%)%,%
%short,%(%else-then(%if-no(%is_short%,,%(%short%)%)%,%(%if-no(%is_short%,,%()%)%)%)%)%,%
%Short,%(%else-then(%if-no(%is_short%,,%(%Short%)%)%,%(%if-no(%is_short%,,%(%short%)%)%)%)%)%,%
%SHORT,%(%else-then(%SHORT%,%(%toupper(%Short%)%)%)%)%,%
%short,%(%else-then(%_short%,%(%tolower(%Short%)%)%)%)%,%
%is_char,%(%else-then(%is_char%,%(%is_Char%)%)%)%,%
%char,%(%else-then(%if-no(%is_char%,,%(%char%)%)%,%(%if-no(%is_char%,,%()%)%)%)%)%,%
%Char,%(%else-then(%if-no(%is_char%,,%(%Char%)%)%,%(%if-no(%is_char%,,%(%char%)%)%)%)%)%,%
%CHAR,%(%else-then(%CHAR%,%(%toupper(%Char%)%)%)%)%,%
%char,%(%else-then(%_char%,%(%tolower(%Char%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%Long%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Main_class%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(hpp)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%if-then(%Base%,.)%%Extension%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_file_ifndef_define,%(%else-then(%is_file_ifndef_define%,%(%is_File_ifndef_define%)%)%)%,%
%file_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%if-then(%IFNDEF%,_)%%if-then(%MAIN_CLASS%,_)%%EXTENSION%)%)%)%)%)%,%
%File_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%File_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE,%(%else-then(%FILE_IFNDEF_DEFINE%,%(%toupper(%File_ifndef_define%)%)%)%)%,%
%file_ifndef_define,%(%else-then(%_file_ifndef_define%,%(%tolower(%File_ifndef_define%)%)%)%)%,%
%File_ifndef_begin,%(%else-then(%File_ifndef_begin%,%(#ifndef %File_ifndef_define%
#define %File_ifndef_define%
)%)%)%,%
%FILE_IFNDEF_BEGIN,%(%else-then(%FILE_IFNDEF_BEGIN%,%(%toupper(%File_ifndef_begin%)%)%)%)%,%
%file_ifndef_begin,%(%else-then(%_File_ifndef_begin%,%(%tolower(%File_ifndef_begin%)%)%)%)%,%
%File_ifndef_end,%(%else-then(%File_ifndef_end%,%(
#endif /// %File_ifndef_define%
)%)%)%,%
%is_namespace_begin,%(%else-then(%is_namespace_begin%,%(%is_Namespace_begin%)%)%)%,%
%namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%
%%(
%parse(%Namespace%,/,,,,%(namespace %ns% {
)%,ns)%)%)%)%)%)%,%
%Namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%Namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%)%)%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%is_namespace_end,%(%else-then(%is_namespace_end%,%(%is_Namespace_end%)%)%)%,%
%namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%
%%(
%reverse-parse(%Namespace%,/,,,,%(} /// namespace %ns%
)%,ns)%)%)%)%)%)%,%
%Namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%Namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%)%)%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%%(%
%%if-no(%is_file%,,%(%
%%if-no(%is_main_class%,,%(%
%%include(%Include_path%/file-hpp.t)%%
%%File_ifndef_begin%%
%)%)%%
%)%)%%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_short,%(%else-then(%is_short%,%(%is_Short%)%)%)%,%
%short,%(%else-then(%if-no(%is_short%,,%(%short%)%)%,%(%if-no(%is_short%,,%(%else-then(%left(%Parameter%,:)%,%(%left(%Parameter%,=)%)%)%)%)%)%)%)%,%
%Short,%(%else-then(%if-no(%is_short%,,%(%Short%)%)%,%(%if-no(%is_short%,,%(%short%)%)%)%)%)%,%
%SHORT,%(%else-then(%SHORT%,%(%toupper(%Short%)%)%)%)%,%
%short,%(%else-then(%_short%,%(%tolower(%Short%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_long,%(%else-then(%is_long%,%(%is_Long%)%)%)%,%
%long,%(%else-then(%if-no(%is_long%,,%(%long%)%)%,%(%if-no(%is_long%,,%(%
%%else-then(%right(%left(%Parameter%,=)%,:)%,%(%replace(%(_)%,%(-)%,%Name%)%)%)%%
%)%)%)%)%)%,%
%Long,%(%else-then(%if-no(%is_long%,,%(%Long%)%)%,%(%if-no(%is_long%,,%(%long%)%)%)%)%)%,%
%LONG,%(%else-then(%LONG%,%(%toupper(%Long%)%)%)%)%,%
%long,%(%else-then(%_long%,%(%tolower(%Long%)%)%)%)%,%
%is_char,%(%else-then(%is_char%,%(%is_Char%)%)%)%,%
%char,%(%else-then(%if-no(%is_char%,,%(%char%)%)%,%(%if-no(%is_char%,,%(%Short%)%)%)%)%)%,%
%Char,%(%else-then(%if-no(%is_char%,,%(%Char%)%)%,%(%if-no(%is_char%,,%(%char%)%)%)%)%)%,%
%CHAR,%(%else-then(%CHAR%,%(%toupper(%Char%)%)%)%)%,%
%char,%(%else-then(%_char%,%(%tolower(%Char%)%)%)%)%,%
%%(
#define %IFNDEF%_%CLASS%_%NAME%_OPT "%Long%"
#define %IFNDEF%_%CLASS%_%NAME%_OPTARG_REQUIRED MAIN_OPT_ARGUMENT_%REQUIRED%
#define %IFNDEF%_%CLASS%_%NAME%_OPTARG_RESULT 0
#define %IFNDEF%_%CLASS%_%NAME%_OPTARG ""
#define %IFNDEF%_%CLASS%_%NAME%_OPTUSE ""
#define %IFNDEF%_%CLASS%_%NAME%_OPTVAL_S "%Short%%if(%Optional%,%(::)%,%(%else(%None%,%(:)%)%)%)%"
#define %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C '%Char%'
#define %IFNDEF%_%CLASS%_%NAME%_OPTION \
   {%IFNDEF%_%CLASS%_%NAME%_OPT, \
    %IFNDEF%_%CLASS%_%NAME%_OPTARG_REQUIRED, \
    %IFNDEF%_%CLASS%_%NAME%_OPTARG_RESULT, \
    %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C}, \
)%)%%
%)%,Parameter)%%
%
#define %IFNDEF%_%CLASS%_OPTIONS_CHARS_EXTEND \
%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(   %IFNDEF%_%CLASS%_%NAME%_OPTVAL_S \
)%)%%
%)%,Parameter)%%
%
#define %IFNDEF%_%CLASS%_OPTIONS_OPTIONS_EXTEND \
%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(   %IFNDEF%_%CLASS%_%NAME%_OPTION \
)%)%%
%)%,Parameter)%%
%
#define %IFNDEF%_%CLASS%_OPTIONS_CHARS \
   %IFNDEF%_%CLASS%_OPTIONS_CHARS_EXTEND \
   %EXTENDS_IFNDEF%_%EXTENDS%_OPTIONS_CHARS

#define %IFNDEF%_%CLASS%_OPTIONS_OPTIONS \
   %IFNDEF%_%CLASS%_OPTIONS_OPTIONS_EXTEND \
   %EXTENDS_IFNDEF%_%EXTENDS%_OPTIONS_OPTIONS

#define %IFNDEF%_%CLASS%_ARGS 0
#define %IFNDEF%_%CLASS%_ARGV 0,
%
%%if-no(%is_main_class%,,%(%Namespace_begin%
/// class %Main_class%
class exported %Main_class% {
public:
    %Main_class%() {}
    virtual ~%Main_class%() {}
private
    %Main_class%(const %Main_class% &copy) {}
protected:
)%)%%
%
    /// ...option...
%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(    virtual int on_%Name%_option
    (int optval, const char_t* optarg, const char_t* optname,
     int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;%if(%None%,%()%,%(
        if ((optarg) && (optarg[0])) {
        } else {
        })%)%
        return err;
    }
%
%%if-no(%IsUsage%,%()%,%(    virtual const char_t* %Name%_option_usage(const char_t*& optarg, const struct option* longopt) {
        const char_t* chars = %IFNDEF%_%CLASS%_%NAME%_OPTUSE;
        optarg = %IFNDEF%_%CLASS%_%NAME%_OPTARG;
        return chars;
    }
)%)%%
%)%)%%
%)%,Parameter)%%
%    virtual int on_option
    (int optval, const char_t* optarg, const char_t* optname,
     int optind, int argc, char_t**argv, char_t**env) {
        int err = 0;
        switch(optval) {%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(
        case %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C:
            err = this->on_%Name%_option(optval, optarg, optname, optind, argc, argv, env);
            break;)%)%%
%)%,Parameter)%%
%
        default:
            err = extends::on_option(optval, optarg, optname, optind, argc, argv, env);
        }
        return err;
    }
%
%%if-no(%IsUsages%,%()%,%(%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(    virtual const char_t* %Name%_option_usage(const char_t*& optarg, const struct option* longopt) {
        const char_t* chars = %IFNDEF%_%CLASS%_%NAME%_OPTUSE;
        optarg = %IFNDEF%_%CLASS%_%NAME%_OPTARG;
        return chars;
    }
)%)%%
%)%,Parameter)%)%)%%
%    virtual const char_t* option_usage(const char_t*& optarg, const struct option* longopt) {
        const char_t* chars = "";
        switch(longopt->val) {%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else(%right(%Parameter%,=)%,%(%replace(%(-)%,%(_)%,%right(%Parameter%,:)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%%(
        case %IFNDEF%_%CLASS%_%NAME%_OPTVAL_C:%if-no(%IsUsage%,%(
            optarg = %IFNDEF%_%CLASS%_%NAME%_OPTARG;
            chars = %IFNDEF%_%CLASS%_%NAME%_OPTUSE;)%,%(
            chars = this->%Name%_option_usage(optarg, longopt);)%)%
            break;)%)%%
%)%,Parameter)%%
%
        default:
            chars = extends::option_usage(optarg, longopt);
            break;
        }
        return chars;
    }
    virtual const char_t* options(const struct option*& longopts) {
        static const char_t* chars = %IFNDEF%_%CLASS%_OPTIONS_CHARS;
        static struct option optstruct[]= {
            %IFNDEF%_%CLASS%_OPTIONS_OPTIONS
            {0, 0, 0, 0}};
        longopts = optstruct;
        return chars;
    }

    /// ...argument...
    virtual const char_t* arguments(const char_t**& argv) {
        static const char_t* _args = %IFNDEF%_%CLASS%_ARGS;
        static const char_t* _argv[] = {
            %IFNDEF%_%CLASS%_ARGV
            0};
        argv = _argv;
        return _args;
    }
%
%%if-no(%is_main_class%,,%(
} /// class %Main_class%
%Namespace_end%)%%
%%if-no(%is_file%,,%(%
%%if-no(%is_main_class%,,%(%
%%File_ifndef_end%%
%)%)%%
%)%)%%
%)%)%