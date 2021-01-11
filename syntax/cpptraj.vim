" VIM syntax highlighting file
" Language: cpptraj
" Maintainer: E. M. Leddin
" Download: https://github.com/emleddin/vim-cpptraj
" Get cpptraj
" URL: https://github.com/Amber-MD/cpptraj

" Quit when a syntax file was already loaded.
if exists('b:current_syntax') | finish|  endif

" Comment highlighting -- use # until end of line
syn match celCmt "#.*$"

" Keywords for cpptraj options
syn keyword celCmd trajin trajout autoimage center cluster
syn keyword celCmd rms rmsd atomic fluct strip
syn keyword celCmd matrix diagmatrix hbond distance atomicfluct
syn keyword celCmd angle dihedral

" Only use `reference` as keyword if at the beginning of a line
syn match checkCmd "^reference"
syn match checkCmd "^parm"

" Additional options
syn keyword celAssn lastframe ref out onlyframes origin range summary info
syn keyword celAssn pairdist loadpairdist minpoints epsilon avgout cpopvtime
syn keyword celAssn data sieve avgfmt name byres reduce vecs perres perresout
syn keyword celAssn kdist dist

" Specific types of command (like category of clustering)
syn keyword celMethod dbscan kmeans first covar perresavg psi phi

" Add sometimes words as constants if after a space
" These get PreProc which should ideally be similar to Identifiers
syn match celConst " reference"
syn match celConst " parm"

" Match atom selection language
syn match celInd "[:@*]['A-Za-z@0-9,:-]\+"

" Specify highlight categories
hi def link celCmt Comment
hi def link celCmd Identifier
hi def link checkCmd Identifier
hi def link celAssn Statement
hi def link celMethod Type
hi def link celConst PreProc
hi def link celInd Special

" Set the name for this file when VIM looks for it
let b:current_syntax = 'cpptraj'

