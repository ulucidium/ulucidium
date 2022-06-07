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
%#   File: xos-lib-what-version-cpp.t
%#
%# Author: $author$
%#   Date: 1/25/2022
%########################################################################
%with(%
%%(%
%#include "%File_path%/version.hpp"

#if !defined(%FILE_IFNDEF%_VERSION_NAME)
#define %FILE_IFNDEF%_VERSION_NAME   "lib%What%"
#endif /// !defined(%FILE_IFNDEF%_VERSION_NAME)

#if !defined(%FILE_IFNDEF%_VERSION_MAJOR)
#define %FILE_IFNDEF%_VERSION_MAJOR   %do(%Version_major%)%
#endif /// !defined(%FILE_IFNDEF%_VERSION_MAJOR)

#if !defined(%FILE_IFNDEF%_VERSION_MINOR)
#define %FILE_IFNDEF%_VERSION_MINOR   %do(%Version_minor%)%
#endif /// !defined(%FILE_IFNDEF%_VERSION_MINOR)

#if !defined(%FILE_IFNDEF%_VERSION_RELEASE)
#define %FILE_IFNDEF%_VERSION_RELEASE %do(%Version_release%)%
#endif /// !defined(%FILE_IFNDEF%_VERSION_RELEASE)

#if !defined(%FILE_IFNDEF%_VERSION_BUILD_PREFIX)
///#define %FILE_IFNDEF%_VERSION_BUILD_PREFIX   %do(%Version_build_prefix%)%
#endif /// !defined(%FILE_IFNDEF%_VERSION_BUILD_PREFIX)

#if !defined(%FILE_IFNDEF%_VERSION_BUILD_DATE)
#define %FILE_IFNDEF%_VERSION_BUILD_DATE   %do(%Version_build%)%
#endif /// !defined(%FILE_IFNDEF%_VERSION_BUILD_DATE)

#if !defined(%FILE_IFNDEF%_VERSION_BUILD)
#if !defined(%FILE_IFNDEF%_VERSION_BUILD_PREFIX)
#define %FILE_IFNDEF%_VERSION_BUILD   %FILE_IFNDEF%_VERSION_BUILD_DATE
#else /// !defined(%FILE_IFNDEF%_VERSION_BUILD_PREFIX)
#define %FILE_IFNDEF%_VERSION_BUILD   %FILE_IFNDEF%_VERSION_BUILD_PREFIX-%FILE_IFNDEF%_VERSION_BUILD_DATE
#endif /// !defined(%FILE_IFNDEF%_VERSION_BUILD_PREFIX)
#endif /// !defined(%FILE_IFNDEF%_VERSION_BUILD)

#if !defined(%FILE_IFNDEF%_VERSION_BUILD_CHARS)
#define %FILE_IFNDEF%_VERSION_BUILD_CHARS   XOS_2CHARS(%FILE_IFNDEF%_VERSION_BUILD)
#endif /// !defined(%FILE_IFNDEF%_VERSION_BUILD_CHARS)

%Namespace_begin%

namespace which {
/// class versiont
template <class TExtends = lib::extended::version, class TImplements = typename TExtends::implements>
class exported versiont: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef versiont derives;

    /// constructor / destructor
    versiont(const versiont& copy): extends(copy) {
    }
    versiont(): extends
    (%FILE_IFNDEF%_VERSION_NAME, 
     %FILE_IFNDEF%_VERSION_MAJOR, %FILE_IFNDEF%_VERSION_MINOR, 
     %FILE_IFNDEF%_VERSION_RELEASE, %FILE_IFNDEF%_VERSION_BUILD_CHARS) {
    }
    virtual ~versiont() {
    }
}; /// class versiont
typedef versiont<> version;
} /// namespace which

/// class version
const %Lib_ns%::version& version::which() {
    static const %File_ns%::which::version version;
    return version;
}
%Namespace_end%
%
%)%)%