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
%#   File: Application-popdown-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(popdown)%)%)%)%)%,%
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
%is_popdown_bg,%(%else-then(%is_popdown_bg%,%(%is_Popdown_bg%)%)%)%,%
%popdown_bg,%(%else-then(%if-no(%is_popdown_bg%,,%(%popdown_bg%)%)%,%(%if-no(%is_popdown_bg%,,%(%Dropdown_bg%)%)%)%)%)%,%
%Popdown_bg,%(%else-then(%if-no(%is_popdown_bg%,,%(%Popdown_bg%)%)%,%(%if-no(%is_popdown_bg%,,%(%popdown_bg%)%)%)%)%)%,%
%POPDOWN_BG,%(%else-then(%POPDOWN_BG%,%(%toupper(%Popdown_bg%)%)%)%)%,%
%popdown_bg,%(%else-then(%_popdown_bg%,%(%tolower(%Popdown_bg%)%)%)%)%,%
%is_popdown_fg,%(%else-then(%is_popdown_fg%,%(%is_Popdown_fg%)%)%)%,%
%popdown_fg,%(%else-then(%if-no(%is_popdown_fg%,,%(%popdown_fg%)%)%,%(%if-no(%is_popdown_fg%,,%(%Dropdown_fg%)%)%)%)%)%,%
%Popdown_fg,%(%else-then(%if-no(%is_popdown_fg%,,%(%Popdown_fg%)%)%,%(%if-no(%is_popdown_fg%,,%(%popdown_fg%)%)%)%)%)%,%
%POPDOWN_FG,%(%else-then(%POPDOWN_FG%,%(%toupper(%Popdown_fg%)%)%)%)%,%
%popdown_fg,%(%else-then(%_popdown_fg%,%(%tolower(%Popdown_fg%)%)%)%)%,%
%is_popdown_bd,%(%else-then(%is_popdown_bd%,%(%is_Popdown_bd%)%)%)%,%
%popdown_bd,%(%else-then(%if-no(%is_popdown_bd%,,%(%popdown_bd%)%)%,%(%if-no(%is_popdown_bd%,,%(%Dropdown_bd%)%)%)%)%)%,%
%Popdown_bd,%(%else-then(%if-no(%is_popdown_bd%,,%(%Popdown_bd%)%)%,%(%if-no(%is_popdown_bd%,,%(%popdown_bd%)%)%)%)%)%,%
%POPDOWN_BD,%(%else-then(%POPDOWN_BD%,%(%toupper(%Popdown_bd%)%)%)%)%,%
%popdown_bd,%(%else-then(%_popdown_bd%,%(%tolower(%Popdown_bd%)%)%)%)%,%
%is_popdown_hv,%(%else-then(%is_popdown_hv%,%(%is_Popdown_hv%)%)%)%,%
%popdown_hv,%(%else-then(%if-no(%is_popdown_hv%,,%(%popdown_hv%)%)%,%(%if-no(%is_popdown_hv%,,%(%Dropdown_hv%)%)%)%)%)%,%
%Popdown_hv,%(%else-then(%if-no(%is_popdown_hv%,,%(%Popdown_hv%)%)%,%(%if-no(%is_popdown_hv%,,%(%popdown_hv%)%)%)%)%)%,%
%POPDOWN_HV,%(%else-then(%POPDOWN_HV%,%(%toupper(%Popdown_hv%)%)%)%)%,%
%popdown_hv,%(%else-then(%_popdown_hv%,%(%tolower(%Popdown_hv%)%)%)%)%,%
%is_frame_bg,%(%else-then(%is_frame_bg%,%(%is_Frame_bg%)%)%)%,%
%frame_bg,%(%else-then(%if-no(%is_frame_bg%,,%(%frame_bg%)%)%,%(%if-no(%is_frame_bg%,,%(%Body_bd%)%)%)%)%)%,%
%Frame_bg,%(%else-then(%if-no(%is_frame_bg%,,%(%Frame_bg%)%)%,%(%if-no(%is_frame_bg%,,%(%frame_bg%)%)%)%)%)%,%
%FRAME_BG,%(%else-then(%FRAME_BG%,%(%toupper(%Frame_bg%)%)%)%)%,%
%frame_bg,%(%else-then(%_frame_bg%,%(%tolower(%Frame_bg%)%)%)%)%,%
%is_frame_fg,%(%else-then(%is_frame_fg%,%(%is_Frame_fg%)%)%)%,%
%frame_fg,%(%else-then(%if-no(%is_frame_fg%,,%(%frame_fg%)%)%,%(%if-no(%is_frame_fg%,,%(%Body_fg%)%)%)%)%)%,%
%Frame_fg,%(%else-then(%if-no(%is_frame_fg%,,%(%Frame_fg%)%)%,%(%if-no(%is_frame_fg%,,%(%frame_fg%)%)%)%)%)%,%
%FRAME_FG,%(%else-then(%FRAME_FG%,%(%toupper(%Frame_fg%)%)%)%)%,%
%frame_fg,%(%else-then(%_frame_fg%,%(%tolower(%Frame_fg%)%)%)%)%,%
%is_frame_bd,%(%else-then(%is_frame_bd%,%(%is_Frame_bd%)%)%)%,%
%frame_bd,%(%else-then(%if-no(%is_frame_bd%,,%(%frame_bd%)%)%,%(%if-no(%is_frame_bd%,,%(%Body_bd%)%)%)%)%)%,%
%Frame_bd,%(%else-then(%if-no(%is_frame_bd%,,%(%Frame_bd%)%)%,%(%if-no(%is_frame_bd%,,%(%frame_bd%)%)%)%)%)%,%
%FRAME_BD,%(%else-then(%FRAME_BD%,%(%toupper(%Frame_bd%)%)%)%)%,%
%frame_bd,%(%else-then(%_frame_bd%,%(%tolower(%Frame_bd%)%)%)%)%,%
%is_frame_hv,%(%else-then(%is_frame_hv%,%(%is_Frame_hv%)%)%)%,%
%frame_hv,%(%else-then(%if-no(%is_frame_hv%,,%(%frame_hv%)%)%,%(%if-no(%is_frame_hv%,,%(%Body_hv%)%)%)%)%)%,%
%Frame_hv,%(%else-then(%if-no(%is_frame_hv%,,%(%Frame_hv%)%)%,%(%if-no(%is_frame_hv%,,%(%frame_hv%)%)%)%)%)%,%
%FRAME_HV,%(%else-then(%FRAME_HV%,%(%toupper(%Frame_hv%)%)%)%)%,%
%frame_hv,%(%else-then(%_frame_hv%,%(%tolower(%Frame_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** popdown
** ...
*/

/*
** popdown-content
** ...
*/
.popdown-content {
     padding: 0px;
     border-spacing: 0px 0px;
     border-style: solid;
     border-color: %Popdown_bd%;
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: %Popdown_bg%;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index: 2;
     display: none;
 }
.popdown-content a {
     color: %Popdown_fg%;
     padding: 12px 16px;
     border-spacing: 0px 0px;
     text-decoration: none;
     font-size: 18;  
     display: block;
}
.popdown-content a:hover {
     color: %Popdown_hv%;
     text-decoration: underline;
}
/*
** ...
** popdown-content
*/

/*
** popdown-logo
** ...
*/
.popdown-logo {
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %Popdown_bg%;
    padding: 0px;
    border-spacing: 0px 0px;
    position: relative;
}
.popdown-logo-ring { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %Frame_fg%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 32px;
    cursor: pointer;
}
.popdown-logo-ring:hover {
    background-color: %Frame_hv%;
}
.popdown-logo-circle { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: %Frame_bg%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 28px;
}
.popdown-logo-frame { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %Frame_fg%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
    cursor: pointer;
}
.popdown-logo-frame:hover {
    background-color: %Frame_hv%;
}
.popdown-logo-square { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: %Frame_bg%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
}
.popdown-logo-background { 
    vertical-align: center;
}
.popdown-logo-background-background { 
    width: 48px;
    height: 48px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: %Frame_hv%;
    border-spacing: 0px 0px;
    border-radius: 18px;
}
.popdown-logo-icon {
    height: 40px;
    vertical-align: bottom;
}
.popdown-logo-icon-icon { 
    width: 32px;
    height: 32px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: %Frame_hv%;
    border-spacing: 0px 0px;
    border-radius: 8px;
}
.popdown-logo-icon-image {
    background-image: url('../images/jpeg/%Application%.jpg');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%%;
    border: 0px;
    border-style: solid;
    border-color: %Frame_hv%;
    border-radius: 8px 8px 8px 8px;
}
.popdown-logo-label-label { 
    width: 80%%;
    height: 80%%;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
}
.popdown-logo-label-text {
    font-family: Arial;
    font-size: 6px;
    font-weight: bold;
    text-align: center;
    color: %Frame_fg%;
    opacity: 0;
    transition: .5s ease;                
}
.popdown-logo-ring:hover .popdown-logo-label-text {
    opacity: 1;
}
.popdown-logo-frame:hover .popdown-logo-label-text {
    opacity: 1;
}
/*
** ...
** popdown-logo
*/

/*
** ...
** popdown
*/
%
%)%)%