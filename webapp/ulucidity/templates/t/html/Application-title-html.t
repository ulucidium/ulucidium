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
%#   File: Application-title-html.t
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
%is_applicationpage,%(%else-then(%is_applicationpage%,%(%is_ApplicationPage%)%)%)%,%
%applicationpage,%(%else-then(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%,%(%if-no(%is_applicationpage%,,%(%Application%%then-if(%Page%,%( - )%)%)%)%)%)%)%,%
%ApplicationPage,%(%else-then(%if-no(%is_applicationpage%,,%(%ApplicationPage%)%)%,%(%if-no(%is_applicationpage%,,%(%applicationpage%)%)%)%)%)%,%
%APPLICATIONPAGE,%(%else-then(%APPLICATIONPAGE%,%(%toupper(%ApplicationPage%)%)%)%)%,%
%applicationpage,%(%else-then(%_applicationpage%,%(%tolower(%ApplicationPage%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%ApplicationPage%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%
        <!--
        =====================================================================
        === title
        =====================================================================
        -->
        <title>%Title%</title>
%
%)%)%