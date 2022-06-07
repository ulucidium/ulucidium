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
%#   File: Application-home-html.t
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
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(Home)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%if-no(%is_page%,,%(%page%)%)%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_page%,%(%tolower(%Page%)%)%)%)%,%
%is_logo,%(%else-then(%is_logo%,%(%is_Logo%)%)%)%,%
%logo,%(%else-then(%if-no(%is_logo%,,%(%logo%)%)%,%(%if-no(%is_logo%,,%(home-logo)%)%)%)%)%,%
%Logo,%(%else-then(%if-no(%is_logo%,,%(%Logo%)%)%,%(%if-no(%is_logo%,,%(%logo%)%)%)%)%)%,%
%LOGO,%(%else-then(%LOGO%,%(%toupper(%Logo%)%)%)%)%,%
%logo,%(%else-then(%_logo%,%(%tolower(%Logo%)%)%)%)%,%
%is_menubar,%(%else-then(%is_menubar%,%(%is_Menubar%)%)%)%,%
%menubar,%(%else-then(%if-no(%is_menubar%,,%(%menubar%)%)%,%(%if-no(%is_menubar%,,%(no)%)%)%)%)%,%
%Menubar,%(%else-then(%if-no(%is_menubar%,,%(%Menubar%)%)%,%(%if-no(%is_menubar%,,%(%menubar%)%)%)%)%)%,%
%MENUBAR,%(%else-then(%MENUBAR%,%(%toupper(%Menubar%)%)%)%)%,%
%menubar,%(%else-then(%_menubar%,%(%tolower(%Menubar%)%)%)%)%,%
%is_form,%(%else-then(%is_form%,%(%is_Form%)%)%)%,%
%form,%(%else-then(%if-no(%is_form%,,%(%form%)%)%,%(%if-no(%is_form%,,%(no)%)%)%)%)%,%
%Form,%(%else-then(%if-no(%is_form%,,%(%Form%)%)%,%(%if-no(%is_form%,,%(%form%)%)%)%)%)%,%
%FORM,%(%else-then(%FORM%,%(%toupper(%Form%)%)%)%)%,%
%form,%(%else-then(%_form%,%(%tolower(%Form%)%)%)%)%,%
%is_footer,%(%else-then(%is_footer%,%(%is_Footer%)%)%)%,%
%footer,%(%else-then(%if-no(%is_footer%,,%(%footer%)%)%,%(%if-no(%is_footer%,,%()%)%)%)%)%,%
%Footer,%(%else-then(%if-no(%is_footer%,,%(%Footer%)%)%,%(%if-no(%is_footer%,,%(%footer%)%)%)%)%)%,%
%FOOTER,%(%else-then(%FOOTER%,%(%toupper(%Footer%)%)%)%)%,%
%footer,%(%else-then(%_footer%,%(%tolower(%Footer%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-html.t)%%
%)%)%