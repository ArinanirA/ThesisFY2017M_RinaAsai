% graduate.cls 31-Jan-99 from graduate1997.sty
% by Yasunori Hanada
% $Id: graduate.cls,v 1.1.1.1 2004/04/08 09:08:18 fujii Exp $
%\typeout{Document Class `graduate2002' <20 Feb 2000>.}

%追加
\typeout{Document Class graduate2002 <18 Jan 2002>.}
%追加

\NeedsTeXFormat{pLaTeX2e}
\ProvidesClass{graduate2002}[2000/02/20 v1.6 by yasunori.]
\LoadClass[12pt]{jreport}

\DeclareOption{no-colon}{
  \long\def\@makecaption#1#2{%
    \vskip\abovecaptionskip
    \iftdir\sbox\@tempboxa{#1\hskip1zw#2}%
      \else\sbox\@tempboxa{#1 #2}%
    \fi
    \ifdim \wd\@tempboxa >\hsize
      \iftdir #1\hskip1zw#2\relax\par
        \else #1 #2\relax\par\fi
    \else
      \global \@minipagefalse
      \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
    \fi
    \vskip\belowcaptionskip}}
\ProcessOptions\relax

% 卒論/修論用スタイルファイルの使い方
%
% まず、
%
% \documentclass{graduate}
%
% とする。
%
% 次に、少なくとも論文の表題と自分の名前を書く。
%
% \title{卒論/修論のタイトル}
% \author{花田泰紀}
%
% 学部生は
%
% \major{情報工学科}
%
% とする。続いて、
%
% \begin{document}
%
% 本文
%
% \end{document}
%
% 本文では以下の項目が使える。
%
% \preface{まえがき}			% ○ まえがき
% \part{卒論/修論}			% ○ 第 I 部などとなる。
% \chapter{はじめに}			% ○ 章
% \section{目的}			% ○ セクション
% \subsection{スタイルファイル}		% ○ サブセクション
% \subsubsection{}			%    サブサブセクション
% \paragraph{}				%    パラグラフ
% \subparagraph{}			%    サブパラグラフ
% \acknowledgment			% ○ 謝辞
% \begin{thebibliography}		% ○ 参考文献
% \bibitem
% \end{thebibliography}
% \appendix				% 付録
%  \chapter{付録の章}			% ○ \chapter を続ける
%
% ○のついている項目は目次に現れる。
%
%%% おまけ
%%%
%%% \commentout{コメント}
%%%
%%% とすればコメントアウトできる。
%%%
%%% \ruby{かんじ}{漢字}
%%%
%%% とすればルビがふれる。
%
% 以上
%			花田 泰紀 (yasunori@swlab.csce.kyushu-u.ac.jp)

%%
%% 用紙設定
%%

%\setlength{\hoffset}{-1mm}		% 1mm左にずらす
\newlength{\SIDEMARGIN}			% 左右のマージン
\setlength{\SIDEMARGIN}{22mm}
\setlength{\oddsidemargin}{\SIDEMARGIN}
\addtolength{\oddsidemargin}{-1in}
\setlength{\evensidemargin}{\oddsidemargin}
\setlength{\textwidth}{\paperwidth}	% 本文の幅
\addtolength{\textwidth}{-2\SIDEMARGIN}
\addtolength{\textwidth}{-1mm}		% 微調整

\setlength{\textheight}{650pt}
\setlength{\headsep}{15pt}
\setlength{\topmargin}{0pt}
\setlength{\topskip}{20pt}
\setlength{\footskip}{18pt}

\setlength{\leftmargin}{25mm}	% リスト環境の左マージン
\setlength{\rightmargin}{17mm}	% リスト環境の右マージン

%
% default設定
%
\title{修士論文のタイトル}
\author{名前}
\def\today{平成30 年 \the\month 月}

\def\major{\def\@major}
\major{修士課程 情報工学専攻}
\def\department{\def\@department}
%\department{システム情報科学研究科}
\def\subdepart{\def\@subdepart}
\subdepart{情報工学専攻}
\def\@acknowledgmentname{謝辞}
\def\@appendixname{付録}



%\def\abstractname{要 旨}
\def\tablename{表 }
\def\figurename{図 }
\def\indexname{索引}
\def\refname{参考文献} 
%\def\listtablename{表一覧}
%\def\listfigurename{図一覧}
\def\contentsname{目次}
\def\@chapapp#1{第 \lower0.1ex\hbox{#1} }
\def\@partapp#1{第 #1 部}

%追加
\def\abstract{\def\@abstract}
\abstract{
高性能化や低消費電力を実現させるために多くのアプリケーションにおいて
専用アクセラレータが検討されており，
その中で``レースロジック"と呼ばれる新しいコンピューティングの
アプローチが提案された．
レースロジックとは，伝搬信号が回路に
入力されてから出力されるまでの伝搬遅延時間が計算結果を示すというアプローチで,
これを用いることで動的計画法によって解くことができる最適化問題
の高速化が期待できる．
レースロジックの有効性は，
CMOSトランジスタを用いて実装された
DNAのグローバル配列アラインメントスコアを求める回路にて明らかにされている．
一方，ナノフォトニック・デバイスが
光速度で演算を実現できる素子として注目されており，
ニューラルアクセラレータや加算器などのアーキテクチャの検討がされている．

本研究では，光デバイスとレースロジックとの親和性に着目し，
ナノフォトニック・デバイスを用いたレースロジック回路の構成を目的とした．
本論文では，ナノフォトニック・デバイスを用いた
DNAのグローバル配列アラインメントスコアを求める回路を提案し，
光学シミュレータを用いた回路の機能検証と，
遅延時間・面積・消費電力のモデルの構築及び
そのモデル式を用いてDNA配列長Nに対する評価を行った．
機能検証の結果，雑音の影響がない場合において提案回路の動作を確認できた．
評価の結果，遅延時間はNに線形に従い，面積はNの2乗に従うことが分かった．
消費電力に関しては，ケーススタディとしてN=2の場合の値を示した．
また，雑音の信号伝搬に従って蓄積するという特徴や
光伝搬信号とナノフォトニック・デバイスの光速での計算能力について考察した．
その結果，
雑音が回路規模に及ぼす影響や，
光伝搬信号の光速での計算能力に追従する
回路伝搬遅延時間の検出感度を実現する方法を検討する
必要があることが明らかになった．
}
%追加

%
% スタイルパラメータ
%
\def\baselinestretch{1.35}

\def\thepart {\Roman{part}}
\def\thechapter {\arabic{chapter}}
\def\thesection {\thechapter.\arabic{section}}
\def\thesubsection {\thesection.\arabic{subsection}}
\def\thesubsubsection {\thesubsection .\arabic{subsubsection}}
\def\theparagraph {\thesubsubsection.\arabic{paragraph}}
\def\thesubparagraph {\theparagraph.\arabic{subparagraph}}

%
% macros for macros
%
\def\baselinechange#1{\def\baselinestretch{#1}\@normalsize}

%
% 表紙/目次
%
\gdef\chaptermark#1{\@chaptermark{\head@chapapp\ \ {#1}}}
\gdef\@chaptermark#1{\gdef\@thehead{\vbox{\hbox to \textwidth{
  \gt\bf\ {#1}\hfil\thepage\ }
  \hbox{\rule[-2pt]{\textwidth}{1pt}}}}}
\def\maketitle{
 \begin{titlepage}
  \null
  \vfil
  \begin{center}
%変更
   {\LARGE\bf\gt\@title\par}\vskip 20em minus 1em
   {\Large\bf\gt\@author\par}\vskip 1em minus 4em
   {\large\bf\@date}\vskip 3em minus 1em
   {\large\bf\gt 修士課程\par}
   {\large\bf\gt\@major\par}
   {\large\bf\gt 社会情報システム工学コース\par}
%変更
  \end{center}
  \vfil
%追加
  \newpage
  {\thispagestyle{empty}
  \global\@topnum\z@ \@afterindenttrue
  {\center\Large\bf\@title\par}\vskip 2em
  \hfill{\large\bf\@author\par}\vskip 4em
  {\Large\bf\noindent 内容梗概}\par\vskip 1em
  \@abstract}
%追加
  \newpage
  {\pagenumbering{roman}
  \baselinechange{1}
  \tableofcontents
% \listoffigures
% \listoftables
  }
  \newpage
  \pagenumbering{arabic}
  \pagestyle{myheadings}
  \gdef\@thefoot{\vbox{
   \vspace{18pt}
   \hrule width\textwidth height0.25pt\vskip3pt
   \hbox to\textwidth{\hfill{\footnotesize\@department}\hspace{40pt}}
   \vspace{-2mm}
  \hbox to\textwidth{\hfill{\footnotesize\@subdepart}\hspace{40pt}}}}
  \setcounter{page}{1}
\end{titlepage}}

%
% はじめに/おわりに
%
\def\preface#1{\clearpage\typeout{#1}
 \thispagestyle{plain}
 \global\@topnum\z@ \@afterindenttrue
 \addcontentsline{toc}{chapter}{#1}
 \@chaptermark{\bf\gt #1}
 \@makeschapterhead{\bf\gt #1}
 \@afterheading}

\let\conclusion=\preface

%
% 本文
%

%
% 本文:ヘッダ
%
\def\head@chapapp{\@chapapp{\thechapter}\@chappos}

%
% 本文:chapter,section,...
%
\def\chapterfont#1{\gdef\font@c{#1}}
\chapterfont{\huge\bf}
%\sectionfont{\Large\bf}{\large\bf}{\large\bf}

\def\@makechapterhead#1{ \vspace*{50pt} { \parindent 0pt \raggedright 
 \ifnum \c@secnumdepth >\m@ne \font@c \@chapapp{\thechapter}\@chappos\par 
 \vskip 40pt plus 10pt minus 10pt \fi \font@c \bf #1\par 
 \nobreak \vskip 40pt plus 10pt minus 10pt } }

\def\@makeschapterhead#1{ \vspace*{50pt} { \parindent 0pt \raggedright 
 \font@c \bf #1\par 
 \nobreak \vskip 40pt plus 10pt minus 10pt } }

\def\@chapter[#1]#2{%
  \ifnum \c@secnumdepth >\m@ne
    \refstepcounter{chapter}%
    \typeout{\@chapapp\space\thechapter\space\@chappos}%
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}%
  \else
    \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \@makechapterhead{#2}\@afterheading}

\def\chapter{\clearpage \thispagestyle{plain} \global\@topnum\z@
\@afterindenttrue \secdef\@chapter\@schapter} 

%
% 謝辞
%
\def\acknowledgment{\clearpage\typeout{\@acknowledgmentname}
 \thispagestyle{plain}
 \global\@topnum\z@ \@afterindenttrue
 \addcontentsline{toc}{chapter}{\@acknowledgmentname}
 \refstepcounter{chapter}
 \@chaptermark{\@acknowledgmentname}
 \@makeschapterhead{\@acknowledgmentname}
 \@afterheading}

%
% 参考文献
%

\def\thebibliography#1{\chapter*{\refname\@mkboth
 {\refname}{\refname}}
 \typeout{\refname}\addcontentsline{toc}{chapter}{\refname}
 \@chaptermark{\refname}
 \list
 {[\arabic{enumi}]}{\settowidth\labelwidth{[#1]}\leftmargin\labelwidth
 \advance\leftmargin\labelsep
 \usecounter{enumi}}
 \def\newblock{\hskip .11em plus .33em minus .07em}
 \sloppy\clubpenalty4000\widowpenalty4000
 \sfcode`\.=1000\relax}
