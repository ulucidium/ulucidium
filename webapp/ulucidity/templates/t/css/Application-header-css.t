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
%#   File: Application-header-css.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(header)%)%)%)%)%,%
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
%%(%
%%include(%Include_path%/Application-part-css.t)%%
%
/*
** header
** ...
*/
.header {
    width: 100%%;
    height: 42px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 0px 0px;
    position: relative;
    float: top;
    z-index: 1;
}
.header-button {
    padding: 0px;
}

/*
** parent
** ...
*/
.parent {
     width: 64px;
     height: 100%%;
     margin: auto;
     text-align: center;
     float: left;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
}
.parent-button {
     cursor: pointer;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     background-color: %Header_bg%;
}
.parent-button:hover, .parent-button:focus {
     outline: none;
}
.parent-button:hover .parent-dot, .parent-button:focus .parent-dot {
     background-color: %Header_hv%;
}
.parent-dots {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 4px 20px;
}
.parent-dot {
     width: 8px;
     height: 8px;
     padding: 0px;
     border-radius: 4px;
     background-color: %Header_fg%;
}
/*
** ...
** parent
*/

/*
** dropdown
** ...
*/
.dropdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     text-align: center;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     float: right;
     border: 0px;
}
.dropdown-button {
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: %Header_bg%;
     cursor: pointer;
}
.dropdown-button:hover, .dropdown-button:focus {
     outline: none;
}
.dropdown-button:hover .dropdown-bar, .dropdown-button:focus .dropdown-bar {
     background-color: %Header_hv%;
}
.dropdown-bars {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 4px 4px;
}
.dropdown-bar {
     width: 32px;
     height: 6px;
     padding: 0px;
     border-radius: 3px;
     background-color: %Header_fg%;
}
/*
** ...
** dropdown
*/

/*
** popdown
** ...
*/
.popdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.popdown-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: %Header_bd%;
     border-spacing: 0px 0px;
     background-color: %Header_bg%;
     cursor: pointer;
}
.popdown-button:hover, .popdown-button:focus {
     outline: none;
}
.popdown-button:hover .popdown-dot, .popdown-button:focus .popdown-dot {
     background-color: %Header_hv%;
}
.popdown-dots {
    width: 100%%;
    height: 100%%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: %Header_bd%;
    border-spacing: 4px 4px;
}
.popdown-dot {
     width: 7px;
     height: 7px;
     padding: 0px;
     border-radius: 4px;
     background-color: %Header_fg%;
}
/*
** ...
** popdown
*/

/*
** ...
** header
*/
%
%)%)%