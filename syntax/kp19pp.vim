" Language:    kp19pp https://github.com/marionette-of-u/kp19pp
" Maintainer:  ujihisa <ujihisa at gmail com>
" License:     GPLv3 or any later version

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

"syntax case match
"syntax sync fromstart
"
"syntax match clojureError /]\|}\|)/
"
"syntax cluster clojureAtoms contains=clojureError,clojureKeyword,clojureString,clojureCharacter,clojureBoolean,clojureNil,clojureQuote,clojureUnquote,clojureDispatch,clojureRegexp,clojureJavaNew,clojureJavaMethod,clojureAnonFnArgs
"syntax cluster clojureTop contains=@clojureAtoms,clojureComment,clojureSexp,clojureAnonFn,clojureVector,clojureMap,clojureSet
"
"" Constants
syntax keyword kp19ppSpecial token grammar
"syntax keyword clojureNil nil
"
"" Characters
"syntax match clojureCharacter display /\\./
"syntax match clojureCharacter display /\\o[0-7]\{1,3}\>/
"syntax match clojureCharacter display /\\u[0-9a-zA-Z]\{4}\>/
"syntax match clojureCharacter display /\\space\>/
"syntax match clojureCharacter display /\\tab\>/
"syntax match clojureCharacter display /\\newline\>/
"syntax match clojureCharacter display /\\return\>/
"syntax match clojureCharacter display /\\backspace\>/
"syntax match clojureCharacter display /\\formfeed\>/
"
"" Numbers
"call clojure#syntax#define_numbers()
"
"" String
"syntax region clojureString start=/"/  skip=/\\\\\|\\"/ end=/"/ contains=clojureStringError,clojureStringSpecial
"syntax match clojureStringError display /\\./ contained
"syntax match clojureStringSpecial display /\\\%([btnfr"'\\]\|[0-3]\o\{2}\|u\x\{4}\)/ contained
"
"" Dispatch
"syntax match clojureDispatch display /#/ nextgroup=clojureType
"syntax match clojureDispatch display /#['^]/
"
"" Regexp
"syntax region clojureRegexp start=/#"/ skip=/\\\\\|\\"/ end=/"/ keepend contains=clojureRegexpSpecial,clojureRegexpGroup,clojureRegexpClass,clojureRegexpCloseParenError
"syntax match clojureRegexpSpecial display /\\./ contained
"syntax region clojureRegexpGroup matchgroup=clojureParenSpecial start=/(/ skip=/\\./ end=/)/ contained contains=clojureRegexpSpecial,clojureRegexpGroup,clojureRegexpClass,clojureRegexpOpenParenError
"syntax region clojureRegexpClass matchgroup=clojureParenSpecial start=/\[/ skip=/\\./ end=/\]/ contained transparent contains=clojureRegexpSpecial,clojureRegexpOpenParenError
"syntax match clojureRegexpOpenParenError display /\\\@<!"/ contained
"syntax match clojureRegexpCloseParenError display /[\])]/ contained
"
"" Keyword, etc
"syntax match clojureKeyword display ":\{1,2}[[:alnum:]?!\-_+*.=<>#$/]\+"
"syntax match clojureSymbol  display "[[:alnum:]?!\-_+*.=<>#$/]\+" contained
"syntax match clojureType    display "[[:alnum:]?!\-_+*.=<>#$/]\+" contained
"
"syntax match clojureUnquote display /\~@\?/
"syntax match clojureMetadata display /\^/
"syntax match clojureAnonFnArgs display /%\d\+\>\|%&\?/
"
"call clojure#syntax#define_words()
"
"" Java support
"syntax match clojureJavaMethod display /\<\.[a-zA-Z_]\w*\>/
"syntax match clojureJavaNew display /\<\u\w*\.\>/
"
"" Parens
"call clojure#syntax#define_parens()
"
"" Quote
"syntax match clojureQuote display /['`]/ nextgroup=clojureQuote,clojureQuoted,clojureSymbol
"syntax region clojureQuote matchgroup=clojureParenQuote start=/(quote\>/ end=/)/ contains=@clojureTop,clojureQuoted
"syntax region clojureQuoted matchgroup=clojureParenQuote start=/#\?(/ end=/)/  contains=@clojureTop,clojureQuoted contained
"syntax region clojureQuoted matchgroup=clojureParenQuote start=/\[/   end=/\]/ contains=@clojureTop,clojureQuoted contained
"syntax region clojureQuoted matchgroup=clojureParenQuote start=/#\?{/ end=/}/  contains=@clojureTop,clojureQuoted contained
"
"" Comments
"syntax match clojureComment /;.*$/
"syntax region clojureIgnoreFormComment matchgroup=clojureParenComment start=/#_(/            end=/)/ contains=clojureRangeComment
"syntax region clojureMacroComment      matchgroup=clojureParenComment start=/(\_s*comment\>/ end=/)/ contains=clojureRangeComment
"syntax region clojureRangeComment matchgroup=clojureParenComment start=/(/  end=/)/  contains=clojureRangeComment contained
"syntax region clojureRangeComment matchgroup=clojureParenComment start=/\[/ end=/\]/ contains=clojureRangeComment contained
"syntax region clojureRangeComment matchgroup=clojureParenComment start=/{/  end=/}/  contains=clojureRangeComment contained
"syntax cluster clojureTop add=clojureIgnoreFormComment,clojureMacroComment
"
"highlight default link clojureIgnoreFormComment clojureComment
"highlight default link clojureMacroComment      clojureComment
"highlight default link clojureRangeComment      clojureComment
"highlight default link clojureParenComment      clojureComment
"
"
"" highlight
"highlight default link clojureComment Comment
"
highlight default link kp19ppSpecial       Special
"highlight default link clojureNil           Constant
"
"highlight default link clojureString        String
"highlight default link clojureStringSpecial Special
"highlight default link clojureStringError   Error
"
"highlight default link clojureRegexp                String
"highlight default link clojureRegexpSpecial         Special
"highlight default link clojureRegexpGroup           String
"highlight default link clojureRegexpOpenParenError  Error
"highlight default link clojureRegexpCloseParenError Error
"
"highlight default link clojureKeyword   Operator
"highlight default link clojureCharacter Character
"highlight default link clojureType      Type
"
"highlight default link clojureJavaNew    Structure
"highlight default link clojureJavaMethod Function
"
"highlight default link clojureSymbol     Special
"highlight default link clojureQuote      Special
"highlight default link clojureParenQuote Special
"highlight default link clojureUnquote    Special
"highlight default link clojureDispatch   Special
"highlight default link clojureMetadata   Special
"
"highlight default link clojureParenLevelTop Define
"highlight default link clojureParenSpecial  Special
"highlight default link clojureAnonFnArgs    Delimiter
"
"highlight default link clojureError Error


let b:current_syntax = "kp19pp"

let &cpo = s:cpo_save
unlet s:cpo_save
