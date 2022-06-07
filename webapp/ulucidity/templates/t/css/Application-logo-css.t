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
%#   File: Application-logo-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(logo)%)%)%)%)%,%
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
%is_logo_bg,%(%else-then(%is_logo_bg%,%(%is_Logo_bg%)%)%)%,%
%logo_bg,%(%else-then(%if-no(%is_logo_bg%,,%(%logo_bg%)%)%,%(%if-no(%is_logo_bg%,,%(transparent)%)%)%)%)%,%
%Logo_bg,%(%else-then(%if-no(%is_logo_bg%,,%(%Logo_bg%)%)%,%(%if-no(%is_logo_bg%,,%(%logo_bg%)%)%)%)%)%,%
%LOGO_BG,%(%else-then(%LOGO_BG%,%(%toupper(%Logo_bg%)%)%)%)%,%
%logo_bg,%(%else-then(%_logo_bg%,%(%tolower(%Logo_bg%)%)%)%)%,%
%is_logo_fg,%(%else-then(%is_logo_fg%,%(%is_Logo_fg%)%)%)%,%
%logo_fg,%(%else-then(%if-no(%is_logo_fg%,,%(%logo_fg%)%)%,%(%if-no(%is_logo_fg%,,%(%Frame_bg%)%)%)%)%)%,%
%Logo_fg,%(%else-then(%if-no(%is_logo_fg%,,%(%Logo_fg%)%)%,%(%if-no(%is_logo_fg%,,%(%logo_fg%)%)%)%)%)%,%
%LOGO_FG,%(%else-then(%LOGO_FG%,%(%toupper(%Logo_fg%)%)%)%)%,%
%logo_fg,%(%else-then(%_logo_fg%,%(%tolower(%Logo_fg%)%)%)%)%,%
%is_logo_bd,%(%else-then(%is_logo_bd%,%(%is_Logo_bd%)%)%)%,%
%logo_bd,%(%else-then(%if-no(%is_logo_bd%,,%(%logo_bd%)%)%,%(%if-no(%is_logo_bd%,,%(%Body_bd%)%)%)%)%)%,%
%Logo_bd,%(%else-then(%if-no(%is_logo_bd%,,%(%Logo_bd%)%)%,%(%if-no(%is_logo_bd%,,%(%logo_bd%)%)%)%)%)%,%
%LOGO_BD,%(%else-then(%LOGO_BD%,%(%toupper(%Logo_bd%)%)%)%)%,%
%logo_bd,%(%else-then(%_logo_bd%,%(%tolower(%Logo_bd%)%)%)%)%,%
%is_logo_hv,%(%else-then(%is_logo_hv%,%(%is_Logo_hv%)%)%)%,%
%logo_hv,%(%else-then(%if-no(%is_logo_hv%,,%(%logo_hv%)%)%,%(%if-no(%is_logo_hv%,,%(%Body_hv%)%)%)%)%)%,%
%Logo_hv,%(%else-then(%if-no(%is_logo_hv%,,%(%Logo_hv%)%)%,%(%if-no(%is_logo_hv%,,%(%logo_hv%)%)%)%)%)%,%
%LOGO_HV,%(%else-then(%LOGO_HV%,%(%toupper(%Logo_hv%)%)%)%)%,%
%logo_hv,%(%else-then(%_logo_hv%,%(%tolower(%Logo_hv%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** logo
** ...
*/
.logo-body {
    width: 100%%;
    height: 100%%;
    margin: auto;
    background-color: %Logo_bg%;
    padding: 0px;
    border-spacing: 0px 0px;
    position: absolute;
    z-index: 0;
}
.body-logo {
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    position: relative;
}
.logo {
    width: 360px;
    height: 360px;
    position: absolute;
    margin: auto;
    top: 50%%;
    left: 50%%;
    transform: translate(-50%%, -50%%);
    padding: 0px;
    border-spacing: 0px 0px;
}
.logo-frame { 
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Frame_fg%;
    border-radius: 0px;
    cursor: pointer;
}
.logo-frame:hover {
    background-color: %Frame_hv%;
}
.logo-square { 
    width: 330px;
    height: 330px;
    padding: 0px;
    margin: auto;
    border-spacing: 0px 0px;
    background-color: %Frame_bg%;
    border-radius: 0px;
}
.logo-rounded-frame { 
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Frame_fg%;
    border-radius: 80px;
    cursor: pointer;
}
.logo-rounded-frame:hover {
    background-color: %Frame_hv%;
}
.logo-rounded-square { 
    width: 330px;
    height: 330px;
    padding: 0px;
    margin: auto;
    border-spacing: 0px 0px;
    background-color: %Frame_bg%;
    border-radius: 65px;
}
.logo-ring { 
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Frame_fg%;
    border-radius: 180px;
    cursor: pointer;
}
.logo-ring:hover {
    background-color: %Frame_hv%;
}
.logo-circle { 
    width: 330px;
    height: 330px;
    padding: 0px;
    margin: auto;
    border-spacing: 0px 0px;
    background-color: %Frame_bg%;
    border-radius: 165px;
}
.logo-icon {
    height: 281px;
}
.logo-icon-icon { 
    width: 281px;
    height: 281px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    background-color: %Frame_bg%;
    border-radius: 140px;
}
.logo-icon-image {
    background-image: url('../images/jpeg/%Application%.jpg');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 234px 234px;
    border-radius: 105px;
}
.logo-icon-label {
    font-family: Arial;
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    vertical-align: top;
    color: %Frame_fg%;
    opacity: 0;
    transition: .5s ease;                
}
.logo-ring:hover .logo-icon-label {
    opacity: 1;
}
.logo-rounded-frame:hover .logo-icon-label {
    opacity: 1;
}
.logo-frame:hover .logo-icon-label {
    opacity: 1;
}
/*
** ...
** logo
*/
%
%)%)%