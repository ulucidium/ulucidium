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
%#   File: Application-body-include-html.t
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
%is_logo,%(%else-then(%is_logo%,%(%is_Logo%)%)%)%,%
%logo,%(%else-then(%if-no(%is_logo%,,%(%logo%)%)%,%(%if-no(%is_logo%,,%(body-logo)%)%)%)%)%,%
%Logo,%(%else-then(%if-no(%is_logo%,,%(%Logo%)%)%,%(%if-no(%is_logo%,,%(%logo%)%)%)%)%)%,%
%LOGO,%(%else-then(%LOGO%,%(%toupper(%Logo%)%)%)%)%,%
%logo,%(%else-then(%_logo%,%(%tolower(%Logo%)%)%)%)%,%
%is_header,%(%else-then(%is_header%,%(%is_Header%)%)%)%,%
%header,%(%else-then(%if-no(%is_header%,,%(%header%)%)%,%(%if-no(%is_header%,,%(header)%)%)%)%)%,%
%Header,%(%else-then(%if-no(%is_header%,,%(%Header%)%)%,%(%if-no(%is_header%,,%(%header%)%)%)%)%)%,%
%HEADER,%(%else-then(%HEADER%,%(%toupper(%Header%)%)%)%)%,%
%header,%(%else-then(%_header%,%(%tolower(%Header%)%)%)%)%,%
%is_popdown,%(%else-then(%is_popdown%,%(%is_Popdown%)%)%)%,%
%popdown,%(%else-then(%if-no(%is_popdown%,,%(%popdown%)%)%,%(%if-no(%is_popdown%,,%(popdown)%)%)%)%)%,%
%Popdown,%(%else-then(%if-no(%is_popdown%,,%(%Popdown%)%)%,%(%if-no(%is_popdown%,,%(%popdown%)%)%)%)%)%,%
%POPDOWN,%(%else-then(%POPDOWN%,%(%toupper(%Popdown%)%)%)%)%,%
%popdown,%(%else-then(%_popdown%,%(%tolower(%Popdown%)%)%)%)%,%
%is_dropdown,%(%else-then(%is_dropdown%,%(%is_Dropdown%)%)%)%,%
%dropdown,%(%else-then(%if-no(%is_dropdown%,,%(%dropdown%)%)%,%(%if-no(%is_dropdown%,,%(dropdown)%)%)%)%)%,%
%Dropdown,%(%else-then(%if-no(%is_dropdown%,,%(%Dropdown%)%)%,%(%if-no(%is_dropdown%,,%(%dropdown%)%)%)%)%)%,%
%DROPDOWN,%(%else-then(%DROPDOWN%,%(%toupper(%Dropdown%)%)%)%)%,%
%dropdown,%(%else-then(%_dropdown%,%(%tolower(%Dropdown%)%)%)%)%,%
%is_menubar,%(%else-then(%is_menubar%,%(%is_Menubar%)%)%)%,%
%menubar,%(%else-then(%if-no(%is_menubar%,,%(%menubar%)%)%,%(%if-no(%is_menubar%,,%(menubar)%)%)%)%)%,%
%Menubar,%(%else-then(%if-no(%is_menubar%,,%(%Menubar%)%)%,%(%if-no(%is_menubar%,,%(%menubar%)%)%)%)%)%,%
%MENUBAR,%(%else-then(%MENUBAR%,%(%toupper(%Menubar%)%)%)%)%,%
%menubar,%(%else-then(%_menubar%,%(%tolower(%Menubar%)%)%)%)%,%
%is_form,%(%else-then(%is_form%,%(%is_Form%)%)%)%,%
%form,%(%else-then(%if-no(%is_form%,,%(%form%)%)%,%(%if-no(%is_form%,,%(form)%)%)%)%)%,%
%Form,%(%else-then(%if-no(%is_form%,,%(%Form%)%)%,%(%if-no(%is_form%,,%(%form%)%)%)%)%)%,%
%FORM,%(%else-then(%FORM%,%(%toupper(%Form%)%)%)%)%,%
%form,%(%else-then(%_form%,%(%tolower(%Form%)%)%)%)%,%
%is_footer,%(%else-then(%is_footer%,%(%is_Footer%)%)%)%,%
%footer,%(%else-then(%if-no(%is_footer%,,%(%footer%)%)%,%(%if-no(%is_footer%,,%(footer)%)%)%)%)%,%
%Footer,%(%else-then(%if-no(%is_footer%,,%(%Footer%)%)%,%(%if-no(%is_footer%,,%(%footer%)%)%)%)%)%,%
%FOOTER,%(%else-then(%FOOTER%,%(%toupper(%Footer%)%)%)%)%,%
%footer,%(%else-then(%_footer%,%(%tolower(%Footer%)%)%)%)%,%
%%(%
%
         <!--
         =====================================================================
         === logo
         =====================================================================
         -->
         <div id="includeLogo" include="%Application%-%Logo%.html">
         <script>includeHTML('includeLogo');</script>
         </div>

         <!--
         =====================================================================
         === header
         =====================================================================
         -->
         <div id="includeHeader" include="%Application%-%Header%.html">
         <script>includeHTML('includeHeader');</script>
         </div>

         <!--
         =====================================================================
         === popdown
         =====================================================================
         -->
         <div id="includePopdown" include="%Application%-%Popdown%.html">
         <script>includeHTML('includePopdown');</script>
         </div>

         <!--
         =====================================================================
         === dropdown
         =====================================================================
         -->
         <div id="includeDropdown" include="%Application%-%Dropdown%.html">
         <script>includeHTML('includeDropdown');</script>
         </div>%
%%if-no(%Menubar%,,%(

         <!--
         =====================================================================
         === menubar
         =====================================================================
         -->
         <div id="includeMenubar" include="%ApplicationPart%-%Menubar%.html">
         <script>includeHTML('includeMenubar');</script>
         </div>
)%)%%if-no(%Form%,,%(

         <!--
         =====================================================================
         === form
         =====================================================================
         -->
         <div id="includeForm" include="%ApplicationPart%-%Form%.html">
         <script>includeHTML('includeForm');</script>
         </div>
)%)%%if-no(%Footer%,,%(

         <!--
         =====================================================================
         === footer
         =====================================================================
         -->
         <div id="includeFooter" include="%Application%-%Footer%.html">
         <script>includeHTML('includeFooter');</script>
         </div>
)%)%%
%
%)%)%