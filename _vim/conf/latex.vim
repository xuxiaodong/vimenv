"
" author:    Xu Xiaodong <xxdlhy@gmail.com> 
" modified:  2011 Apr 16 
"

"-- latex --"

" ,rl = run latex
map ,rl :!latex %

" ,rx = run xelatex
map ,rx :!xelatex %

" ,vd = view dvi file
map ,vd :!xdvi %<.dvi

" ,cps = create ps file (from dvi file of current file)
map ,cps :!dvips %<.dvi -o:!ghostview %<.ps

" ,rd = run dvipdf
map ,rd :!dvipdf %<.dvi

" ,vp = view pdf file
map ,vp :!epdfview %<.pdf

map! ]i \item 
map! ]bi \begin{itemize}
map! ]ei \end{itemize}
map! ]be \begin{enumerate}
map! ]ee \end{enumerate}
map! ]bd \begin{description}
map! ]ed \end{description}
map! ]bc \begin{center}
map! ]ec \end{center}
map! [be {\samepage\begin{eqnarray}
map! [ee \end{eqnarray}}
map! ]s1 \section{
map! ]s2 \subsection{
map! ]s3 \subsubsection{
map! ]p1 \paragraph{
map! ]p2 \subparagraph{
map! ]f \frac{
map! ]o \overline{
map! ]u \underline{
map! ;em bi{\em lea}i 
map! ]fn \footnote{
map! ]bl \begin{lstlisting}[frame=tb]
map! ]el \end{lstlisting}
