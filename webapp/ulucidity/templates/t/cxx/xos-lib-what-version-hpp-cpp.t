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
%#   File: xos-lib-what-version-hpp-cpp.t
%#
%# Author: $author$
%#   Date: 1/25/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_what,%(%else-then(%is_what%,%(%is_What%)%)%)%,%
%what,%(%else-then(%if-no(%is_what%,,%(%what%)%)%,%(%if-no(%is_what%,,%(%Framework%)%)%)%)%)%,%
%What,%(%else-then(%if-no(%is_what%,,%(%What%)%)%,%(%if-no(%is_what%,,%(%what%)%)%)%)%)%,%
%WHAT,%(%else-then(%WHAT%,%(%toupper(%What%)%)%)%)%,%
%what,%(%else-then(%_what%,%(%tolower(%What%)%)%)%)%,%
%is_lib_namespace,%(%else-then(%is_lib_namespace%,%(%is_Lib_namespace%)%)%)%,%
%lib_namespace,%(%else-then(%if-no(%is_lib_namespace%,,%(%lib_namespace%)%)%,%(%if-no(%is_lib_namespace%,,%(xos/lib)%)%)%)%)%,%
%Lib_namespace,%(%else-then(%if-no(%is_lib_namespace%,,%(%Lib_namespace%)%)%,%(%if-no(%is_lib_namespace%,,%(%lib_namespace%)%)%)%)%)%,%
%LIB_NAMESPACE,%(%else-then(%LIB_NAMESPACE%,%(%toupper(%Lib_namespace%)%)%)%)%,%
%lib_namespace,%(%else-then(%_lib_namespace%,%(%tolower(%Lib_namespace%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(%Lib_namespace%/%What%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_version_major,%(%else-then(%is_version_major%,%(%is_Version_major%)%)%)%,%
%version_major,%(%else-then(%if-no(%is_version_major%,,%(%version_major%)%)%,%(%if-no(%is_version_major%,,%(0)%)%)%)%)%,%
%Version_major,%(%else-then(%if-no(%is_version_major%,,%(%Version_major%)%)%,%(%if-no(%is_version_major%,,%(%version_major%)%)%)%)%)%,%
%VERSION_MAJOR,%(%else-then(%VERSION_MAJOR%,%(%toupper(%Version_major%)%)%)%)%,%
%version_major,%(%else-then(%_version_major%,%(%tolower(%Version_major%)%)%)%)%,%
%is_version_minor,%(%else-then(%is_version_minor%,%(%is_Version_minor%)%)%)%,%
%version_minor,%(%else-then(%if-no(%is_version_minor%,,%(%version_minor%)%)%,%(%if-no(%is_version_minor%,,%(%Version_major%)%)%)%)%)%,%
%Version_minor,%(%else-then(%if-no(%is_version_minor%,,%(%Version_minor%)%)%,%(%if-no(%is_version_minor%,,%(%version_minor%)%)%)%)%)%,%
%VERSION_MINOR,%(%else-then(%VERSION_MINOR%,%(%toupper(%Version_minor%)%)%)%)%,%
%version_minor,%(%else-then(%_version_minor%,%(%tolower(%Version_minor%)%)%)%)%,%
%is_version_release,%(%else-then(%is_version_release%,%(%is_Version_release%)%)%)%,%
%version_release,%(%else-then(%if-no(%is_version_release%,,%(%version_release%)%)%,%(%if-no(%is_version_release%,,%(0)%)%)%)%)%,%
%Version_release,%(%else-then(%if-no(%is_version_release%,,%(%Version_release%)%)%,%(%if-no(%is_version_release%,,%(%version_release%)%)%)%)%)%,%
%VERSION_RELEASE,%(%else-then(%VERSION_RELEASE%,%(%toupper(%Version_release%)%)%)%)%,%
%version_release,%(%else-then(%_version_release%,%(%tolower(%Version_release%)%)%)%)%,%
%is_version_build,%(%else-then(%is_version_build%,%(%is_Version_build%)%)%)%,%
%version_build,%(%else-then(%if-no(%is_version_build%,,%(%version_build%)%)%,%(%if-no(%is_version_build%,,%(%date()%)%)%)%)%)%,%
%Version_build,%(%else-then(%if-no(%is_version_build%,,%(%Version_build%)%)%,%(%if-no(%is_version_build%,,%(%version_build%)%)%)%)%)%,%
%VERSION_BUILD,%(%else-then(%VERSION_BUILD%,%(%toupper(%Version_build%)%)%)%)%,%
%version_build,%(%else-then(%_version_build%,%(%tolower(%Version_build%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(version)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(cpp)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_file_type,%(%else-then(%is_file_type%,%(%is_File_type%)%)%)%,%
%file_type,%(%else-then(%if-no(%is_file_type%,,%(%file_type%)%)%,%(%if-no(%is_file_type%,,%(%
%%if(%equal(%Extension%,hpp)%%equal(%Extension%,h)%,hpp,cpp)%)%)%)%)%)%,%
%File_type,%(%else-then(%if-no(%is_file_type%,,%(%File_type%)%)%,%(%if-no(%is_file_type%,,%(%file_type%)%)%)%)%)%,%
%FILE_TYPE,%(%else-then(%FILE_TYPE%,%(%toupper(%File_type%)%)%)%)%,%
%file_type,%(%else-then(%_file_type%,%(%tolower(%File_type%)%)%)%)%,%
%is_file_path,%(%else-then(%is_file_path%,%(%is_File_path%)%)%)%,%
%file_path,%(%else-then(%if-no(%is_file_path%,,%(%file_path%)%)%,%(%if-no(%is_file_path%,,%(%parse(%Namespace%,::,,/)%)%)%)%)%)%,%
%File_path,%(%else-then(%if-no(%is_file_path%,,%(%File_path%)%)%,%(%if-no(%is_file_path%,,%(%file_path%)%)%)%)%)%,%
%FILE_PATH,%(%else-then(%FILE_PATH%,%(%toupper(%File_path%)%)%)%)%,%
%file_path,%(%else-then(%_file_path%,%(%tolower(%File_path%)%)%)%)%,%
%is_file_ifndef,%(%else-then(%is_file_ifndef%,%(%is_File_ifndef%)%)%)%,%
%file_ifndef,%(%else-then(%if-no(%is_file_ifndef%,,%(%file_ifndef%)%)%,%(%if-no(%is_file_ifndef%,,%(%
%%parse(%File_path%,/,,_)%)%)%)%)%)%,%
%File_ifndef,%(%else-then(%if-no(%is_file_ifndef%,,%(%File_ifndef%)%)%,%(%if-no(%is_file_ifndef%,,%(%file_ifndef%)%)%)%)%)%,%
%FILE_IFNDEF,%(%else-then(%FILE_IFNDEF%,%(%toupper(%File_ifndef%)%)%)%)%,%
%file_ifndef,%(%else-then(%_file_ifndef%,%(%tolower(%File_ifndef%)%)%)%)%,%
%is_file_ifndef_begin,%(%else-then(%is_file_ifndef_begin%,%(%is_File_ifndef_begin%)%)%)%,%
%file_ifndef_begin,%(%else-then(%if-no(%is_file_ifndef_begin%,,%(%file_ifndef_begin%)%)%,%(%if-no(%is_file_ifndef_begin%,,%
%%(#if !defined(%FILE_IFNDEF%_VERSION_HPP)
#define %FILE_IFNDEF%_VERSION_HPP
)%)%)%)%)%,%
%File_ifndef_begin,%(%else-then(%if-no(%is_file_ifndef_begin%,,%(%File_ifndef_begin%)%)%,%(%if-no(%is_file_ifndef_begin%,,%(%file_ifndef_begin%)%)%)%)%)%,%
%FILE_IFNDEF_BEGIN,%(%else-then(%FILE_IFNDEF_BEGIN%,%(%toupper(%File_ifndef_begin%)%)%)%)%,%
%file_ifndef_begin,%(%else-then(%_file_ifndef_begin%,%(%tolower(%File_ifndef_begin%)%)%)%)%,%
%is_file_ifndef_end,%(%else-then(%is_file_ifndef_end%,%(%is_File_ifndef_end%)%)%)%,%
%file_ifndef_end,%(%else-then(%if-no(%is_file_ifndef_end%,,%(%file_ifndef_end%)%)%,%(%if-no(%is_file_ifndef_end%,,%
%%(#endif /// !defined(%FILE_IFNDEF%_VERSION_HPP)
)%)%)%)%)%,%
%File_ifndef_end,%(%else-then(%if-no(%is_file_ifndef_end%,,%(%File_ifndef_end%)%)%,%(%if-no(%is_file_ifndef_end%,,%(%file_ifndef_end%)%)%)%)%)%,%
%FILE_IFNDEF_END,%(%else-then(%FILE_IFNDEF_END%,%(%toupper(%File_ifndef_end%)%)%)%)%,%
%file_ifndef_end,%(%else-then(%_file_ifndef_end%,%(%tolower(%File_ifndef_end%)%)%)%)%,%
%is_file_ns,%(%else-then(%is_file_ns%,%(%is_File_ns%)%)%)%,%
%file_ns,%(%else-then(%if-no(%is_file_ns%,,%(%file_ns%)%)%,%(%if-no(%is_file_ns%,,%(%
%%parse(%File_path%,/,,::)%)%)%)%)%)%,%
%File_ns,%(%else-then(%if-no(%is_file_ns%,,%(%File_ns%)%)%,%(%if-no(%is_file_ns%,,%(%file_ns%)%)%)%)%)%,%
%FILE_NS,%(%else-then(%FILE_NS%,%(%toupper(%File_ns%)%)%)%)%,%
%file_ns,%(%else-then(%_file_ns%,%(%tolower(%File_ns%)%)%)%)%,%
%is_lib_path,%(%else-then(%is_lib_path%,%(%is_Lib_path%)%)%)%,%
%lib_path,%(%else-then(%if-no(%is_lib_path%,,%(%lib_path%)%)%,%(%if-no(%is_lib_path%,,%(%
%%parse(%Lib_namespace%,::,,/)%)%)%)%)%)%,%
%Lib_path,%(%else-then(%if-no(%is_lib_path%,,%(%Lib_path%)%)%,%(%if-no(%is_lib_path%,,%(%lib_path%)%)%)%)%)%,%
%LIB_PATH,%(%else-then(%LIB_PATH%,%(%toupper(%Lib_path%)%)%)%)%,%
%lib_path,%(%else-then(%_lib_path%,%(%tolower(%Lib_path%)%)%)%)%,%
%is_lib_ns,%(%else-then(%is_lib_ns%,%(%is_Lib_ns%)%)%)%,%
%lib_ns,%(%else-then(%if-no(%is_lib_ns%,,%(%lib_ns%)%)%,%(%if-no(%is_lib_ns%,,%(%
%%parse(%lib_namespace%,/,,::)%)%)%)%)%)%,%
%Lib_ns,%(%else-then(%if-no(%is_lib_ns%,,%(%Lib_ns%)%)%,%(%if-no(%is_lib_ns%,,%(%lib_ns%)%)%)%)%)%,%
%LIB_NS,%(%else-then(%LIB_NS%,%(%toupper(%Lib_ns%)%)%)%)%,%
%lib_ns,%(%else-then(%_lib_ns%,%(%tolower(%Lib_ns%)%)%)%)%,%
%is_namespace_begin,%(%else-then(%is_namespace_begin%,%(%is_Namespace_begin%)%)%)%,%
%namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%
%%parse(%File_path%,/,,,,%(namespace %ns% {
)%,ns)%)%)%)%)%)%,%
%Namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%Namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%)%)%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%is_namespace_end,%(%else-then(%is_namespace_end%,%(%is_Namespace_end%)%)%)%,%
%namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%
%
%reverse-parse(%File_path%,/,,,,%(} /// namespace %ns%
)%,ns)%)%)%)%)%)%,%
%Namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%Namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%)%)%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-hpp-cpp.t)%%
%%include(%Include_path%/xos-lib-what-version-%File_type%.t)%%
%)%)%