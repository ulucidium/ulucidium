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
%#   File: Application-script-html.t
%#
%# Author: $author$
%#   Date: 6/6/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Ulucidity)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_script,%(%else-then(%is_script%,%(%is_Script%)%)%)%,%
%script,%(%else-then(%if-no(%is_script%,,%(%script%)%)%,%(%if-no(%is_script%,,%(%if-then(%Application%,%
%%(;%Application%-include;%Application%-form;%Application%-popdown;%Application%-dropdown;%Application%-location;%Application%-window)%)%)%)%)%)%)%,%
%Script,%(%else-then(%if-no(%is_script%,,%(%Script%)%)%,%(%if-no(%is_script%,,%(%script%)%)%)%)%)%,%
%SCRIPT,%(%else-then(%SCRIPT%,%(%toupper(%Script%)%)%)%)%,%
%script,%(%else-then(%_script%,%(%tolower(%Script%)%)%)%)%,%
%is_script_type,%(%else-then(%is_script_type%,%(%is_Script_type%)%)%)%,%
%script_type,%(%else-then(%if-no(%is_script_type%,,%(%script_type%)%)%,%(%if-no(%is_script_type%,,%(text)%)%)%)%)%,%
%Script_type,%(%else-then(%if-no(%is_script_type%,,%(%Script_type%)%)%,%(%if-no(%is_script_type%,,%(%script_type%)%)%)%)%)%,%
%SCRIPT_TYPE,%(%else-then(%SCRIPT_TYPE%,%(%toupper(%Script_type%)%)%)%)%,%
%script_type,%(%else-then(%_script_type%,%(%tolower(%Script_type%)%)%)%)%,%
%is_script_subtype,%(%else-then(%is_script_subtype%,%(%is_Script_subtype%)%)%)%,%
%script_subtype,%(%else-then(%if-no(%is_script_subtype%,,%(%script_subtype%)%)%,%(%if-no(%is_script_subtype%,,%(javascript)%)%)%)%)%,%
%Script_subtype,%(%else-then(%if-no(%is_script_subtype%,,%(%Script_subtype%)%)%,%(%if-no(%is_script_subtype%,,%(%script_subtype%)%)%)%)%)%,%
%SCRIPT_SUBTYPE,%(%else-then(%SCRIPT_SUBTYPE%,%(%toupper(%Script_subtype%)%)%)%)%,%
%script_subtype,%(%else-then(%_script_subtype%,%(%tolower(%Script_subtype%)%)%)%)%,%
%is_scripttype,%(%else-then(%is_scripttype%,%(%is_ScriptType%)%)%)%,%
%scripttype,%(%else-then(%if-no(%is_scripttype%,,%(%scripttype%)%)%,%(%if-no(%is_scripttype%,,%(%Script_type%%then-if(%Script_subtype%,/)%)%)%)%)%)%,%
%ScriptType,%(%else-then(%if-no(%is_scripttype%,,%(%ScriptType%)%)%,%(%if-no(%is_scripttype%,,%(%scripttype%)%)%)%)%)%,%
%SCRIPTTYPE,%(%else-then(%SCRIPTTYPE%,%(%toupper(%ScriptType%)%)%)%)%,%
%scripttype,%(%else-then(%_scripttype%,%(%tolower(%ScriptType%)%)%)%)%,%
%is_script_type_extension,%(%else-then(%is_script_type_extension%,%(%is_Script_type_extension%)%)%)%,%
%script_type_extension,%(%else-then(%if-no(%is_script_type_extension%,,%(%script_type_extension%)%)%,%(%if-no(%is_script_type_extension%,,%(js)%)%)%)%)%,%
%Script_type_extension,%(%else-then(%if-no(%is_script_type_extension%,,%(%Script_type_extension%)%)%,%(%if-no(%is_script_type_extension%,,%(%script_type_extension%)%)%)%)%)%,%
%SCRIPT_TYPE_EXTENSION,%(%else-then(%SCRIPT_TYPE_EXTENSION%,%(%toupper(%Script_type_extension%)%)%)%)%,%
%script_type_extension,%(%else-then(%_script_type_extension%,%(%tolower(%Script_type_extension%)%)%)%)%,%
%is_script_path,%(%else-then(%is_script_path%,%(%is_Script_path%)%)%)%,%
%script_path,%(%else-then(%if-no(%is_script_path%,,%(%script_path%)%)%,%(%if-no(%is_script_path%,,%(../%Script_type_extension%)%)%)%)%)%,%
%Script_path,%(%else-then(%if-no(%is_script_path%,,%(%Script_path%)%)%,%(%if-no(%is_script_path%,,%(%script_path%)%)%)%)%)%,%
%SCRIPT_PATH,%(%else-then(%SCRIPT_PATH%,%(%toupper(%Script_path%)%)%)%)%,%
%script_path,%(%else-then(%_script_path%,%(%tolower(%Script_path%)%)%)%)%,%
%%(%
%
        <!--
        =====================================================================
        === script
        =====================================================================
        -->%parse(%Script%,;,,,,%(%with(%
%is_script_base,%(%else-then(%is_script_base%,%(%is_Script_base%)%)%)%,%
%script_base,%(%else-then(%if-no(%is_script_base%,,%(%script_base%)%)%,%(%if-no(%is_script_base%,,%(%else-then(%filebase(%Script%)%,%(%Script%)%)%)%)%)%)%)%,%
%Script_base,%(%else-then(%if-no(%is_script_base%,,%(%Script_base%)%)%,%(%if-no(%is_script_base%,,%(%script_base%)%)%)%)%)%,%
%SCRIPT_BASE,%(%else-then(%SCRIPT_BASE%,%(%toupper(%Script_base%)%)%)%)%,%
%script_base,%(%else-then(%_script_base%,%(%tolower(%Script_base%)%)%)%)%,%
%is_script_extension,%(%else-then(%is_script_extension%,%(%is_Script_extension%)%)%)%,%
%script_extension,%(%else-then(%if-no(%is_script_extension%,,%(%script_extension%)%)%,%(%if-no(%is_script_extension%,,%(%else-then(%fileextension(%Script%)%,%(%Script_type_extension%)%)%)%)%)%)%)%,%
%Script_extension,%(%else-then(%if-no(%is_script_extension%,,%(%Script_extension%)%)%,%(%if-no(%is_script_extension%,,%(%script_extension%)%)%)%)%)%,%
%SCRIPT_EXTENSION,%(%else-then(%SCRIPT_EXTENSION%,%(%toupper(%Script_extension%)%)%)%)%,%
%script_extension,%(%else-then(%_script_extension%,%(%tolower(%Script_extension%)%)%)%)%,%
%%(
        <script type="%ScriptType%" src="%Script_path%/%Script_base%.%Script_extension%"></script>)%)%)%,Script)%
        <script type="%ScriptType%">
        </script>
%
%)%)%