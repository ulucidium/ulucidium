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
%#   File: xos-app-console-main-which-run-hpp.t
%#
%# Author: $author$
%#   Date: 1/3/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_which,%(%else-then(%is_which%,%(%is_Which%)%)%)%,%
%which,%(%else-then(%if-no(%is_which%,,%(%which%)%)%,%(%if-no(%is_which%,,%(which)%)%)%)%)%,%
%Which,%(%else-then(%if-no(%is_which%,,%(%Which%)%)%,%(%if-no(%is_which%,,%(%which%)%)%)%)%)%,%
%WHICH,%(%else-then(%WHICH%,%(%toupper(%Which%)%)%)%)%,%
%which,%(%else-then(%_which%,%(%tolower(%Which%)%)%)%)%,%
%is_whichset,%(%else-then(%is_whichset%,%(%is_WhichSet%)%)%)%,%
%whichset,%(%else-then(%if-no(%is_whichset%,,%(%whichset%)%)%,%(%if-no(%is_whichset%,,%()%)%)%)%)%,%
%WhichSet,%(%else-then(%if-no(%is_whichset%,,%(%WhichSet%)%)%,%(%if-no(%is_whichset%,,%(%whichset%)%)%)%)%)%,%
%WHICHSET,%(%else-then(%WHICHSET%,%(%toupper(%WhichSet%)%)%)%)%,%
%whichset,%(%else-then(%_whichset%,%(%tolower(%WhichSet%)%)%)%)%,%
%is_setwhich,%(%else-then(%is_setwhich%,%(%is_SetWhich%)%)%)%,%
%setwhich,%(%else-then(%if-no(%is_setwhich%,,%(%setwhich%)%)%,%(%if-no(%is_setwhich%,,%(%Which%)%)%)%)%)%,%
%SetWhich,%(%else-then(%if-no(%is_setwhich%,,%(%SetWhich%)%)%,%(%if-no(%is_setwhich%,,%(%setwhich%)%)%)%)%)%,%
%SETWHICH,%(%else-then(%SETWHICH%,%(%toupper(%SetWhich%)%)%)%)%,%
%setwhich,%(%else-then(%_setwhich%,%(%tolower(%SetWhich%)%)%)%)%,%
%is_run,%(%else-then(%is_run%,%(%is_Run%)%)%)%,%
%run,%(%else-then(%if-no(%is_run%,,%(%run%)%)%,%(%if-no(%is_run%,,%(run)%)%)%)%)%,%
%Run,%(%else-then(%if-no(%is_run%,,%(%Run%)%)%,%(%if-no(%is_run%,,%(%run%)%)%)%)%)%,%
%RUN,%(%else-then(%RUN%,%(%toupper(%Run%)%)%)%)%,%
%run,%(%else-then(%_run%,%(%tolower(%Run%)%)%)%)%,%
%is_params,%(%else-then(%is_params%,%(%is_Params%)%)%)%,%
%params,%(%else-then(%if-no(%is_params%,,%(%params%)%)%,%(%if-no(%is_params%,,%()%)%)%)%)%,%
%Params,%(%else-then(%if-no(%is_params%,,%(%Params%)%)%,%(%if-no(%is_params%,,%(%params%)%)%)%)%)%,%
%PARAMS,%(%else-then(%PARAMS%,%(%toupper(%Params%)%)%)%)%,%
%params,%(%else-then(%_params%,%(%tolower(%Params%)%)%)%)%,%
%is_args,%(%else-then(%is_args%,%(%is_Args%)%)%)%,%
%args,%(%else-then(%if-no(%is_args%,,%(%args%)%)%,%(%if-no(%is_args%,,%()%)%)%)%)%,%
%Args,%(%else-then(%if-no(%is_args%,,%(%Args%)%)%,%(%if-no(%is_args%,,%(%args%)%)%)%)%)%,%
%ARGS,%(%else-then(%ARGS%,%(%toupper(%Args%)%)%)%)%,%
%args,%(%else-then(%_args%,%(%tolower(%Args%)%)%)%)%,%
%is_returntype,%(%else-then(%is_returntype%,%(%is_ReturnType%)%)%)%,%
%returntype,%(%else-then(%if-no(%is_returntype%,,%(%returntype%)%)%,%(%if-no(%is_returntype%,,%(int)%)%)%)%)%,%
%ReturnType,%(%else-then(%if-no(%is_returntype%,,%(%ReturnType%)%)%,%(%if-no(%is_returntype%,,%(%returntype%)%)%)%)%)%,%
%RETURNTYPE,%(%else-then(%RETURNTYPE%,%(%toupper(%ReturnType%)%)%)%)%,%
%returntype,%(%else-then(%_returntype%,%(%tolower(%ReturnType%)%)%)%)%,%
%is_return,%(%else-then(%is_return%,%(%is_Return%)%)%)%,%
%return,%(%else-then(%if-no(%is_return%,,%(%return%)%)%,%(%if-no(%is_return%,,%(err)%)%)%)%)%,%
%Return,%(%else-then(%if-no(%is_return%,,%(%Return%)%)%,%(%if-no(%is_return%,,%(%return%)%)%)%)%)%,%
%RETURN,%(%else-then(%RETURN%,%(%toupper(%Return%)%)%)%)%,%
%return,%(%else-then(%_return%,%(%tolower(%Return%)%)%)%)%,%
%is_returnvalue,%(%else-then(%is_returnvalue%,%(%is_ReturnValue%)%)%)%,%
%returnvalue,%(%else-then(%if-no(%is_returnvalue%,,%(%returnvalue%)%)%,%(%if-no(%is_returnvalue%,,%(0)%)%)%)%)%,%
%ReturnValue,%(%else-then(%if-no(%is_returnvalue%,,%(%ReturnValue%)%)%,%(%if-no(%is_returnvalue%,,%(%returnvalue%)%)%)%)%)%,%
%RETURNVALUE,%(%else-then(%RETURNVALUE%,%(%toupper(%ReturnValue%)%)%)%)%,%
%returnvalue,%(%else-then(%_returnvalue%,%(%tolower(%ReturnValue%)%)%)%)%,%
%is_stdparams,%(%else-then(%is_stdparams%,%(%is_StdParams%)%)%)%,%
%stdparams,%(%else-then(%if-no(%is_stdparams%,,%(%stdparams%)%)%,%(%if-no(%is_stdparams%,,%(int argc, char_t** argv, char_t** env)%)%)%)%)%,%
%StdParams,%(%else-then(%if-no(%is_stdparams%,,%(%StdParams%)%)%,%(%if-no(%is_stdparams%,,%(%stdparams%)%)%)%)%)%,%
%STDPARAMS,%(%else-then(%STDPARAMS%,%(%toupper(%StdParams%)%)%)%)%,%
%stdparams,%(%else-then(%_stdparams%,%(%tolower(%StdParams%)%)%)%)%,%
%is_stdargs,%(%else-then(%is_stdargs%,%(%is_StdArgs%)%)%)%,%
%stdargs,%(%else-then(%if-no(%is_stdargs%,,%(%stdargs%)%)%,%(%if-no(%is_stdargs%,,%(argc, argv, env)%)%)%)%)%,%
%StdArgs,%(%else-then(%if-no(%is_stdargs%,,%(%StdArgs%)%)%,%(%if-no(%is_stdargs%,,%(%stdargs%)%)%)%)%)%,%
%STDARGS,%(%else-then(%STDARGS%,%(%toupper(%StdArgs%)%)%)%)%,%
%stdargs,%(%else-then(%_stdargs%,%(%tolower(%StdArgs%)%)%)%)%,%
%is_set,%(%else-then(%is_set%,%(%is_Set%)%)%)%,%
%set,%(%else-then(%if-no(%is_set%,,%(%set%)%)%,%(%if-no(%is_set%,,%(set)%)%)%)%)%,%
%Set,%(%else-then(%if-no(%is_set%,,%(%Set%)%)%,%(%if-no(%is_set%,,%(%set%)%)%)%)%)%,%
%SET,%(%else-then(%SET%,%(%toupper(%Set%)%)%)%)%,%
%set,%(%else-then(%_set%,%(%tolower(%Set%)%)%)%)%,%
%is_unset,%(%else-then(%is_unset%,%(%is_Unset%)%)%)%,%
%unset,%(%else-then(%if-no(%is_unset%,,%(%unset%)%)%,%(%if-no(%is_unset%,,%(unset)%)%)%)%)%,%
%Unset,%(%else-then(%if-no(%is_unset%,,%(%Unset%)%)%,%(%if-no(%is_unset%,,%(%unset%)%)%)%)%)%,%
%UNSET,%(%else-then(%UNSET%,%(%toupper(%Unset%)%)%)%)%,%
%unset,%(%else-then(%_unset%,%(%tolower(%Unset%)%)%)%)%,%
%is_setrun,%(%else-then(%is_setrun%,%(%is_SetRun%)%)%)%,%
%setrun,%(%else-then(%if-no(%is_setrun%,,%(%setrun%)%)%,%(%if-no(%is_setrun%,,%(%Run%)%)%)%)%)%,%
%SetRun,%(%else-then(%if-no(%is_setrun%,,%(%SetRun%)%)%,%(%if-no(%is_setrun%,,%(%setrun%)%)%)%)%)%,%
%SETRUN,%(%else-then(%SETRUN%,%(%toupper(%SetRun%)%)%)%)%,%
%setrun,%(%else-then(%_setrun%,%(%tolower(%SetRun%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(xos/app/console)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_namespace_begin,%(%else-then(%is_namespace_begin%,%(%is_Namespace_begin%)%)%)%,%
%namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%
%%(
%parse(%Namespace%,/,,,,%(namespace %ns% {
)%,ns)%)%)%)%)%)%,%
%Namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%Namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%)%)%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%is_namespace_end,%(%else-then(%is_namespace_end%,%(%is_Namespace_end%)%)%)%,%
%namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%
%%(
%reverse-parse(%Namespace%,/,,,,%(} /// namespace %ns%
)%,ns)%)%)%)%)%)%,%
%Namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%Namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%)%)%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%is_ifndef_namespace,%(%else-then(%is_ifndef_namespace%,%(%is_Ifndef_namespace%)%)%)%,%
%ifndef_namespace,%(%else-then(%if-no(%is_ifndef_namespace%,,%(%ifndef_namespace%)%)%,%(%if-no(%is_ifndef_namespace%,,%(%parse(%Namespace%,/,,_,,%(%ns%)%,ns)%)%)%)%)%)%,%
%Ifndef_namespace,%(%else-then(%if-no(%is_ifndef_namespace%,,%(%Ifndef_namespace%)%)%,%(%if-no(%is_ifndef_namespace%,,%(%ifndef_namespace%)%)%)%)%)%,%
%IFNDEF_NAMESPACE,%(%else-then(%IFNDEF_NAMESPACE%,%(%toupper(%Ifndef_namespace%)%)%)%)%,%
%ifndef_namespace,%(%else-then(%_ifndef_namespace%,%(%tolower(%Ifndef_namespace%)%)%)%)%,%
%is_class,%(%else-then(%is_class%,%(%is_Class%)%)%)%,%
%class,%(%else-then(%if-no(%is_class%,,%(%class%)%)%,%(%if-no(%is_class%,,%(main)%)%)%)%)%,%
%Class,%(%else-then(%if-no(%is_class%,,%(%Class%)%)%,%(%if-no(%is_class%,,%(%class%)%)%)%)%)%,%
%CLASS,%(%else-then(%CLASS%,%(%toupper(%Class%)%)%)%)%,%
%class,%(%else-then(%_class%,%(%tolower(%Class%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%Class%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(hpp)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%if-then(%Base%,.)%%Extension%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_file_ifndef_define,%(%else-then(%is_file_ifndef_define%,%(%is_File_ifndef_define%)%)%)%,%
%file_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%if-then(%IFNDEF_NAMESPACE%,_)%%if-then(%CLASS%,_)%%EXTENSION%)%)%)%)%)%,%
%File_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%File_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE,%(%else-then(%FILE_IFNDEF_DEFINE%,%(%toupper(%File_ifndef_define%)%)%)%)%,%
%file_ifndef_define,%(%else-then(%_file_ifndef_define%,%(%tolower(%File_ifndef_define%)%)%)%)%,%
%File_ifndef_begin,%(%else-then(%File_ifndef_begin%,%(#ifndef %File_ifndef_define%
#define %File_ifndef_define%
)%)%)%,%
%FILE_IFNDEF_BEGIN,%(%else-then(%FILE_IFNDEF_BEGIN%,%(%toupper(%File_ifndef_begin%)%)%)%)%,%
%file_ifndef_begin,%(%else-then(%_File_ifndef_begin%,%(%tolower(%File_ifndef_begin%)%)%)%)%,%
%File_ifndef_end,%(%else-then(%File_ifndef_end%,%(
#endif /// %File_ifndef_define%
)%)%)%,%
%%(%
%%if-no(%is_file%,,%(%
%%if-no(%is_class%,,%(%
%%include(%Include_path%/file-hpp.t)%%
%%File_ifndef_begin%%
%)%)%%
%)%)%%
%%if-no(%is_class%,,%(%
%%Namespace_begin%
/// class %Class%
class exported %Class% {
public:
    %Class%() {}
    virtual ~%Class%() {}
private
    %Class%(const %Class% &copy) {}
protected:
)%)%%
%%if-no(%is_run%,,%(
    /// ...%if-then(%Which%,_)%%Run%%if-no(%is_Derives_run%,,%(
    %ReturnType% %(()%derives::*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%);)%)%
    virtual %ReturnType% %if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;%if-no(%is_Derives_run%,,%(
        if (%if-then(%Which%,_)%%Run%_) {
            %Return% = %(()%this->*%if-then(%Which%,_)%%Run%_%())%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%);
        } else {
            %Return% = default_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%);
        })%)%
        return %Return%;
    }%if-no(%is_Derives_run%,,%(
    virtual %ReturnType% default_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        /// err = extends::run(argc, argv, env);
        return %Return%;
    })%)%
    virtual %ReturnType% before_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        return %Return%;
    }
    virtual %ReturnType% after_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        return %Return%;
    }
    virtual %ReturnType% all_%if-then(%Which%,_)%%Run%(%if-then(%Params%,%(%if(%StdParams%,%(, )%)%)%)%%StdParams%) {
        %ReturnType% %Return% = %ReturnValue%;
        if (!(%Return% = before_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%))) {
            %ReturnType% %Return%2 = 0;
            %Return% = %if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%);
            if ((%Return%2 = after_%if-then(%Which%,_)%%Run%(%if-then(%Args%,%(%if(%StdArgs%,%(, )%)%)%)%%StdArgs%))) {
                if (!(%Return%)) %Return% = %Return%2;
            }
        }
        return %Return%;
    }%if-no(%is_SetRun%,,%(
    virtual %SetReturnType% %if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        %if-then(%WhichSet%,_)%%SetRun%_ = &derives::all_%if-then(%SetWhich%,_)%%Run%;
        return %SetReturn%;
    }
    virtual %SetReturnType% before_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% after_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SettdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% all_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        if (!(%SetReturn% = before_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
            %SetReturnType% %SetReturn%2 = 0;
            %SetReturn% = %if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%);
            if ((%SetReturn%2 = after_%if-then(%Set%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
                if (!(%SetReturn%)) %SetReturn% = %SetReturn%2;
            }
        }
        return %SetReturn%;
    }%if-no(%is_Unset%,,%(
    virtual %SetReturnType% %if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        %if-then(%WhichSet%,_)%%Run%_ = 0;
        return %SetReturn%;
    }
    virtual %SetReturnType% before_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %SetReturnType% after_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        return %SetReturn%;
    }
    virtual %ReturnType% all_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetParams%,%(%if(%SetStdParams%,%(, )%)%)%)%%SetStdParams%) {
        %SetReturnType% %SetReturn% = %SetReturnValue%;
        if (!(%SetReturn% = before_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
            %SetReturnType% %SetReturn%2 = 0;
            %SetReturn% = %if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%);
            if ((%SetReturn%2 = after_%if-then(%Unset%,_)%%if-then(%SetWhich%,_)%%SetRun%(%if-then(%SetArgs%,%(%if(%SetStdArgs%,%(, )%)%)%)%%SetStdArgs%))) {
                if (!(%SetReturn%)) %SetReturn% = %SetReturn%2;
            }
        }
        return %SetReturn%;
    })%)%)%)%
%if-no(%is_class%,,%(
)%)%)%)%%
%%if-no(%is_class%,,%(} /// class %Class%
%Namespace_end%)%%
%%if-no(%is_file%,,%(%
%%if-no(%is_class%,,%(%
%%File_ifndef_end%%
%)%)%%
%)%)%%
%)%)%