\let\endthebibliography=\endlist

\newif\if@restonecol
\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 35pt\twocolumn[\@makeschapterhead{\indexname}]
 \@mkboth{\indexname}{\indexname}\thispagestyle{plain}\parindent\z@
 \parskip\z@ plus .3pt\relax\let\item\@idxitem}
\def\@idxitem{\par\hangindent 40pt}
\def\subitem{\par\hangindent 40pt \hspace*{20pt}}
\def\subsubitem{\par\hangindent 40pt \hspace*{30pt}}
\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}
\def\indexspace{\par \vskip 10pt plus 5pt minus 3pt\relax}

\def\footnoterule{\kern-3\p@ 
 \hrule width .4\columnwidth 
 \kern 2.6\p@} 
\@addtoreset{footnote}{chapter} 
\long\def\@makefntext#1{\parindent 1em\noindent 
 \hbox to 1.8em{\hss$^{\@thefnmark}$}#1}

%
% 付録
%
\def\appendix{\par
 \setcounter{chapter}{0}
 \setcounter{section}{0}
 \def\@chapapp{\@appendixname\ \Alph{chapter}}
 \def\postchaptername{}
 \def\head@chapapp{\@appendixname\ \Alph{chapter}}
 \def\thechapter{}
 \def\thesection {\Alph{chapter}.\arabic{section}}
\def\thefigure{\Alph{chapter}.\@arabic\c@figure}
 \def\thetable{\Alph{chapter}.\@arabic\c@table}
 \gdef\@chapter[##1]##2{
  \refstepcounter{chapter}
  \typeout{\@appendixname\space\Alph{chapter}}
  \addcontentsline{toc}{chapter}{\@appendixname\ \Alph{chapter} ##1}
  \chaptermark{##1}
  \addtocontents{lof}{\protect\addvspace{10pt}}
  \addtocontents{lot}{\protect\addvspace{10pt}} \if@twocolumn
  \@topnewpage[\@makechapterhead{##2}] 
  \else \@makechapterhead{##2}
  \@afterheading \fi}
}

%
% 索引
%
\def\insertindex{\clearpage\typeout{\indexname}
 \thispagestyle{plain}
 \global\@topnum\z@ \@afterindenttrue
 \addcontentsline{toc}{chapter}{\indexname}
 \refstepcounter{chapter}
 \@chaptermark{\indexname}
 \@afterheading}

%
% おまけ
%

%\delayedfont\rubyhira=dmjhira5
%\delayedfont\rubykata=dmjkata5
%\def\ruby#1#2{\leavevmode\vbox{\baselineskip\z@skip \lineskip.25ex
% \ialign{##\crcr \let\jhira=\rubyhira \let\jkata=\rubykata
%  \hfill#1\hfill\crcr\hfill#2\hfill\crcr}}}

\def\commentout{\def\@comment}

%
% for NTT-JTeX
%

%\def\@ptsize{2} \@namedef{ds@10pt}{\def\@ptsize{0}}
%\@namedef{ds@11pt}{\def\@ptsize{1}} 
%\def\ds@twoside{\@twosidetrue \@mparswitchtrue} \def\ds@draft{\overfullrule
%5pt} 
%\@options
%\input j-rep1\@ptsize.sty\relax


%%\parsep 1pt plus 2.5pt minus 1pt
%%\itemsep 1pt plus 2.5pt minus 1pt
%%\topsep 1pt plus 2.5pt minus 1pt
\partopsep 3pt plus 2pt minus 2pt

%\jintercharskip 0pt plus 5pt minus 0.2pt

%\def\JTeX{\leavevmode\lower.5ex\hbox{J}\kern-.18em\TeX}
%\def\JLaTeX{\leavevmode\lower.5ex\hbox{\rm J}\kern-.1em\LaTeX}

%

%\def\document{\endgroup
%  \@colht\textheight  \@colroom\textheight \vsize\textheight
%   \columnwidth\textwidth \@clubpenalty\clubpenalty
%   \if@twocolumn \advance\columnwidth -\columnsep 
%      \divide\columnwidth\tw@ \hsize\columnwidth \@firstcolumntrue 
%   \fi
%  \hsize\columnwidth \linewidth\hsize
%  \begingroup\@floatplacement\@dblfloatplacement
%   \makeatletter\let\@writefile\@gobbletwo
%   \@input{\jobname.aux}\endgroup 
%  \if@filesw \immediate\openout\@mainaux=\jobname.aux
%    \immediate\write\@mainaux{\relax}\fi
%  \def\do##1{\let ##1\@notprerr}
%  \@preamblecmds
%  \let\do\noexpand  
%  \@normalsize\everypar{}% changed for ntt-jtex 1.51 1996/6/6 by nom
%  \maketitle\everypar{}
%  }
%

\def\labelenumi{\theenumi.} 
\def\theenumi{\arabic{enumi}} 
\def\labelenumii{(\theenumii)}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{\theenumiii.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{\theenumiv.}
\def\theenumiv{\Alph{enumiv}} 
\def\p@enumiv{\p@enumiii\theenumiii}

\def\labelitemi{$\bullet$}
\def\labelitemii{\bf --}
\def\labelitemiii{$\ast$}
\def\labelitemiv{$\cdot$}

%\def\verse{\let\\=\@centercr 
% \list{}{\itemsep\z@ \itemindent -1.5em\listparindent \itemindent 
% \rightmargin\leftmargin\advance\leftmargin 1.5em}\item[]}
%\let\endverse\endlist
%\def\quotation{\list{}{\listparindent 1.5em
% \itemindent\listparindent
% \rightmargin\leftmargin\parsep 0pt plus 1pt}\item[]}
%\let\endquotation=\endlist
%\def\quote{\list{}{\rightmargin\leftmargin}\item[]}
%\let\endquote=\endlist

%\def\descriptionlabel#1{\hspace\labelsep \bf #1}
%\def\description{\list{}{\labelwidth\z@ \itemindent-\leftmargin
% \let\makelabel\descriptionlabel}}
%\let\enddescription\endlist
%\newdimen\descriptionmargin
%\descriptionmargin=3em
%

\def\titlepage{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \else \newpage \fi \thispagestyle{empty}\c@page\z@}
\def\endtitlepage{\if@restonecol\twocolumn \else \newpage \fi}

\arraycolsep 5pt \tabcolsep 6pt \arrayrulewidth .4pt \doublerulesep 2pt 
\tabbingsep \labelsep 
\skip\@mpfootins = \skip\footins
\fboxsep = 3pt \fboxrule = .4pt 
%

\def\part{\cleardoublepage \thispagestyle{plain} \if@twocolumn \onecolumn
\@tempswatrue \else \@tempswafalse \fi \hbox{}\vfil \secdef\@part\@spart} 

\def\@part[#1]#2{\ifnum \c@secnumdepth >-2\relax \refstepcounter{part}
\addcontentsline{toc}{part}{\thepart \hspace{1em}#1}\else
\addcontentsline{toc}{part}{#1}\fi \markboth{}{}
\@chaptermark{\@partapp{\thepart}\ #1}
 {\centering \ifnum \c@secnumdepth >-2\relax \LARGE\bf \@partapp{\thepart} \par
\vskip 20pt \fi \LARGE \bf #1\par}\@endpart} 
\def\@endpart{\vfil\newpage \if@twoside \hbox{} \thispagestyle{empty} 
 \newpage 
 \fi \if@tempswa \twocolumn \fi} 
\def\@spart#1{{\centering \LARGE \bf #1\par}\@endpart}
%
\def\@pnumwidth{1.55em}
\def\@tocrmarg {2.55em}
\def\@dotsep{4.5}
\setcounter{tocdepth}{2}

\def\tableofcontents{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
 \fi\chapter*{\contentsname\@mkboth{\contentsname}{\contentsname}}
 \@starttoc{toc}\if@restonecol\twocolumn\fi}
%\def\l@part#1#2{\addpenalty{-\@highpenalty}
% \addvspace{2.25em plus 1pt} \begingroup
% \@tempdima 3em \parindent \z@ \rightskip \@pnumwidth \parfillskip
%-\@pnumwidth 
% {\large \bf \leavevmode #1\hfil \hbox to\@pnumwidth{\hss #2}}\par
% \nobreak \endgroup}
%\def\l@chapter#1#2{\pagebreak[3] 
% \vskip 1.0em plus 1pt \@tempdima 1.5em \begingroup
% \parindent \z@ \rightskip \@pnumwidth 
% \parfillskip -\@pnumwidth 
% \bf \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip #1 \nobreak\hfil
%\nobreak\hbox to\@pnumwidth{\hss #2}\par
% \endgroup}
\def\l@chapter#1#2{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \addvspace{1.0em \@plus\p@}%
    \begingroup
      \parindent\z@ \rightskip\@pnumwidth \parfillskip-\rightskip
      \leavevmode\bfseries
      \setlength\@lnumwidth{1.5zw}% set by yasunori, originally 4zw
      \advance\leftskip\@lnumwidth \hskip-\leftskip
      #1\nobreak\hfil\nobreak\hbox to\@pnumwidth{\hss#2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\def\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\def\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\def\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\def\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\def\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%\def\listoffigures{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
% \fi\chapter*{\listfigurename\@mkboth
% {\listfigurename}{\listfigurename}}\@starttoc{lof}\if@restonecol
% \twocolumn\fi}
%\def\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
%\def\listoftables{\@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
% \fi\chapter*{\listtablename\@mkboth
% {\listtablename}{\listtablename}}\@starttoc{lot}\if@restonecol
% \twocolumn\fi}
%\let\l@table\l@figure

%
%\setcounter{topnumber}{2}
%\def\topfraction{.7}
%\setcounter{bottomnumber}{1}
%\def\bottomfraction{.3}
%\setcounter{totalnumber}{3}
%\def\textfraction{.2}
%\def\floatpagefraction{.5}
%\setcounter{dbltopnumber}{2}
%\def\dbltopfraction{.7}
%\def\dblfloatpagefraction{.5}

%\long\def\@makecaption#1#2{
% \vskip 10pt 
% \setbox\@tempboxa\hbox{#1: #2}
% \ifdim \wd\@tempboxa >\hsize #1: #2\par \else \hbox
%to\hsize{\hfil\box\@tempboxa\hfil} 
% \fi}

%\newcounter{figure}[chapter]
%\def\thefigure{\thechapter.\@arabic\c@figure}
%\def\fps@figure{tbp}
%\def\ftype@figure{1}
%\def\ext@figure{lof}
%\def\fnum@figure{\figurename \thefigure}
%\def\figure{\@float{figure}}
%\let\endfigure\end@float
%\@namedef{figure*}{\@dblfloat{figure}}
%\@namedef{endfigure*}{\end@dblfloat}
%\newcounter{table}[chapter]
%\def\thetable{\thechapter.\@arabic\c@table}
%\def\fps@table{tbp}
%\def\ftype@table{2}
%\def\ext@table{lot}
%\def\fnum@table{\tablename \thetable}
%\def\table{\@float{table}}
%\let\endtable\end@float
%\@namedef{table*}{\@dblfloat{table}}
%\@namedef{endtable*}{\end@dblfloat}
%
%%\input j-titlepage.sty
%
\mark{{}{}} 

\if@twoside \def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}\def\@evenhead{\rm \thepage\hfil 
\leftmark}\def\@oddhead{\hbox{} \rightmark \hfil
\rm\thepage}\def\chaptermark##1{\markboth {{\ifnum \c@secnumdepth
>\m@ne
 \@chapapp{\thechapter} \ \fi ##1}}{}}\def\sectionmark##1{\markright
{{\ifnum \c@secnumdepth >\z@
 \thesection. \ \fi ##1}}}}
\else \def\ps@headings{\let\@mkboth\markboth
\def\@oddfoot{}\def\@evenfoot{}\def\@oddhead{\hbox {} \rightmark \hfil
\rm\thepage}\def\chaptermark##1{\markright {{\ifnum \c@secnumdepth
>\m@ne
 \@chapapp{\thechapter} \ \fi ##1}}}}
\fi
\def\ps@myheadings{\let\@mkboth\@gobbletwo
\def\@oddhead{\hbox{}\rightmark \hfil
\rm\thepage}\def\@oddfoot{}\def\@evenhead{\rm \thepage\hfil\leftmark\hbox
{}}\def\@evenfoot{}\def\chaptermark##1{}%
\def\sectionmark##1{}\def\subsectionmark##1{}}

%
%\@addtoreset{equation}{chapter} 
%\def\theequation{\thechapter.\arabic{equation}}

%
\ps@plain \pagenumbering{arabic} \onecolumn \if@twoside\else\raggedbottom\fi 

\flushbottom

%\def\bf{\protect\pdg\protect\pbf}

\def\sloppy{\tolerance 5000 \hfuzz .5\p@ \vfuzz .5\p@}


\endinput

