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
%#   File: Application-menubar-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(menubar)%)%)%)%)%,%
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
%is_menubar_bg,%(%else-then(%is_menubar_bg%,%(%is_Menubar_bg%)%)%)%,%
%menubar_bg,%(%else-then(%if-no(%is_menubar_bg%,,%(%menubar_bg%)%)%,%(%if-no(%is_menubar_bg%,,%(%Form_bg%)%)%)%)%)%,%
%Menubar_bg,%(%else-then(%if-no(%is_menubar_bg%,,%(%Menubar_bg%)%)%,%(%if-no(%is_menubar_bg%,,%(%menubar_bg%)%)%)%)%)%,%
%MENUBAR_BG,%(%else-then(%MENUBAR_BG%,%(%toupper(%Menubar_bg%)%)%)%)%,%
%menubar_bg,%(%else-then(%_menubar_bg%,%(%tolower(%Menubar_bg%)%)%)%)%,%
%is_menubar_fg,%(%else-then(%is_menubar_fg%,%(%is_Menubar_fg%)%)%)%,%
%menubar_fg,%(%else-then(%if-no(%is_menubar_fg%,,%(%menubar_fg%)%)%,%(%if-no(%is_menubar_fg%,,%(%Form_fg%)%)%)%)%)%,%
%Menubar_fg,%(%else-then(%if-no(%is_menubar_fg%,,%(%Menubar_fg%)%)%,%(%if-no(%is_menubar_fg%,,%(%menubar_fg%)%)%)%)%)%,%
%MENUBAR_FG,%(%else-then(%MENUBAR_FG%,%(%toupper(%Menubar_fg%)%)%)%)%,%
%menubar_fg,%(%else-then(%_menubar_fg%,%(%tolower(%Menubar_fg%)%)%)%)%,%
%is_menubar_bd,%(%else-then(%is_menubar_bd%,%(%is_Menubar_bd%)%)%)%,%
%menubar_bd,%(%else-then(%if-no(%is_menubar_bd%,,%(%menubar_bd%)%)%,%(%if-no(%is_menubar_bd%,,%(%Form_bd%)%)%)%)%)%,%
%Menubar_bd,%(%else-then(%if-no(%is_menubar_bd%,,%(%Menubar_bd%)%)%,%(%if-no(%is_menubar_bd%,,%(%menubar_bd%)%)%)%)%)%,%
%MENUBAR_BD,%(%else-then(%MENUBAR_BD%,%(%toupper(%Menubar_bd%)%)%)%)%,%
%menubar_bd,%(%else-then(%_menubar_bd%,%(%tolower(%Menubar_bd%)%)%)%)%,%
%is_menubar_hv,%(%else-then(%is_menubar_hv%,%(%is_Menubar_hv%)%)%)%,%
%menubar_hv,%(%else-then(%if-no(%is_menubar_hv%,,%(%menubar_hv%)%)%,%(%if-no(%is_menubar_hv%,,%(%Form_hv%)%)%)%)%)%,%
%Menubar_hv,%(%else-then(%if-no(%is_menubar_hv%,,%(%Menubar_hv%)%)%,%(%if-no(%is_menubar_hv%,,%(%menubar_hv%)%)%)%)%)%,%
%MENUBAR_HV,%(%else-then(%MENUBAR_HV%,%(%toupper(%Menubar_hv%)%)%)%)%,%
%menubar_hv,%(%else-then(%_menubar_hv%,%(%tolower(%Menubar_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** menubar
** ...
*/
.menubar {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: %Menubar_bg%;
  border-style: solid;
  border-color: %Menubar_bd%;
  border-width: 1px 0px 1px 0px;
  position: relative;
  z-index: 1;
}
.menubar li {
  float: left;
}
.menubar .home {
  float: right;
}
.menubar li a {
  display: block;
  color: %Menubar_fg%;
  text-align: center;
  padding: 14px 16px;
  font-face: Arial;
  font-size: 18;  
  text-decoration: none;
}
.menubar li a:hover {
  color: %Menubar_hv%;
  font-style: none;
  text-decoration: underline;
}
/*
** ...
** menubar
*/
%
%)%)%