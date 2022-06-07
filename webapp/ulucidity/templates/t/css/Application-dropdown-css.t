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
%#   File: Application-dropdown-css.t
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
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(dropdown)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%is_body_bg,%(%else-then(%is_body_bg%,%(%is_Body_bg%)%)%)%,%
%body_bg,%(%else-then(%if-no(%is_body_bg%,,%(%body_bg%)%)%,%(%if-no(%is_body_bg%,,%(black)%)%)%)%)%,%
%Body_bg,%(%else-then(%if-no(%is_body_bg%,,%(%Body_bg%)%)%,%(%if-no(%is_body_bg%,,%(%body_bg%)%)%)%)%)%,%
%BODY_BG,%(%else-then(%BODY_BG%,%(%toupper(%Body_bg%)%)%)%)%,%
%body_bg,%(%else-then(%_body_bg%,%(%tolower(%Body_bg%)%)%)%)%,%
%is_body_fg,%(%else-then(%is_body_fg%,%(%is_Body_fg%)%)%)%,%
%body_fg,%(%else-then(%if-no(%is_body_fg%,,%(%body_fg%)%)%,%(%if-no(%is_body_fg%,,%(grey)%)%)%)%)%,%
%Body_fg,%(%else-then(%if-no(%is_body_fg%,,%(%Body_fg%)%)%,%(%if-no(%is_body_fg%,,%(%body_fg%)%)%)%)%)%,%
%BODY_FG,%(%else-then(%BODY_FG%,%(%toupper(%Body_fg%)%)%)%)%,%
%body_fg,%(%else-then(%_body_fg%,%(%tolower(%Body_fg%)%)%)%)%,%
%is_body_bd,%(%else-then(%is_body_bd%,%(%is_Body_bd%)%)%)%,%
%body_bd,%(%else-then(%if-no(%is_body_bd%,,%(%body_bd%)%)%,%(%if-no(%is_body_bd%,,%(black)%)%)%)%)%,%
%Body_bd,%(%else-then(%if-no(%is_body_bd%,,%(%Body_bd%)%)%,%(%if-no(%is_body_bd%,,%(%body_bd%)%)%)%)%)%,%
%BODY_BD,%(%else-then(%BODY_BD%,%(%toupper(%Body_bd%)%)%)%)%,%
%body_bd,%(%else-then(%_body_bd%,%(%tolower(%Body_bd%)%)%)%)%,%
%is_body_hv,%(%else-then(%is_body_hv%,%(%is_Body_hv%)%)%)%,%
%body_hv,%(%else-then(%if-no(%is_body_hv%,,%(%body_hv%)%)%,%(%if-no(%is_body_hv%,,%(lightgrey)%)%)%)%)%,%
%Body_hv,%(%else-then(%if-no(%is_body_hv%,,%(%Body_hv%)%)%,%(%if-no(%is_body_hv%,,%(%body_hv%)%)%)%)%)%,%
%BODY_HV,%(%else-then(%BODY_HV%,%(%toupper(%Body_hv%)%)%)%)%,%
%body_hv,%(%else-then(%_body_hv%,%(%tolower(%Body_hv%)%)%)%)%,%
%is_form_bg,%(%else-then(%is_form_bg%,%(%is_Form_bg%)%)%)%,%
%form_bg,%(%else-then(%if-no(%is_form_bg%,,%(%form_bg%)%)%,%(%if-no(%is_form_bg%,,%(%Body_hv%)%)%)%)%)%,%
%Form_bg,%(%else-then(%if-no(%is_form_bg%,,%(%Form_bg%)%)%,%(%if-no(%is_form_bg%,,%(%form_bg%)%)%)%)%)%,%
%FORM_BG,%(%else-then(%FORM_BG%,%(%toupper(%Form_bg%)%)%)%)%,%
%form_bg,%(%else-then(%_form_bg%,%(%tolower(%Form_bg%)%)%)%)%,%
%is_form_fg,%(%else-then(%is_form_fg%,%(%is_Form_fg%)%)%)%,%
%form_fg,%(%else-then(%if-no(%is_form_fg%,,%(%form_fg%)%)%,%(%if-no(%is_form_fg%,,%(%Body_bd%)%)%)%)%)%,%
%Form_fg,%(%else-then(%if-no(%is_form_fg%,,%(%Form_fg%)%)%,%(%if-no(%is_form_fg%,,%(%form_fg%)%)%)%)%)%,%
%FORM_FG,%(%else-then(%FORM_FG%,%(%toupper(%Form_fg%)%)%)%)%,%
%form_fg,%(%else-then(%_form_fg%,%(%tolower(%Form_fg%)%)%)%)%,%
%is_form_bd,%(%else-then(%is_form_bd%,%(%is_Form_bd%)%)%)%,%
%form_bd,%(%else-then(%if-no(%is_form_bd%,,%(%form_bd%)%)%,%(%if-no(%is_form_bd%,,%(%Body_bd%)%)%)%)%)%,%
%Form_bd,%(%else-then(%if-no(%is_form_bd%,,%(%Form_bd%)%)%,%(%if-no(%is_form_bd%,,%(%form_bd%)%)%)%)%)%,%
%FORM_BD,%(%else-then(%FORM_BD%,%(%toupper(%Form_bd%)%)%)%)%,%
%form_bd,%(%else-then(%_form_bd%,%(%tolower(%Form_bd%)%)%)%)%,%
%is_form_hv,%(%else-then(%is_form_hv%,%(%is_Form_hv%)%)%)%,%
%form_hv,%(%else-then(%if-no(%is_form_hv%,,%(%form_hv%)%)%,%(%if-no(%is_form_hv%,,%(%Form_fg%)%)%)%)%)%,%
%Form_hv,%(%else-then(%if-no(%is_form_hv%,,%(%Form_hv%)%)%,%(%if-no(%is_form_hv%,,%(%form_hv%)%)%)%)%)%,%
%FORM_HV,%(%else-then(%FORM_HV%,%(%toupper(%Form_hv%)%)%)%)%,%
%form_hv,%(%else-then(%_form_hv%,%(%tolower(%Form_hv%)%)%)%)%,%
%is_header_bg,%(%else-then(%is_header_bg%,%(%is_Header_bg%)%)%)%,%
%header_bg,%(%else-then(%if-no(%is_header_bg%,,%(%header_bg%)%)%,%(%if-no(%is_header_bg%,,%(transparent)%)%)%)%)%,%
%Header_bg,%(%else-then(%if-no(%is_header_bg%,,%(%Header_bg%)%)%,%(%if-no(%is_header_bg%,,%(%header_bg%)%)%)%)%)%,%
%HEADER_BG,%(%else-then(%HEADER_BG%,%(%toupper(%Header_bg%)%)%)%)%,%
%header_bg,%(%else-then(%_header_bg%,%(%tolower(%Header_bg%)%)%)%)%,%
%is_header_fg,%(%else-then(%is_header_fg%,%(%is_Header_fg%)%)%)%,%
%header_fg,%(%else-then(%if-no(%is_header_fg%,,%(%header_fg%)%)%,%(%if-no(%is_header_fg%,,%(%Body_fg%)%)%)%)%)%,%
%Header_fg,%(%else-then(%if-no(%is_header_fg%,,%(%Header_fg%)%)%,%(%if-no(%is_header_fg%,,%(%header_fg%)%)%)%)%)%,%
%HEADER_FG,%(%else-then(%HEADER_FG%,%(%toupper(%Header_fg%)%)%)%)%,%
%header_fg,%(%else-then(%_header_fg%,%(%tolower(%Header_fg%)%)%)%)%,%
%is_header_bd,%(%else-then(%is_header_bd%,%(%is_Header_bd%)%)%)%,%
%header_bd,%(%else-then(%if-no(%is_header_bd%,,%(%header_bd%)%)%,%(%if-no(%is_header_bd%,,%(%Body_bd%)%)%)%)%)%,%
%Header_bd,%(%else-then(%if-no(%is_header_bd%,,%(%Header_bd%)%)%,%(%if-no(%is_header_bd%,,%(%header_bd%)%)%)%)%)%,%
%HEADER_BD,%(%else-then(%HEADER_BD%,%(%toupper(%Header_bd%)%)%)%)%,%
%header_bd,%(%else-then(%_header_bd%,%(%tolower(%Header_bd%)%)%)%)%,%
%is_header_hv,%(%else-then(%is_header_hv%,%(%is_Header_hv%)%)%)%,%
%header_hv,%(%else-then(%if-no(%is_header_hv%,,%(%header_hv%)%)%,%(%if-no(%is_header_hv%,,%(%Body_hv%)%)%)%)%)%,%
%Header_hv,%(%else-then(%if-no(%is_header_hv%,,%(%Header_hv%)%)%,%(%if-no(%is_header_hv%,,%(%header_hv%)%)%)%)%)%,%
%HEADER_HV,%(%else-then(%HEADER_HV%,%(%toupper(%Header_hv%)%)%)%)%,%
%header_hv,%(%else-then(%_header_hv%,%(%tolower(%Header_hv%)%)%)%)%,%
%is_dropdown_bg,%(%else-then(%is_dropdown_bg%,%(%is_Dropdown_bg%)%)%)%,%
%dropdown_bg,%(%else-then(%if-no(%is_dropdown_bg%,,%(%dropdown_bg%)%)%,%(%if-no(%is_dropdown_bg%,,%(%Form_bg%)%)%)%)%)%,%
%Dropdown_bg,%(%else-then(%if-no(%is_dropdown_bg%,,%(%Dropdown_bg%)%)%,%(%if-no(%is_dropdown_bg%,,%(%dropdown_bg%)%)%)%)%)%,%
%DROPDOWN_BG,%(%else-then(%DROPDOWN_BG%,%(%toupper(%Dropdown_bg%)%)%)%)%,%
%dropdown_bg,%(%else-then(%_dropdown_bg%,%(%tolower(%Dropdown_bg%)%)%)%)%,%
%is_dropdown_fg,%(%else-then(%is_dropdown_fg%,%(%is_Dropdown_fg%)%)%)%,%
%dropdown_fg,%(%else-then(%if-no(%is_dropdown_fg%,,%(%dropdown_fg%)%)%,%(%if-no(%is_dropdown_fg%,,%(%Form_fg%)%)%)%)%)%,%
%Dropdown_fg,%(%else-then(%if-no(%is_dropdown_fg%,,%(%Dropdown_fg%)%)%,%(%if-no(%is_dropdown_fg%,,%(%dropdown_fg%)%)%)%)%)%,%
%DROPDOWN_FG,%(%else-then(%DROPDOWN_FG%,%(%toupper(%Dropdown_fg%)%)%)%)%,%
%dropdown_fg,%(%else-then(%_dropdown_fg%,%(%tolower(%Dropdown_fg%)%)%)%)%,%
%is_dropdown_bd,%(%else-then(%is_dropdown_bd%,%(%is_Dropdown_bd%)%)%)%,%
%dropdown_bd,%(%else-then(%if-no(%is_dropdown_bd%,,%(%dropdown_bd%)%)%,%(%if-no(%is_dropdown_bd%,,%(%Form_bd%)%)%)%)%)%,%
%Dropdown_bd,%(%else-then(%if-no(%is_dropdown_bd%,,%(%Dropdown_bd%)%)%,%(%if-no(%is_dropdown_bd%,,%(%dropdown_bd%)%)%)%)%)%,%
%DROPDOWN_BD,%(%else-then(%DROPDOWN_BD%,%(%toupper(%Dropdown_bd%)%)%)%)%,%
%dropdown_bd,%(%else-then(%_dropdown_bd%,%(%tolower(%Dropdown_bd%)%)%)%)%,%
%is_dropdown_hv,%(%else-then(%is_dropdown_hv%,%(%is_Dropdown_hv%)%)%)%,%
%dropdown_hv,%(%else-then(%if-no(%is_dropdown_hv%,,%(%dropdown_hv%)%)%,%(%if-no(%is_dropdown_hv%,,%(%Form_hv%)%)%)%)%)%,%
%Dropdown_hv,%(%else-then(%if-no(%is_dropdown_hv%,,%(%Dropdown_hv%)%)%,%(%if-no(%is_dropdown_hv%,,%(%dropdown_hv%)%)%)%)%)%,%
%DROPDOWN_HV,%(%else-then(%DROPDOWN_HV%,%(%toupper(%Dropdown_hv%)%)%)%)%,%
%dropdown_hv,%(%else-then(%_dropdown_hv%,%(%tolower(%Dropdown_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** dropdown
** ...
*/
.dropdown-content {
     border-style: solid;
     border-color: %Dropdown_bd%;
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: %Dropdown_bg%;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index:2;
     display: none;
}
.dropdown-content a {
     color: %Dropdown_fg%;
     padding: 12px 16px;
     text-decoration: none;
     font-face: Arial;
     font-size: 18;  
     display: block;
}
.dropdown-content a:hover {
     color: %Dropdown_hv%;
     font-style: none;
     text-decoration: underline;
}
/*
** ...
** dropdown
*/
%
%)%)%