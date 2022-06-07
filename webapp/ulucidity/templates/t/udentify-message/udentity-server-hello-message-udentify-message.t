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
%#   File: udentity-server-hello-message-udentify-message.t
%#
%# Author: $author$
%#   Date: 5/22/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(udentity-server-hello-message)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(sample udentity server hello response message)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%is_user,%(%else-then(%is_user%,%(%is_User%)%)%)%,%
%user,%(%else-then(%if-no(%is_user%,,%(%user%)%)%,%(%if-no(%is_user%,,%(udentity@udentity.udentity.udentity)%)%)%)%)%,%
%User,%(%else-then(%if-no(%is_user%,,%(%User%)%)%,%(%if-no(%is_user%,,%(%user%)%)%)%)%)%,%
%USER,%(%else-then(%USER%,%(%toupper(%User%)%)%)%)%,%
%user,%(%else-then(%_user%,%(%tolower(%User%)%)%)%)%,%
%is_resource,%(%else-then(%is_resource%,%(%is_Resource%)%)%)%,%
%resource,%(%else-then(%if-no(%is_resource%,,%(%resource%)%)%,%(%if-no(%is_resource%,,%(https://udentity.udentity.udentity/)%)%)%)%)%,%
%Resource,%(%else-then(%if-no(%is_resource%,,%(%Resource%)%)%,%(%if-no(%is_resource%,,%(%resource%)%)%)%)%)%,%
%RESOURCE,%(%else-then(%RESOURCE%,%(%toupper(%Resource%)%)%)%)%,%
%resource,%(%else-then(%_resource%,%(%tolower(%Resource%)%)%)%)%,%
%is_password,%(%else-then(%is_password%,%(%is_Password%)%)%)%,%
%password,%(%else-then(%if-no(%is_password%,,%(%password%)%)%,%(%if-no(%is_password%,,%(%sha1(%uuid()%)%)%)%)%)%)%,%
%Password,%(%else-then(%if-no(%is_password%,,%(%Password%)%)%,%(%if-no(%is_password%,,%(%password%)%)%)%)%)%,%
%PASSWORD,%(%else-then(%PASSWORD%,%(%toupper(%Password%)%)%)%)%,%
%password,%(%else-then(%_password%,%(%tolower(%Password%)%)%)%)%,%
%is_passtoken,%(%else-then(%is_passtoken%,%(%is_Passtoken%)%)%)%,%
%passtoken,%(%else-then(%if-no(%is_passtoken%,,%(%passtoken%)%)%,%(%if-no(%is_passtoken%,,%(%sha1(%uuid()%)%)%)%)%)%)%,%
%Passtoken,%(%else-then(%if-no(%is_passtoken%,,%(%Passtoken%)%)%,%(%if-no(%is_passtoken%,,%(%passtoken%)%)%)%)%)%,%
%PASSTOKEN,%(%else-then(%PASSTOKEN%,%(%toupper(%Passtoken%)%)%)%)%,%
%passtoken,%(%else-then(%_passtoken%,%(%tolower(%Passtoken%)%)%)%)%,%
%is_passkey,%(%else-then(%is_passkey%,%(%is_Passkey%)%)%)%,%
%passkey,%(%else-then(%if-no(%is_passkey%,,%(%passkey%)%)%,%(%if-no(%is_passkey%,,%(%sha1(%uuid()%)%)%)%)%)%)%,%
%Passkey,%(%else-then(%if-no(%is_passkey%,,%(%Passkey%)%)%,%(%if-no(%is_passkey%,,%(%passkey%)%)%)%)%)%,%
%PASSKEY,%(%else-then(%PASSKEY%,%(%toupper(%Passkey%)%)%)%)%,%
%passkey,%(%else-then(%_passkey%,%(%tolower(%Passkey%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-udentify-message.t)%%
%{
    "password": {
        /*/ name of user ("user" = default user id) /*/
        "user": "%User%",  

        /*/ user's resource ("resource" = user's default resource) /*/
        "resource": "%Resource%",  

        /*/ user's password for resource ("password" = user's default password id) /*/
        "password": "%Password%",  

        /*/ user's passtoken for resource ("passtoken" = user's default passtoken id) /*/
        "passtoken": "%Passtoken%",  

        /*/ user's passkey for resource ("passkey" = user's default passkey id) /*/
        "passkey": "%Passkey%"  
    }
}
)%)%