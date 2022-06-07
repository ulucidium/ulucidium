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
%#   File: Application-body-html.t
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
%is_part,%(%else-then(%is_part%,%(%is_Part%)%)%)%,%
%part,%(%else-then(%if-no(%is_part%,,%(%part%)%)%,%(%if-no(%is_part%,,%(body)%)%)%)%)%,%
%Part,%(%else-then(%if-no(%is_part%,,%(%Part%)%)%,%(%if-no(%is_part%,,%(%part%)%)%)%)%)%,%
%PART,%(%else-then(%PART%,%(%toupper(%Part%)%)%)%)%,%
%is_body_class,%(%else-then(%is_body_class%,%(%is_Body_class%)%)%)%,%
%body_class,%(%else-then(%if-no(%is_body_class%,,%(%body_class%)%)%,%(%if-no(%is_body_class%,,%(%if(%Application%,body)%)%)%)%)%)%,%
%Body_class,%(%else-then(%if-no(%is_body_class%,,%(%Body_class%)%)%,%(%if-no(%is_body_class%,,%(%body_class%)%)%)%)%)%,%
%BODY_CLASS,%(%else-then(%BODY_CLASS%,%(%toupper(%Body_class%)%)%)%)%,%
%body_class,%(%else-then(%_body_class%,%(%tolower(%Body_class%)%)%)%)%,%
%is_bodyclass,%(%else-then(%is_bodyclass%,%(%is_BodyClass%)%)%)%,%
%bodyclass,%(%else-then(%if-no(%is_bodyclass%,,%(%bodyclass%)%)%,%(%if-no(%is_bodyclass%,,%(%if-then(%then-if(%Body_class%,%( class=")%)%,%(")%)%)%)%)%)%)%,%
%BodyClass,%(%else-then(%if-no(%is_bodyclass%,,%(%BodyClass%)%)%,%(%if-no(%is_bodyclass%,,%(%bodyclass%)%)%)%)%)%,%
%BODYCLASS,%(%else-then(%BODYCLASS%,%(%toupper(%BodyClass%)%)%)%)%,%
%bodyclass,%(%else-then(%_bodyclass%,%(%tolower(%BodyClass%)%)%)%)%,%
%is_body_include,%(%else-then(%is_body_include%,%(%is_Body_include%)%)%)%,%
%body_include,%(%else-then(%if-no(%is_body_include%,,%(%body_include%)%)%,%(%if-no(%is_body_include%,,%(%if(%Application%,%(Application-body-include-html.t)%)%)%)%)%)%)%,%
%Body_include,%(%else-then(%if-no(%is_body_include%,,%(%Body_include%)%)%,%(%if-no(%is_body_include%,,%(%body_include%)%)%)%)%)%,%
%BODY_INCLUDE,%(%else-then(%BODY_INCLUDE%,%(%toupper(%Body_include%)%)%)%)%,%
%body_include,%(%else-then(%_body_include%,%(%tolower(%Body_include%)%)%)%)%,%
%is_bodyinclude,%(%else-then(%is_bodyinclude%,%(%is_BodyInclude%)%)%)%,%
%bodyinclude,%(%else-then(%if-no(%is_bodyinclude%,,%(%bodyinclude%)%)%,%(%if-no(%is_bodyinclude%,,%(%Include_path%/%Body_include%)%)%)%)%)%,%
%BodyInclude,%(%else-then(%if-no(%is_bodyinclude%,,%(%BodyInclude%)%)%,%(%if-no(%is_bodyinclude%,,%(%bodyinclude%)%)%)%)%)%,%
%BODYINCLUDE,%(%else-then(%BODYINCLUDE%,%(%toupper(%BodyInclude%)%)%)%)%,%
%bodyinclude,%(%else-then(%_bodyinclude%,%(%tolower(%BodyInclude%)%)%)%)%,%
%%(%
%
    <!--
    =====================================================================
    === body
    =====================================================================
    -->
    <body%BodyClass%>
%include(%BodyInclude%)%
    </body>
%
%)%)%