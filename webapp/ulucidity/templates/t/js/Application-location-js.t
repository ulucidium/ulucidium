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
%#   File: Application-location-js.t
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
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(location)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%part,%(%else-then(%_part%,%(%tolower(%Part%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-part-js.t)%%
%
/*
**
** function onClickLocation
** 
*/
function onClickLocation(event, location) { 
    if (event.stopPropagation) {
        event.stopPropagation();
    } else {
        if (window.event) {
            window.event.cancelBubble = true;
        }
    }
    if (location) {
        window.location = location;
    }
}
var thisParentLocation = false, thisSelfLocation = false;
function onLocationInit(parentLocation, selfLocation) {
    thisParentLocation = parentLocation;
    thisSelfLocation = selfLocation;
}
function onClickParentLocation(event, location) {
    if (thisParentLocation) { location = thisParentLocation; }
    onClickLocation(event, location);
}
function onClickSelfLocation(event, location) {
    if (thisSelfLocation) { location = thisSelfLocation; }
    onClickLocation(event, location);
}
%
%)%)%