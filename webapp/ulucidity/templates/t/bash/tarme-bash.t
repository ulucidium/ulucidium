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
%#   File: tarme-bash.t
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
%is_tar,%(%else-then(%is_tar%,%(%is_Tar%)%)%)%,%
%tar,%(%else-then(%if-no(%is_tar%,,%(%tar%)%)%,%(%if-no(%is_tar%,,%(tar)%)%)%)%)%,%
%Tar,%(%else-then(%if-no(%is_tar%,,%(%Tar%)%)%,%(%if-no(%is_tar%,,%(%tar%)%)%)%)%)%,%
%TAR,%(%else-then(%TAR%,%(%toupper(%Tar%)%)%)%)%,%
%tar,%(%else-then(%_tar%,%(%tolower(%Tar%)%)%)%)%,%
%is_scripts,%(%else-then(%is_scripts%,%(%is_Scripts%)%)%)%,%
%scripts,%(%else-then(%if-no(%is_scripts%,,%(%scripts%)%)%,%(%if-no(%is_scripts%,,%(scripts)%)%)%)%)%,%
%Scripts,%(%else-then(%if-no(%is_scripts%,,%(%Scripts%)%)%,%(%if-no(%is_scripts%,,%(%scripts%)%)%)%)%)%,%
%SCRIPTS,%(%else-then(%SCRIPTS%,%(%toupper(%Scripts%)%)%)%)%,%
%scripts,%(%else-then(%_scripts%,%(%tolower(%Scripts%)%)%)%)%,%
%is_tar_dir,%(%else-then(%is_tar_dir%,%(%is_Tar_dir%)%)%)%,%
%tar_dir,%(%else-then(%if-no(%is_tar_dir%,,%(%tar_dir%)%)%,%(%if-no(%is_tar_dir%,,%(./%Tar%)%)%)%)%)%,%
%Tar_dir,%(%else-then(%if-no(%is_tar_dir%,,%(%Tar_dir%)%)%,%(%if-no(%is_tar_dir%,,%(%tar_dir%)%)%)%)%)%,%
%TAR_DIR,%(%else-then(%TAR_DIR%,%(%toupper(%Tar_dir%)%)%)%)%,%
%tar_dir,%(%else-then(%_tar_dir%,%(%tolower(%Tar_dir%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Tar%me)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%else-then(%is_Extension%,no)%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%()%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%Base% utility script)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%dirname=`dirname $0`
basename=`basename $0`

if [ "$1" != "" ] && [ "$2" != "" ]; then
script-file %Tar%me.sh script=%Tar%it > %Tar%me.sh
echo 'if [ "$1" != "" ]; then' >> %Tar%me.sh
echo 'mkdir -p' $1 >> %Tar%me.sh
echo 'if [ "$1" == "scripts" ]; then' >> %Tar%me.sh
echo 'mkdir -p' scripts >> %Tar%me.sh
echo 'cp %Tar%me.sh' scripts >> %Tar%me.sh
echo 'fi # [ "$1" == "scripts" ]; then' >> %Tar%me.sh
if [ "$3" != "" ]; then
echo 'if [ "$1" == "%Tar%" ]; then' >> %Tar%me.sh
echo 'pushd ' $1'/..' >> %Tar%me.sh
echo '%Tar%it .' $2 $3 >> %Tar%me.sh
echo 'popd' >> %Tar%me.sh
echo 'else # [ "$1" == "%Tar%" ]; then' >> %Tar%me.sh
fi # [ "$3" != "" ]; then
echo %Tar%it $1 $2 '$1' >> %Tar%me.sh
if [ "$3" != "" ]; then
echo 'fi # [ "$1" == "%Tar%" ]; then' >> %Tar%me.sh
fi # [ "$3" != "" ]; then
echo 'else # [ "$1" != "" ]; then' >> %Tar%me.sh
echo 'mkdir -p' $1 >> %Tar%me.sh
echo 'mkdir -p' scripts >> %Tar%me.sh
echo 'cp %Tar%me.sh' scripts >> %Tar%me.sh
echo %Tar%it $1 $2 scripts >> %Tar%me.sh
for d in $( ls . ); do
echo %Tar%it $1 $2 $d >> %Tar%me.sh
done
echo 'fi # [ "$1" != "" ]; then' >> %Tar%me.sh
else
if [ "$1" != "" ]; then
%Tar%me ./%Tar% $1
else
echo
echo %Tar%me.sh %Tar%it utility script
echo
echo usage $basename '[%Tar%dir]' 'hostname' '[%Tar%dir/hostname]'
echo
fi # [ "$1" != "" ]; then
fi # [ "$1" != "" ] && [ "$2" != "" ]; then
%
%)%)%