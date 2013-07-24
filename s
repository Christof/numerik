let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>Tex_Completion :call Tex_Complete("default","text")
imap <silent> <Plug> <Nop>
inoremap <silent> <Plug>Tex_LeftRight =Tex_LeftRight()
inoremap <silent> <Plug>Tex_MathCal =Tex_MathCal()
inoremap <silent> <Plug>Tex_MathBF =Tex_MathBF()
inoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
inoremap <silent> <Plug>Tex_FastCommandInsert =Tex_DoCommand('no')
inoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
inoremap <silent> <Plug>Tex_FastEnvironmentInsert =Tex_FastEnvironmentInsert("no")
imap <F1> <Plug>Tex_Help
imap <F5> :GundoToggle
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
imap <S-Tab> <Plug>snipMateBack
inoremap <C-Tab> 	
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
imap <C-9> 9gt
imap <C-8> 8gt
imap <C-7> 7gt
imap <C-6> 6gt
imap <C-5> 5gt
imap <C-4> 4gt
imap <C-3> 3gt
imap <C-2> 2gt
imap <C-1> 1gt
imap <C-0> 0gt
map! <S-Insert> <MiddleMouse>
imap <silent> <F4> :set invpaste:set paste?
map  <S-Down>
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
vmap <NL> <Plug>IMAP_JumpForward
nnoremap <NL> J
vmap  [egv
nmap  [e
xnoremap <silent>  :call multiple_cursors#new("v")
nnoremap <silent>  :call multiple_cursors#new("n")
nnoremap <silent>  :CtrlP
nnoremap  :tabnew
nmap ! <Plug>Kwbd
nmap o <Plug>ZoomWin
xnoremap & :&&
nnoremap & :&&
vnoremap , :call ExecMap(',', 'v')
vnoremap ,pi :call VEnclose('', '', '\begin{picture}', '\end{picture}')
vnoremap ,mp :call VEnclose('', '', '\begin{minipage}', '\end{minipage}')
vnoremap <silent> ,lr :call VEnclose('\sbox{', '}', '\begin{lrbox}', '\end{lrbox}')
vnoremap ,fi :call VEnclose('', '', '\begin{figure}', '\end{figure}')
vnoremap ,pg :call VEnclose('\paragraph{', '}', '', '')
vnoremap ,s2 :call VEnclose('\subsubsection{', '}', '', '')
vnoremap ,ss :call VEnclose('\subsection{', '}', '', '')
vnoremap ,se :call VEnclose('\section{', '}', '', '')
vnoremap ,ch :call VEnclose('\chapter{', '}', '', '')
vnoremap ,pa :call VEnclose('\part{', '}', '', '')
vnoremap <silent> ,sl :call VEnclose('', '', '\begin{slide}', '\end{slide}')
vnoremap <silent> ,ov :call VEnclose('', '', '\begin{overlay}', '\end{overlay}')
vnoremap <silent> ,no :call VEnclose('', '', '\begin{note}', '\end{note}')
vnoremap <silent> ,tb :call VEnclose('', '', '\begin{thebibliography}', '\end{thebibliography}')
vnoremap <silent> ,ve :call VEnclose('', '', '\begin{verse}', '\end{verse}')
vnoremap <silent> ,vm :call VEnclose('\verb|', '|', '\begin{verbatim}', '\end{verbatim}')
vnoremap <silent> ,tp :call VEnclose('', '', '\begin{titlepage}', '\end{titlepage}')
vnoremap ,sp :call VEnclose('\subparagraph{', '}', '', '')
vnoremap <silent> ,qe :call VEnclose('', '', '\begin{quote}', '\end{quote}')
vnoremap <silent> ,qn :call VEnclose('', '', '\begin{quotation}', '\end{quotation}')
vnoremap <silent> ,fr :call VEnclose('{\raggedright ', '}', '\begin{flushright}', '\end{flushright}')
vnoremap <silent> ,fl :call VEnclose('', '', '\begin{flushleft}', '\end{flushleft}')
vnoremap <silent> ,fc :call VEnclose('', '', '\begin{filecontents}', '\end{filecontents}')
vnoremap <silent> ,do :call VEnclose('', '', '\begin{document}', '\end{document}')
vnoremap <silent> ,ce :call VEnclose('\centerline{', '}', '\begin{center}', '\end{center}')
vnoremap <silent> ,ap :call VEnclose('', '', '\begin{appendix}', '\end{appendix}')
vnoremap <silent> ,ab :call VEnclose('', '', '\begin{abstract}', '\end{abstract}')
vnoremap <silent> ,ma :call VEnclose('', '', '\begin{math}', '\end{math}')
vnoremap <silent> ,eq :call VEnclose('', '', '\begin{equation}', '\end{equation}')
vnoremap <silent> ,ea :call VEnclose('', '', '\begin{eqnarray}', '\end{eqnarray}')
vnoremap <silent> ,dm :call VEnclose('', '', '\begin{displaymath}', '\end{displaymath}')
vnoremap ,ar :call VEnclose('', '', '\begin{array}', '\end{array}')
vnoremap ,tr :call VEnclose('', '', '\begin{tabular}', '\end{tabular}')
vnoremap <silent> ,tg :call VEnclose('', '', '\begin{tabbing}', '\end{tabbing}')
vnoremap ,te :call VEnclose('', '', '\begin{table}', '\end{table}')
vnoremap <silent> ,tl :call VEnclose('', '', '\begin{trivlist}', '\end{trivlist}')
vnoremap <silent> ,ti :call VEnclose('', '', '\begin{theindex}', '\end{theindex}')
vnoremap <silent> ,it :call VEnclose('', '', '\begin{itemize}', '\end{itemize}')
vnoremap <silent> ,en :call VEnclose('', '', '\begin{enumerate}', '\end{enumerate}')
vnoremap ,de :call VEnclose('', '', '\begin{description}', '\end{description}')
vnoremap ,li :call VEnclose('', '', '\begin{list}', '\end{list}')
nmap <D-E> :RerunSpec
nmap <D-L> :RunSpecLine
nmap <D-R> :RunSpec
inoremap ï o
imap Û <<i
imap Ý >>i
nnoremap J :tabprevious
nnoremap K :tabnext
xmap S <Plug>VSurround
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nnoremap [ox :set cursorline cursorcolumn
nnoremap [ow :set wrap
nnoremap [os :set spell
nnoremap [or :set relativenumber
nnoremap [on :set =(exists('+rnu') && &rnu ? 'norelativenumber ' : '')number
nnoremap [ol :set list
nnoremap [oi :set ignorecase
nnoremap [oh :set hlsearch
nnoremap [od :diffthis
nnoremap [ou :set cursorcolumn
nnoremap [oc :set cursorline
xmap [e <Plug>unimpairedMoveUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap <silent> [T <Plug>unimpairedTFirst
nmap <silent> [t <Plug>unimpairedTPrevious
nmap <silent> [ <Plug>unimpairedQPFile
nmap <silent> [Q <Plug>unimpairedQFirst
nmap <silent> [q <Plug>unimpairedQPrevious
nmap <silent> [ <Plug>unimpairedLPFile
nmap <silent> [L <Plug>unimpairedLFirst
nmap <silent> [l <Plug>unimpairedLPrevious
nmap <silent> [B <Plug>unimpairedBFirst
nmap <silent> [A <Plug>unimpairedAFirst
nmap <silent> [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
nmap <silent> [b <Plug>unimpairedBPrevious
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nnoremap ]ox :set nocursorline nocursorcolumn
nnoremap ]ow :set nowrap
nnoremap ]os :set nospell
nnoremap ]or :set norelativenumber
nnoremap ]on :set =(exists('+rnu') && &rnu ? 'norelativenumber ' : '')nonumber
nnoremap ]ol :set nolist
nnoremap ]oi :set noignorecase
nnoremap ]oh :set nohlsearch
nnoremap ]od :diffoff
nnoremap ]ou :set nocursorcolumn
nnoremap ]oc :set nocursorline
xmap ]e <Plug>unimpairedMoveDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap <silent> ]T <Plug>unimpairedTLast
nmap <silent> ]t <Plug>unimpairedTNext
nmap <silent> ] <Plug>unimpairedQNFile
nmap <silent> ]Q <Plug>unimpairedQLast
nmap <silent> ]q <Plug>unimpairedQNext
nmap <silent> ] <Plug>unimpairedLNFile
nmap <silent> ]L <Plug>unimpairedLLast
nmap <silent> ]l <Plug>unimpairedLNext
nmap <silent> ]B <Plug>unimpairedBLast
nmap <silent> ]A <Plug>unimpairedALast
nmap <silent> ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
nmap <silent> ]b <Plug>unimpairedBNext
vnoremap ` :call ExecMap('`', 'v')
vnoremap <silent> `em :call VEnclose('\emph{', '}', '{\em', '\/}')
vnoremap <silent> `it :call VEnclose('\textit{', '}', '{\itshape ', '}')
vnoremap <silent> `sc :call VEnclose('\textsc{', '}', '{\scshape ', '}')
vnoremap <silent> `sl :call VEnclose('\textsl{', '}', '{\slshape ', '}')
vnoremap <silent> `up :call VEnclose('\textup{', '}', '{\upshape ', '}')
vnoremap <silent> `rm :call VEnclose('\textrm{', '}', '{\rmfamily ', '}')
vnoremap <silent> `sf :call VEnclose('\textsf{', '}', '{\sffamily ', '}')
vnoremap <silent> `tt :call VEnclose('\texttt{', '}', '{\ttfamily ', '}')
vnoremap <silent> `md :call VEnclose('\textmd{', '}', '{\mdseries ', '}')
vnoremap <silent> `bf :call VEnclose('\textbf{', '}', '{\bfseries ', '}')
vnoremap <silent> `$ :call VEnclose('$', '$', '\[', '\]')
vnoremap <silent> `{ :call VEnclose('\left\{ ', ' \right\}', '\left\{', '\right\}')
vnoremap <silent> `[ :call VEnclose('\left[ ', ' \right]', '\left[', '\right]')
vnoremap <silent> `( :call VEnclose('\left( ', ' \right)', '\left(', '\right)')
vmap a% [%v]%
nnoremap cox :set =&cursorline && &cursorcolumn ? 'nocursorline nocursorcolumn' : 'cursorline cursorcolumn'
nnoremap cod :=&diff ? 'diffoff' : 'diffthis'
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/`'
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <silent> <Plug>Tex_LeftRight :call Tex_PutLeftRight()
vnoremap <silent> <Plug>Tex_MathCal `>a}`<i\mathcal{
vnoremap <silent> <Plug>Tex_MathBF `>a}`<i\mathbf{
nnoremap <Plug>Tex_RefreshFolds :call MakeTexFolds(1)
nnoremap <silent> <Plug>Tex_FastCommandChange :call Tex_ChangeCommand('no')
vnoremap <silent> <Plug>Tex_FastCommandInsert :call Tex_DoCommand('yes')
nnoremap <silent> <Plug>Tex_FastCommandInsert i=Tex_DoCommand('no')
nnoremap <silent> <Plug>Tex_FastEnvironmentChange :call Tex_ChangeEnvironments()
vnoremap <silent> <Plug>Tex_FastEnvironmentInsert :call Tex_FastEnvironmentInsert("yes")
nnoremap <silent> <Plug>Tex_FastEnvironmentInsert i=Tex_FastEnvironmentInsert("no")
nmap <F1> <Plug>Tex_Help
nmap <silent> <Plug> i
nnoremap <C-Tab> :tabnext
nmap <F5> :GundoToggle
snoremap <BS> b<BS>
smap <S-Tab> <Plug>snipMateBack
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
xnoremap <silent> <Plug>unimpairedMoveDown :exe 'exe "normal! m`"|''<,''>move''>+'.v:count1``
xnoremap <silent> <Plug>unimpairedMoveUp :exe 'exe "normal! m`"|''<,''>move--'.v:count1``
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "tlast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTFirst :exe "tfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTNext :exe "tnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedTPrevious :exe "tprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQNFile :exe "cnfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQPFile :exe "cpfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQLast :exe "clast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQFirst :exe "cfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQNext :exe "cnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedQPrevious :exe "cprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLNFile :exe "lnfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLPFile :exe "lpfile ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLLast :exe "llast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLFirst :exe "lfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLNext :exe "lnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedLPrevious :exe "lprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBLast :exe "blast ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBFirst :exe "bfirst ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBNext :exe "bnext ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedBPrevious :exe "bprevious ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedALast :exe "last ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedAFirst :exe "first ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedANext :exe "next ".(v:count ? v:count : "")
nnoremap <silent> <Plug>unimpairedAPrevious :exe "previous ".(v:count ? v:count : "")
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>snipMateVisual s:let g:snipmate_content_visual=getreg('1')
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
xnoremap <SNR>72_VisualNrrwBang :call nrrwrgn#VisualNrrwRgn(visualmode(),'!')
xnoremap <SNR>72_VisualNrrwRgn :call nrrwrgn#VisualNrrwRgn(visualmode(),'')
nnoremap <silent> <Plug>Kwbd :Kwbd
map <C-9> 9gt
map <C-8> 8gt
map <C-7> 7gt
map <C-6> 6gt
map <C-5> 5gt
map <C-4> 4gt
map <C-3> 3gt
map <C-2> 2gt
map <C-1> 1gt
map <C-0> 0gt
map <S-Insert> <MiddleMouse>
vmap <C-Down> ]egv
vmap <C-Up> [egv
nmap <C-Down> ]e
nmap <C-Up> [e
map <Up> gk
map <Down> gj
nmap <silent> <F4> :set invpaste:set paste?
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>snipMateNextOrTrigger
imap <NL> <Plug>IMAP_JumpForward
cnoremap  <Down>
cnoremap  <Up>
imap 	 <Plug>snipMateShow
imap  <Plug>Isurround
imap  <Plug>AlwaysEnd
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
nnoremap öf :Ack 
nnoremap ög 
nnoremap öm `
map özw :ZoomWin
map ört :TagbarToggle
map ön :NERDTreeToggle :NERDTreeMirror
nmap ögp :Git push
nmap ögc :Gcommit
nmap ögl :Glog
nmap ögd :Gdiff
nmap ögs :Gstatus
nmap ögb :Gblame
vmap öf :Ack 
omap öf :Ack 
map ö/ <Plug>NERDCommenterToggle
map öR :VroomRunNearestTest
map ör :VroomRunTestFile
nmap <silent> öwöt <Plug>VimwikiTabMakeDiaryNote
nmap <silent> öwöw <Plug>VimwikiMakeDiaryNote
nmap <silent> öwöi <Plug>VimwikiDiaryGenerateLinks
nmap <silent> öwi <Plug>VimwikiDiaryIndex
nmap <silent> öws <Plug>VimwikiUISelect
nmap <silent> öwt <Plug>VimwikiTabIndex
nmap <silent> öww <Plug>VimwikiIndex
nmap öca <Plug>NERDCommenterAltDelims
xmap öcu <Plug>NERDCommenterUncomment
nmap öcu <Plug>NERDCommenterUncomment
xmap öcb <Plug>NERDCommenterAlignBoth
nmap öcb <Plug>NERDCommenterAlignBoth
xmap öcl <Plug>NERDCommenterAlignLeft
nmap öcl <Plug>NERDCommenterAlignLeft
nmap öcA <Plug>NERDCommenterAppend
xmap öcy <Plug>NERDCommenterYank
nmap öcy <Plug>NERDCommenterYank
xmap öcs <Plug>NERDCommenterSexy
nmap öcs <Plug>NERDCommenterSexy
xmap öci <Plug>NERDCommenterInvert
nmap öci <Plug>NERDCommenterInvert
nmap öc$ <Plug>NERDCommenterToEOL
xmap öcn <Plug>NERDCommenterNested
nmap öcn <Plug>NERDCommenterNested
xmap öcm <Plug>NERDCommenterMinimal
nmap öcm <Plug>NERDCommenterMinimal
xmap öc  <Plug>NERDCommenterToggle
nmap öc  <Plug>NERDCommenterToggle
xmap öcc <Plug>NERDCommenterComment
nmap öcc <Plug>NERDCommenterComment
xmap öNr <Plug>NrrwrgnBangDo
xmap önr <Plug>NrrwrgnDo
vnoremap <silent> ööw :call EasyMotion#WB(1, 0)
onoremap <silent> ööw :call EasyMotion#WB(0, 0)
nnoremap <silent> ööw :call EasyMotion#WB(0, 0)
vnoremap <silent> ööt :call EasyMotion#T(1, 0)
onoremap <silent> ööt :call EasyMotion#T(0, 0)
nnoremap <silent> ööt :call EasyMotion#T(0, 0)
vnoremap <silent> öön :call EasyMotion#Search(1, 0)
onoremap <silent> öön :call EasyMotion#Search(0, 0)
nnoremap <silent> öön :call EasyMotion#Search(0, 0)
vnoremap <silent> öök :call EasyMotion#JK(1, 1)
onoremap <silent> öök :call EasyMotion#JK(0, 1)
nnoremap <silent> öök :call EasyMotion#JK(0, 1)
vnoremap <silent> ööj :call EasyMotion#JK(1, 0)
onoremap <silent> ööj :call EasyMotion#JK(0, 0)
nnoremap <silent> ööj :call EasyMotion#JK(0, 0)
vnoremap <silent> öögE :call EasyMotion#EW(1, 1)
onoremap <silent> öögE :call EasyMotion#EW(0, 1)
nnoremap <silent> öögE :call EasyMotion#EW(0, 1)
vnoremap <silent> ööf :call EasyMotion#F(1, 0)
onoremap <silent> ööf :call EasyMotion#F(0, 0)
nnoremap <silent> ööf :call EasyMotion#F(0, 0)
vnoremap <silent> ööe :call EasyMotion#E(1, 0)
onoremap <silent> ööe :call EasyMotion#E(0, 0)
nnoremap <silent> ööe :call EasyMotion#E(0, 0)
vnoremap <silent> ööb :call EasyMotion#WB(1, 1)
onoremap <silent> ööb :call EasyMotion#WB(0, 1)
nnoremap <silent> ööb :call EasyMotion#WB(0, 1)
vnoremap <silent> ööW :call EasyMotion#WBW(1, 0)
onoremap <silent> ööW :call EasyMotion#WBW(0, 0)
nnoremap <silent> ööW :call EasyMotion#WBW(0, 0)
vnoremap <silent> ööT :call EasyMotion#T(1, 1)
onoremap <silent> ööT :call EasyMotion#T(0, 1)
nnoremap <silent> ööT :call EasyMotion#T(0, 1)
vnoremap <silent> ööN :call EasyMotion#Search(1, 1)
onoremap <silent> ööN :call EasyMotion#Search(0, 1)
nnoremap <silent> ööN :call EasyMotion#Search(0, 1)
vnoremap <silent> ööge :call EasyMotion#E(1, 1)
onoremap <silent> ööge :call EasyMotion#E(0, 1)
nnoremap <silent> ööge :call EasyMotion#E(0, 1)
vnoremap <silent> ööF :call EasyMotion#F(1, 1)
onoremap <silent> ööF :call EasyMotion#F(0, 1)
nnoremap <silent> ööF :call EasyMotion#F(0, 1)
vnoremap <silent> ööE :call EasyMotion#EW(1, 0)
onoremap <silent> ööE :call EasyMotion#EW(0, 0)
nnoremap <silent> ööE :call EasyMotion#EW(0, 0)
vnoremap <silent> ööB :call EasyMotion#WBW(1, 1)
onoremap <silent> ööB :call EasyMotion#WBW(0, 1)
nnoremap <silent> ööB :call EasyMotion#WBW(0, 1)
nnoremap <silent> ö<S-Down> :BuffergatorMruCycleNext rightbelow sbuffer
nnoremap <silent> ö<S-Right> :BuffergatorMruCycleNext rightbelow vert sbuffer
nnoremap <silent> ö<S-Up> :BuffergatorMruCycleNext leftabove sbuffer
nnoremap <silent> ö<S-Left> :BuffergatorMruCycleNext leftabove vert sbuffer
nnoremap <silent> ö<Down> :BuffergatorMruCyclePrev rightbelow sbuffer
nnoremap <silent> ö<Right> :BuffergatorMruCyclePrev rightbelow vert sbuffer
nnoremap <silent> ö<Up> :BuffergatorMruCyclePrev leftabove sbuffer
nnoremap <silent> ö<Left> :BuffergatorMruCyclePrev leftabove vert sbuffer
nnoremap <silent> Â :BuffergatorMruCycleNext
nnoremap <silent> â :BuffergatorMruCyclePrev
nnoremap <silent> öT :BuffergatorTabsClose
nnoremap <silent> öt :BuffergatorTabsOpen
nnoremap <silent> öB :bnext
nnoremap <silent> öb :bprevious
omap Û <<
omap Ý >>
nmap Û <<
nmap Ý >>
vmap Û <gv
vmap Ý >gv
map ö= =
nmap öhs :set hlsearch! hlsearch?
nmap <silent> öfc /\v^[<=>]{7}( .*|$)
nmap <silent> ötw :set invwrap:set wrap?
nmap <silent> öul :t.Vr=
nmap öet :tabe =expand('%:h').'/'
nmap öev :vsp =expand('%:h').'/'
nmap öes :sp =expand('%:h').'/'
nmap öew :e =expand('%:h').'/'
nmap <silent> ömd :!mkdir -p %:p:h
nmap <silent> öcd :lcd %:h
nmap öL mQgewvu`Q
nmap öU mQgewvU`Q
nmap öl mQviwu`Q
nmap öu mQviwU`Q
nnoremap öfef :normal! gg=G``
cnoremap wsu w !sudo tee % > /dev/null
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backupdir=~/.vim/_backup//,.,~/tmp,~/
set directory=~/.vim/_temp//,.,~/tmp,/var/tmp,/tmp
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=400
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:\ \ ,trail:.,extends:>,precedes:<
set mouse=a
set nrformats=
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim/janus/vim/core/before,~/.vim/janus/vim/core/janus,~/.vim/janus/vim/core/pathogen,~/.vim/janus/vim/colors/getafe,~/.vim/janus/vim/colors/github,~/.vim/janus/vim/colors/irblack,~/.vim/janus/vim/colors/janus-colors,~/.vim/janus/vim/colors/molokai,~/.vim/janus/vim/colors/pyte,~/.vim/janus/vim/colors/sampler-pack,~/.vim/janus/vim/colors/solarized,~/.vim/janus/vim/colors/tasks,~/.vim/janus/vim/colors/vividchalk,~/.vim/janus/vim/langs/arduino,~/.vim/janus/vim/langs/clojure,~/.vim/janus/vim/langs/coffeescript,~/.vim/janus/vim/langs/csv,~/.vim/janus/vim/langs/cucumber,~/.vim/janus/vim/langs/elixir,~/.vim/janus/vim/langs/erlang,~/.vim/janus/vim/langs/git,~/.vim/janus/vim/langs/golang,~/.vim/janus/vim/langs/haml,~/.vim/janus/vim/langs/handlebars,~/.vim/janus/vim/langs/haskell,~/.vim/janus/vim/langs/javascript,~/.vim/janus/vim/langs/less,~/.vim/janus/vim/langs/markdown,~/.vim/janus/vim/langs/minitest,~/.vim/janus/vim/langs/mustache,~/.vim/janus/vim/langs/nodejs,~/.vim/janus/vim/langs/puppet,~/.vim/janus/vim/langs/rails,~/.vim/janus/vim/langs/rspec,~/.vim/janus/vim/langs/ruby,~/.vim/janus/vim/langs/scala,~/.vim/janus/vim/langs/scss,~/.vim/janus/vim/langs/slim,~/.vim/janus/vim/langs/tasks,~/.vim/janus/vim/langs/textile,~/.vim/janus/vim/tools/ack,~/.vim/janus/vim/tools/before,~/.vim/janus/vim/tools/buffergator,~/.vim/janus/vim/tools/css-color,~/.vim/janus/vim/tools/ctrlp,~/.vim/janus/vim/tools/dispatch,~/.vim/janus/vim/tools/easymotion,~/.vim/janus/vim/tools/endwise,~/.vim/janus/vim/tools/eunuch,~/.vim/janus/vim/tools/fugitive,~/.vim/janus/vim/tools/gist,~/.vim/janus/vim/tools/gundo,~/.vim/janus/vim/tools/indent-object,~/.vim/janus/vim/tools/janus,~/.vim/janus/vim/tools/kwbd,~/.vim/janus/vim/tools/matchit,~/.vim/janus/vim/tools/multiple-cursors,~/.vim/janus/vim/tools/narrowregion,~/.vim/janus/vim/tools/nerdcommenter,~/.vim/janus/vim/tools/nerdtree,~/.vim/janus/vim/tools/repeat,~/.vim/janus/vim/tools/snipmate,~/.vim/janus/vim/tools/supertab,~/.vim/janus/vim/tools/surround,~/.vim/janus/vim/tools/syntastic,~/.vim/janus/vim/tools/tagbar,~/.vim/janus/vim/tools/tasks,~/.vim/janus/vim/tools/tlib,~/.vim/janus/vim/tools/unimpaired,~/.vim/janus/vim/tools/vim-addon-mw-utils,~/.vim/janus/vim/tools/vim-snippets,~/.vim/janus/vim/tools/vimwiki,~/.vim/janus/vim/tools/vroom,~/.vim/janus/vim/tools/watchtower,~/.vim/janus/vim/tools/webapi,~/.vim/janus/vim/tools/zoomwin,~/.janus/vim-bundler,~/.janus/vim-clojure-static,~/.janus/vim-glsl,~/.janus/vim-instant-markdown,~/.janus/vim-latex,~/.janus/vim-markdown,~/.janus/vim-rails,~/.janus/vim-rake,~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/janus/vim/tools/snipmate/after,~/.vim/janus/vim/tools/janus/after,~/.vim/janus/vim/tools/css-color/after,~/.vim/janus/vim/langs/minitest/after,~/.vim/janus/vim/langs/coffeescript/after,~/.janus/vim-instant-markdown/after,~/.vim/janus/vim/core/janus/after
set shiftwidth=2
set smartcase
set statusline=%f\ %m\ %rLine:%l/%L[%p%%]Col:%vBuf:#%n[%b][0x%B]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set wildignore=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*,*.swp,*~,._*
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documents/uni/numerik
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +78 main.tex
badd +168 einfuehrung.tex
badd +872 main.log
badd +29 lineare_algebra.tex
badd +1 approximation.tex
args main.tex
edit main.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
nmap <buffer> <silent> örf <Plug>Tex_RefreshFolds
nmap <buffer> öls <Plug>Tex_ForwardSearch
nmap <buffer> ölv <Plug>Tex_View
vmap <buffer> öll <Plug>Tex_Compile
nmap <buffer> öll <Plug>Tex_Compile
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=~/.janus/vim-latex/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=\\bibitem,=\\item,},],=^s*^s*\\bibitem,=\\item,},],=^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=pdflatex\ -shell-escape\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=2
setlocal tags=~/Documents/uni/numerik/.git/tex.tags,~/Documents/uni/numerik/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
1,66fold
1
normal zo
let s:l = 78 - ((29 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
78
normal! 0
tabedit einfuehrung.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
nmap <buffer> <silent> örf <Plug>Tex_RefreshFolds
nmap <buffer> öls <Plug>Tex_ForwardSearch
nmap <buffer> ölv <Plug>Tex_View
vmap <buffer> öll <Plug>Tex_Compile
nmap <buffer> öll <Plug>Tex_Compile
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=~/.janus/vim-latex/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=pdflatex\ -shell-escape\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=2
setlocal tags=~/Documents/uni/numerik/.git/tex.tags,~/Documents/uni/numerik/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
11,21fold
11,21fold
36,39fold
42,47fold
49,54fold
57,59fold
62,67fold
69,73fold
82,86fold
104,106fold
108,110fold
88,113fold
114,127fold
135,138fold
147,150fold
161,167fold
128,170fold
35,170fold
174,174fold
175,175fold
179,180fold
181,182fold
183,184fold
188,191fold
192,195fold
171,200fold
205,205fold
206,206fold
212,214fold
217,223fold
224,226fold
234,238fold
253,258fold
261,261fold
262,262fold
266,266fold
267,268fold
201,277fold
1,277fold
1
normal zo
11
normal zo
11
normal zc
11
normal zc
35
normal zo
36
normal zo
42
normal zo
49
normal zo
57
normal zo
62
normal zo
69
normal zo
82
normal zo
88
normal zo
104
normal zo
108
normal zo
88
normal zo
114
normal zo
128
normal zo
135
normal zo
147
normal zo
161
normal zo
128
normal zo
35
normal zo
171
normal zo
174
normal zo
175
normal zo
179
normal zo
181
normal zo
183
normal zo
188
normal zo
192
normal zo
171
normal zo
201
normal zo
205
normal zo
206
normal zo
212
normal zo
217
normal zo
224
normal zo
234
normal zo
253
normal zo
261
normal zo
262
normal zo
266
normal zo
267
normal zo
201
normal zo
1
normal zo
let s:l = 62 - ((29 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
62
normal! 0
tabedit approximation.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <F9> <Plug>Tex_Completion
imap <buffer> <C-CR> <Plug>Tex_InsertItemOnNextLine
imap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
imap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
inoremap <buffer> <silent> <S-F3> =Tex_PutEnvironment("bmatrix")
inoremap <buffer> <silent> <S-F2> =Tex_PutEnvironment("eqnarray")
inoremap <buffer> <silent> <S-F1> =Tex_PutEnvironment("eqnarray*")
imap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
imap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
imap <buffer> <silent> ì <Plug>Tex_LeftRight
imap <buffer> <silent> ã <Plug>Tex_MathCal
imap <buffer> <silent> â <Plug>Tex_MathBF
imap <buffer> é <Plug>Tex_InsertItemOnThisLine
nnoremap <buffer> <Plug>Tex_ForwardSearch :call Tex_ForwardSearchLaTeX()
nnoremap <buffer> <Plug>Tex_View :call Tex_ViewLaTeX()
vnoremap <buffer> <Plug>Tex_Compile :call Tex_PartCompile()
nnoremap <buffer> <Plug>Tex_Compile :call Tex_RunLaTeX()
vmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F7> <Plug>Tex_FastCommandChange
nmap <buffer> <silent> <F7> <Plug>Tex_FastCommandInsert
nmap <buffer> <silent> <S-F5> <Plug>Tex_FastEnvironmentChange
vmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> <F5> <Plug>Tex_FastEnvironmentInsert
nmap <buffer> <silent> ì <Plug>Tex_LeftRight
vmap <buffer> <silent> ã <Plug>Tex_MathCal
vmap <buffer> <silent> â <Plug>Tex_MathBF
nmap <buffer> <silent> örf <Plug>Tex_RefreshFolds
nmap <buffer> öls <Plug>Tex_ForwardSearch
nmap <buffer> ölv <Plug>Tex_View
vmap <buffer> öll <Plug>Tex_Compile
nmap <buffer> öll <Plug>Tex_Compile
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=~/.janus/vim-latex/ftplugin/latex-suite/dictionaries/dictionary
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%*[^\"]\"%f\"%*\\D%l:\ %m,\"%f\"%*\\D%l:\ %m,%-G%f:%l:\ (Each\ undeclared\ identifier\ is\ reported\ only\ once,%-G%f:%l:\ for\ each\ function\ it\ appears\ in.),%-GIn\ file\ included\ from\ %f:%l:%c:,%-GIn\ file\ included\ from\ %f:%l:%c\\,,%-GIn\ file\ included\ from\ %f:%l:%c,%-GIn\ file\ included\ from\ %f:%l,%-G%*[\ ]from\ %f:%l:%c,%-G%*[\ ]from\ %f:%l:,%-G%*[\ ]from\ %f:%l\\,,%-G%*[\ ]from\ %f:%l,%f(%l):%m,\"%f\"\\,\ line\ %l%*\\D%c%*[^\ ]\ %m,%D%*\\a[%*\\d]:\ Entering\ directory\ `%f',%X%*\\a[%*\\d]:\ Leaving\ directory\ `%f',%D%*\\a:\ Entering\ directory\ `%f',%X%*\\a:\ Leaving\ directory\ `%f',%DMaking\ %*\\a\ in\ %f,%f|%l|\ %m,%-G%.%#Underfull%.%#,%-G%.%#Overfull%.%#,%-G%.%#specifier\ changed\ to%.%#,%-G%.%#You\ have\ requested%.%#,%-G%.%#Missing\ number%\\,\ treated\ as\ zero.%.%#,%-G%.%#There\ were\ undefined\ references%.%#,%-G%.%#Citation\ %.%#\ undefined%.%#,%E!\ LaTeX\ %trror:\ %m,%E!\ %m,%E%f:%l:\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%-Cl.%l\ %m,%-Cl.%l\ ,%-C\ \ %m,%-C%.%#-%.%#,%-C%.%#[]%.%#,%-C[]%.%#,%-C%.%#%[{}\\]%.%#,%-C<%.%#>%m,%-GSee\ the\ LaTeX%m,%-GType\ \ H\ <return>%m,%-G\ ...%.%#,%-G%.%#\ (C)\ %.%#,%-G(see\ the\ transcript%.%#),%-G\\s%#,%-O(%*[^()])%r,%-P(%f%r,%-P\ %\\=(%f%r,%-P%*[^()](%f%r,%-P(%f%*[^()],%-P[%\\d%[^()]%#(%f%r,%-P%*[^()],%-Q)%r,%-Q%*[^()])%r,%-Q[%\\d%*[^()])%r,%-Q%*[^()],%-G%.%#
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=TexFoldTextFunction()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=\\\\input\\|\\\\include{
setlocal includeexpr=substitute(v:fname,\ '^.\\{-}{\\|}.*',\ '',\ 'g')
setlocal indentexpr=GetTeXIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,},],=^s*^s*^s*^s*^s*\\bibitem,=\\item
setlocal noinfercase
setlocal iskeyword=48-57,a-z,A-Z,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=pdflatex\ -shell-escape\ -interaction=nonstopmode\ $*
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=2
setlocal tags=~/Documents/uni/numerik/.git/tex.tags,~/Documents/uni/numerik/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
15,15fold
16,16fold
17,17fold
18,18fold
22,23fold
24,26fold
27,28fold
35,38fold
41,41fold
42,42fold
43,45fold
50,53fold
54,72fold
54,72fold
54,72fold
78,82fold
84,92fold
84,92fold
100,100fold
101,101fold
107,113fold
118,127fold
132,135fold
139,141fold
158,158fold
159,159fold
176,176fold
177,180fold
188,188fold
189,197fold
204,204fold
205,205fold
206,206fold
213,226fold
213,226fold
230,234fold
235,248fold
235,248fold
96,249fold
256,260fold
262,265fold
267,270fold
250,275fold
281,283fold
285,288fold
300,304fold
308,313fold
319,323fold
335,338fold
335,338fold
339,343fold
339,343fold
349,351fold
353,359fold
276,359fold
31,359fold
1,359fold
1
normal zo
15
normal zo
16
normal zo
17
normal zo
18
normal zo
22
normal zo
24
normal zo
27
normal zo
31
normal zo
35
normal zo
41
normal zo
42
normal zo
43
normal zo
50
normal zo
54
normal zo
54
normal zo
54
normal zo
54
normal zo
54
normal zo
78
normal zo
84
normal zo
84
normal zo
84
normal zo
96
normal zo
100
normal zo
101
normal zo
107
normal zo
118
normal zo
132
normal zo
139
normal zo
158
normal zo
159
normal zo
176
normal zo
177
normal zo
188
normal zo
189
normal zo
204
normal zo
205
normal zo
206
normal zo
213
normal zo
213
normal zo
213
normal zo
230
normal zo
235
normal zo
235
normal zo
235
normal zo
96
normal zo
250
normal zo
256
normal zo
262
normal zo
267
normal zo
250
normal zo
276
normal zo
281
normal zo
285
normal zo
300
normal zo
308
normal zo
319
normal zo
335
normal zo
335
normal zo
335
normal zo
339
normal zo
339
normal zo
339
normal zo
349
normal zo
353
normal zo
276
normal zo
31
normal zo
1
normal zo
let s:l = 12 - ((11 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
