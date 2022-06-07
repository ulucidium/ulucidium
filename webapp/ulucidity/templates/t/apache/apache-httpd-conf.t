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
%#   File: apache-httpd-conf.t
%#
%# Author: $author$
%#   Date: 1/22/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_user,%(%else-then(%is_user%,%(%is_User%)%)%)%,%
%user,%(%else-then(%if-no(%is_user%,,%(%user%)%)%,%(%if-no(%is_user%,,%(user)%)%)%)%)%,%
%User,%(%else-then(%if-no(%is_user%,,%(%User%)%)%,%(%if-no(%is_user%,,%(%user%)%)%)%)%)%,%
%USER,%(%else-then(%USER%,%(%toupper(%User%)%)%)%)%,%
%user,%(%else-then(%_user%,%(%tolower(%User%)%)%)%)%,%
%is_group,%(%else-then(%is_group%,%(%is_Group%)%)%)%,%
%group,%(%else-then(%if-no(%is_group%,,%(%group%)%)%,%(%if-no(%is_group%,,%(%User%)%)%)%)%)%,%
%Group,%(%else-then(%if-no(%is_group%,,%(%Group%)%)%,%(%if-no(%is_group%,,%(%group%)%)%)%)%)%,%
%GROUP,%(%else-then(%GROUP%,%(%toupper(%Group%)%)%)%)%,%
%group,%(%else-then(%_group%,%(%tolower(%Group%)%)%)%)%,%
%is_servername,%(%else-then(%is_servername%,%(%is_ServerName%)%)%)%,%
%servername,%(%else-then(%if-no(%is_servername%,,%(%servername%)%)%,%(%if-no(%is_servername%,,%(local.local.local)%)%)%)%)%,%
%ServerName,%(%else-then(%if-no(%is_servername%,,%(%ServerName%)%)%,%(%if-no(%is_servername%,,%(%servername%)%)%)%)%)%,%
%SERVERNAME,%(%else-then(%SERVERNAME%,%(%toupper(%ServerName%)%)%)%)%,%
%servername,%(%else-then(%_servername%,%(%tolower(%ServerName%)%)%)%)%,%
%is_serveradmin,%(%else-then(%is_serveradmin%,%(%is_ServerAdmin%)%)%)%,%
%serveradmin,%(%else-then(%if-no(%is_serveradmin%,,%(%serveradmin%)%)%,%(%if-no(%is_serveradmin%,,%(%User%@%ServerName%)%)%)%)%)%,%
%ServerAdmin,%(%else-then(%if-no(%is_serveradmin%,,%(%ServerAdmin%)%)%,%(%if-no(%is_serveradmin%,,%(%serveradmin%)%)%)%)%)%,%
%SERVERADMIN,%(%else-then(%SERVERADMIN%,%(%toupper(%ServerAdmin%)%)%)%)%,%
%serveradmin,%(%else-then(%_serveradmin%,%(%tolower(%ServerAdmin%)%)%)%)%,%
%is_home,%(%else-then(%is_home%,%(%is_Home%)%)%)%,%
%home,%(%else-then(%if-no(%is_home%,,%(%home%)%)%,%(%if-no(%is_home%,,%(%else-then(%User%,user)%)%)%)%)%)%,%
%Home,%(%else-then(%if-no(%is_home%,,%(%Home%)%)%,%(%if-no(%is_home%,,%(%home%)%)%)%)%)%,%
%HOME,%(%else-then(%HOME%,%(%toupper(%Home%)%)%)%)%,%
%home,%(%else-then(%_home%,%(%tolower(%Home%)%)%)%)%,%
%is_source,%(%else-then(%is_source%,%(%is_Source%)%)%)%,%
%source,%(%else-then(%if-no(%is_source%,,%(%source%)%)%,%(%if-no(%is_source%,,%(%Home%/source)%)%)%)%)%,%
%Source,%(%else-then(%if-no(%is_source%,,%(%Source%)%)%,%(%if-no(%is_source%,,%(%source%)%)%)%)%)%,%
%SOURCE,%(%else-then(%SOURCE%,%(%toupper(%Source%)%)%)%)%,%
%source,%(%else-then(%_source%,%(%tolower(%Source%)%)%)%)%,%
%is_build,%(%else-then(%is_build%,%(%is_Build%)%)%)%,%
%build,%(%else-then(%if-no(%is_build%,,%(%build%)%)%,%(%if-no(%is_build%,,%(%Home%/build)%)%)%)%)%,%
%Build,%(%else-then(%if-no(%is_build%,,%(%Build%)%)%,%(%if-no(%is_build%,,%(%build%)%)%)%)%)%,%
%BUILD,%(%else-then(%BUILD%,%(%toupper(%Build%)%)%)%)%,%
%build,%(%else-then(%_build%,%(%tolower(%Build%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-apache-httpd-conf.t)%%
%%then-if(%if-no(%is_User%,,%(
User %User%
)%)%%
%%if-no(%is_Group%,,%(Group %Group%
)%)%,%(
#
# If you wish httpd to run as a different user or group, you must run
# httpd as root initially and it will switch.
#
# User/Group: The name (or #number) of the user/group to run httpd as.
# It is usually good practice to create a dedicated user and group for
# running httpd, as with most system services.
#)%)%%
%%then-if(%if-no(%is_ServerName%,,%(
#
# ServerName gives the name and port that the server uses to identify itself.
# This can often be determined automatically, but we recommend you specify
# it explicitly to prevent problems during startup.
#
# If your host doesn't have a registered DNS name, enter its IP address here.
#
ServerName %ServerName%
)%)%%
%%if-no(%is_ServerAdmin%,,%(
#
# ServerAdmin: Your address, where problems with the server should be
# e-mailed.  This address appears on some server-generated pages, such
# as error documents.  e.g. admin@your-domain.com
#
ServerAdmin %ServerAdmin%
)%)%,%()%)%%
%
########################################################################
# Aliases 
# ... 
########################################################################
<IfModule mod_alias.c>
%
%%then-if(%parse(Home;Source,;,,,,%(%
%%with(%(%
%%if-no(%do(%%is_%Alias%%%)%,,%(
########################################################################
# Alias /%tolower(%Alias%)%/
# ...
Alias /%tolower(%Alias%)%/ "/%do(%%%Alias%%%)%/"
<Directory "/%do(%%%Alias%%%)%/">
    Options Indexes MultiViews FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
    Require all granted
</Directory>
# ...
# Alias /%tolower(%Alias%)%/
########################################################################
)%)%%
%)%)%%
%)%,Alias)%,%(
#
# Alias: Maps web paths into filesystem paths and is used to
# access content that does not live under the DocumentRoot.
# Example:
# Alias /webpath /full/filesystem/path
#
# If you include a trailing / on /webpath then the server will
# require it to be present in the URL.  You will also likely
# need to provide a <Directory> section to allow access to
# the filesystem path.
#)%)%%
%%then-if(%parse(Build,;,,,,%(%
%%with(%(%
%%if-no(%do(%%is_%ScriptAlias%%%)%,,%(
########################################################################
# ScriptAlias /%tolower(%ScriptAlias%)%/
# ...
ScriptAlias /%tolower(%ScriptAlias%)%/ "/%do(%%%ScriptAlias%%%)%/"
<Directory "/%do(%%%ScriptAlias%%%)%/">
#    PassEnv LD_LIBRARY_PATH
#    PassEnv DYLD_LIBRARY_PATH
#    PassEnv HTTPD_HOST
#    PassEnv HTTPD_USER
#    PassEnv HTTPD_USER_HOME
#    SetEnv HOST localhost
#    SetEnv USER user
#    SetEnv HOME /user
#    Options Indexes MultiViews FollowSymLinks
    Options FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
    Require all granted
</Directory>
# ...
# ScriptAlias /%tolower(%ScriptAlias%)%/
########################################################################
)%)%%
%)%)%%
%)%,ScriptAlias)%,%(
#
# ScriptAlias: This controls which directories contain server scripts.
# ScriptAliases are essentially the same as Aliases, except that
# documents in the target directory are treated as applications and
# run by the server when requested rather than as documents sent to the
# client.  The same rules about trailing "/" apply to ScriptAlias
# directives as to Alias.
#)%)%%
%%if-no(%is_Framework%,,%(%
%%parse(%Framework%,;,,,,%(
########################################################################
# Alias /%do(%Framework%)%/
# ...
Alias /%do(%Framework%)%/ "/%do(%else-then(%Framework_path%,%Framework%)%)%/"
<Directory "/%do(%else-then(%Framework_path%,%Framework%)%)%/">
    Options Indexes MultiViews FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
    Require all granted
</Directory>
# ...
# Alias /%do(%Framework%)%/
########################################################################
)%,Framework)%%
%)%)%%
%%if-no(%is_Framework_cgi%,,%(%
%%parse(%Framework_cgi%,;,,,,%(
########################################################################
# ScriptAlias /%do(%Framework_cgi%)%/
# ...
ScriptAlias /%do(%Framework_cgi%)%/ "/%do(%else-then(%Framework_cgi_path%,%Framework_cgi%)%)%/"
<Directory "/%do(%else-then(%Framework_cgi_path%,%Framework_cgi%)%)%/">
    Options Indexes MultiViews FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
    Require all granted
</Directory>
# ...
# Alias /%do(%Framework_cgi%)%/
########################################################################
)%,Framework_cgi)%%
%)%)%%
%
</IfModule>
########################################################################
# ... 
# Aliases 
########################################################################
%
%)%)%