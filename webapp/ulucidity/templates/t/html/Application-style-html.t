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
%#   File: Application-style-html.t
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
%is_logo,%(%else-then(%is_logo%,%(%is_Logo%)%)%)%,%
%logo,%(%else-then(%if-no(%is_logo%,,%(%logo%)%)%,%(%if-no(%is_logo%,,%(body-logo)%)%)%)%)%,%
%Logo,%(%else-then(%if-no(%is_logo%,,%(%Logo%)%)%,%(%if-no(%is_logo%,,%(%logo%)%)%)%)%)%,%
%LOGO,%(%else-then(%LOGO%,%(%toupper(%Logo%)%)%)%)%,%
%logo,%(%else-then(%_logo%,%(%tolower(%Logo%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Ulucidity)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_stylesheet,%(%else-then(%is_stylesheet%,%(%is_Stylesheet%)%)%)%,%
%stylesheet,%(%else-then(%if-no(%is_stylesheet%,,%(%stylesheet%)%)%,%(%if-no(%is_stylesheet%,,%(%if-then(%Application%,%
%%(;%Application%-header;%Application%-footer;%Application%-dropdown;%Application%-popdown;%Application%-menubar;%Application%-form;%Application%-%Logo%)%)%)%)%)%)%)%,%
%Stylesheet,%(%else-then(%if-no(%is_stylesheet%,,%(%Stylesheet%)%)%,%(%if-no(%is_stylesheet%,,%(%stylesheet%)%)%)%)%)%,%
%STYLESHEET,%(%else-then(%STYLESHEET%,%(%toupper(%Stylesheet%)%)%)%)%,%
%stylesheet,%(%else-then(%_stylesheet%,%(%tolower(%Stylesheet%)%)%)%)%,%
%is_style_type,%(%else-then(%is_style_type%,%(%is_Style_type%)%)%)%,%
%style_type,%(%else-then(%if-no(%is_style_type%,,%(%style_type%)%)%,%(%if-no(%is_style_type%,,%(text)%)%)%)%)%,%
%Style_type,%(%else-then(%if-no(%is_style_type%,,%(%Style_type%)%)%,%(%if-no(%is_style_type%,,%(%style_type%)%)%)%)%)%,%
%STYLE_TYPE,%(%else-then(%STYLE_TYPE%,%(%toupper(%Style_type%)%)%)%)%,%
%style_type,%(%else-then(%_style_type%,%(%tolower(%Style_type%)%)%)%)%,%
%is_style_subtype,%(%else-then(%is_style_subtype%,%(%is_Style_subtype%)%)%)%,%
%style_subtype,%(%else-then(%if-no(%is_style_subtype%,,%(%style_subtype%)%)%,%(%if-no(%is_style_subtype%,,%(css)%)%)%)%)%,%
%Style_subtype,%(%else-then(%if-no(%is_style_subtype%,,%(%Style_subtype%)%)%,%(%if-no(%is_style_subtype%,,%(%style_subtype%)%)%)%)%)%,%
%STYLE_SUBTYPE,%(%else-then(%STYLE_SUBTYPE%,%(%toupper(%Style_subtype%)%)%)%)%,%
%style_subtype,%(%else-then(%_style_subtype%,%(%tolower(%Style_subtype%)%)%)%)%,%
%is_styletype,%(%else-then(%is_styletype%,%(%is_StyleType%)%)%)%,%
%styletype,%(%else-then(%if-no(%is_styletype%,,%(%styletype%)%)%,%(%if-no(%is_styletype%,,%(%Style_type%%then-if(%Style_subtype%,/)%)%)%)%)%)%,%
%StyleType,%(%else-then(%if-no(%is_styletype%,,%(%StyleType%)%)%,%(%if-no(%is_styletype%,,%(%styletype%)%)%)%)%)%,%
%STYLETYPE,%(%else-then(%STYLETYPE%,%(%toupper(%StyleType%)%)%)%)%,%
%styletype,%(%else-then(%_styletype%,%(%tolower(%StyleType%)%)%)%)%,%
%is_stylesheet_type,%(%else-then(%is_stylesheet_type%,%(%is_Stylesheet_type%)%)%)%,%
%stylesheet_type,%(%else-then(%if-no(%is_stylesheet_type%,,%(%stylesheet_type%)%)%,%(%if-no(%is_stylesheet_type%,,%(%Style_subtype%)%)%)%)%)%,%
%Stylesheet_type,%(%else-then(%if-no(%is_stylesheet_type%,,%(%Stylesheet_type%)%)%,%(%if-no(%is_stylesheet_type%,,%(%stylesheet_type%)%)%)%)%)%,%
%STYLESHEET_TYPE,%(%else-then(%STYLESHEET_TYPE%,%(%toupper(%Stylesheet_type%)%)%)%)%,%
%stylesheet_type,%(%else-then(%_stylesheet_type%,%(%tolower(%Stylesheet_type%)%)%)%)%,%
%is_stylesheet_path,%(%else-then(%is_stylesheet_path%,%(%is_Stylesheet_path%)%)%)%,%
%stylesheet_path,%(%else-then(%if-no(%is_stylesheet_path%,,%(%stylesheet_path%)%)%,%(%if-no(%is_stylesheet_path%,,%(../%Stylesheet_type%)%)%)%)%)%,%
%Stylesheet_path,%(%else-then(%if-no(%is_stylesheet_path%,,%(%Stylesheet_path%)%)%,%(%if-no(%is_stylesheet_path%,,%(%stylesheet_path%)%)%)%)%)%,%
%STYLESHEET_PATH,%(%else-then(%STYLESHEET_PATH%,%(%toupper(%Stylesheet_path%)%)%)%)%,%
%stylesheet_path,%(%else-then(%_stylesheet_path%,%(%tolower(%Stylesheet_path%)%)%)%)%,%
%is_stylesheet,%(%else-then(%is_stylesheet%,%(%is_Stylesheet%)%)%)%,%
%stylesheet,%(%else-then(%if-no(%is_stylesheet%,,%(%stylesheet%)%)%,%(%if-no(%is_stylesheet%,,%()%)%)%)%)%,%
%Stylesheet,%(%else-then(%if-no(%is_stylesheet%,,%(%Stylesheet%)%)%,%(%if-no(%is_stylesheet%,,%(%stylesheet%)%)%)%)%)%,%
%STYLESHEET,%(%else-then(%STYLESHEET%,%(%toupper(%Stylesheet%)%)%)%)%,%
%stylesheet,%(%else-then(%_stylesheet%,%(%tolower(%Stylesheet%)%)%)%)%,%
%%(%
%
        <!--
        =====================================================================
        === style
        =====================================================================
        -->%parse(%Stylesheet%,;,,,,%
%%(%with(%
%is_stylesheet_base,%(%else-then(%is_stylesheet_base%,%(%is_Stylesheet_base%)%)%)%,%
%stylesheet_base,%(%else-then(%if-no(%is_stylesheet_base%,,%(%stylesheet_base%)%)%,%(%if-no(%is_stylesheet_base%,,%(%else-then(%filebase(%Stylesheet%)%,%(%Stylesheet%)%)%)%)%)%)%)%,%
%Stylesheet_base,%(%else-then(%if-no(%is_stylesheet_base%,,%(%Stylesheet_base%)%)%,%(%if-no(%is_stylesheet_base%,,%(%stylesheet_base%)%)%)%)%)%,%
%STYLESHEET_BASE,%(%else-then(%STYLESHEET_BASE%,%(%toupper(%Stylesheet_base%)%)%)%)%,%
%stylesheet_base,%(%else-then(%_stylesheet_base%,%(%tolower(%Stylesheet_base%)%)%)%)%,%
%is_stylesheet_extension,%(%else-then(%is_stylesheet_extension%,%(%is_Stylesheet_extension%)%)%)%,%
%stylesheet_extension,%(%else-then(%if-no(%is_stylesheet_extension%,,%(%stylesheet_extension%)%)%,%(%if-no(%is_stylesheet_extension%,,%(%else-then(%fileextension(%Stylesheet%)%,%(%Stylesheet_type%)%)%)%)%)%)%)%,%
%Stylesheet_extension,%(%else-then(%if-no(%is_stylesheet_extension%,,%(%Stylesheet_extension%)%)%,%(%if-no(%is_stylesheet_extension%,,%(%stylesheet_extension%)%)%)%)%)%,%
%STYLESHEET_EXTENSION,%(%else-then(%STYLESHEET_EXTENSION%,%(%toupper(%Stylesheet_extension%)%)%)%)%,%
%stylesheet_extension,%(%else-then(%_stylesheet_extension%,%(%tolower(%Stylesheet_extension%)%)%)%)%,%
%%(
        <link rel="stylesheet" type="%StyleType%" href="%Stylesheet_path%/%Stylesheet_base%.%Stylesheet_extension%"></link>)%)%)%,Stylesheet)%
        <style type="%StyleType%">
        </style>
%
%)%)%