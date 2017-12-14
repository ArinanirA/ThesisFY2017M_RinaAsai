% jreport.sty 18 Dec 88

\typeout{Yokou_Style . <1992 2/26>      }
\typeout{Made by H.Akaboshi             }
\typeout{Modified by H.Saijo at 2004/2/15}

%\NeedsTeXFormat{pLaTeX2e}
%\ProvidesClass{graduate2002}[2000/02/20 v1.6 by yasunori.]

\LoadClass[12pt]{jarticle}

%       
%       Revised by H.Akaboshi 1992 2/22
%

%

\topmargin        -3mm
\oddsidemargin    -5mm
\evensidemargin   -5mm
\textwidth         170mm
\textheight       238mm
\headheight       0cm
\footskip         1cm
\headsep          0cm
\partopsep        0.0cm
\textfloatsep     0.3cm
\intextsep        0.3cm

\setlength{\leftmargin}{25mm}   % リスト環境の左マージン
\setlength{\rightmargin}{17mm}  % リスト環境の右マージン

\newlength{\defparindent}
\setlength{\defparindent}{\parindent}

\newcount \@unt
\newcount \@unt@

\newbox\課題ボックス\setbox\課題ボックス=\hbox{}
\newbox\題目ボックス\setbox\題目ボックス=\hbox{}
\newbox\副題ボックス\setbox\副題ボックス=\hbox{}
\newbox\発表者ボックス\setbox\発表者ボックス=\hbox{}
\newbox\教官ボックス\setbox\教官ボックス=\hbox{}
\newbox\日付ボックス\setbox\日付ボックス=\hbox{}
\newbox\時間ボックス\setbox\時間ボックス=\hbox{}
\newbox\場所ボックス\setbox\場所ボックス=\hbox{}
%% \newbox\univbox\setbox\unixbox=\hbox{}
%% \newbox\deptbox\setbox\deptbox=\hbox{}
%% \newbox\divnbox\setbox\divnbox=\hbox{}

\def\daimei{\def\@daimei}
\daimei{}
\def\課題#1{
  \global\setbox\課題ボックス=\hbox{#1}}
\def\発表者#1{
  \global\setbox\発表者ボックス=\hbox{#1}}
\def\日付#1{
  \global\setbox\日付ボックス=\hbox{#1}}
\def\教官#1{
  \global\setbox\教官ボックス=\hbox{#1}}
\def\時間#1{
  \global\setbox\時間ボックス=\hbox{#1}}
\def\場所#1{
  \global\setbox\場所ボックス=\hbox{#1}}
%% \def\univ#1{
%%   \global\setbox\univbox=\hbox{#1}}
%% \def\dept#1{
%%   \global\setbox\deptbox=\hbox{#1}}
%% \def\divn#1{
%%   \global\setbox\divnbox=\hbox{#1}}
\def\univ{\def\@univ}
\univ{}
\def\dept{\def\@dept}
\dept{}
\def\divn{\def\@divn}
\divn{}


%% ここに論文の題などを書く
\def\contentyokou{%
  \begin{center}
  \begin{minipage}{160mm}
  \begin{center}
    \begin{Large}
      \begin{bf}
	\vspace*{2cm}
	\@daimei\\
	\vspace*{1cm}
      \end{bf}
    \end{Large}
  \end{center}
  \end{minipage}
  \begin{minipage}{160mm}
    \setlength{\parindent}{\defparindent}
}

%% 議事録の最後に何か情報を打ち出す時にここに記述
\def\endcontentyokou{
  \begin{center}
    \begin{tabular}{lcl}
      \makebox[20mm][s]{発表者} & : & \box\発表者ボックス \\
      \makebox[20mm][s]{指導教員} & : & \box\教官ボックス \\
      \makebox[20mm][s]{日時} & : & \box\日付ボックス \\
      & & \box\時間ボックス \\
      \makebox[20mm][s]{場所} & : & \box\場所ボックス
    \end{tabular}
  \end{center}
  \end{minipage}
  \end{center}
}

\def\aka@pos{
  \begin{tabular}{l}
    \box\課題ボックス
  \end{tabular}
}

\def\aka2@pos{
  \begin{tabular*}{\textwidth}{l}
    \makebox[160mm][r]{\@univ \ \@dept} \\
    \makebox[160mm][r]{\@divn} \\
  \end{tabular*}
}


% 指定された大きさに箱を書く命令
% 注意−−−−−−この後に字を書くと箱の下に来る．
% \mkbox{横のサイズ}{縦のサイズ}
\def\mkbox#1#2 {%
\vbox{\hsize=#1 \vsize=#2
% offinterlineskip とは，行間の空きを０ptにする．
%\parindent=0pt\offinterlineskip 
%\hrule width\hsize depth0pt height0.4pt
%
\aka@pos
%
\hrule width\hsize depth0pt height0.4pt
\hbox to\hsize{%
\vrule height\vsize depth0pt width0.4pt
\hss
\vrule height\vsize depth0pt width0.4pt}
\hrule width\hsize depth0pt height0.4pt
\smallskip
\aka2@pos}
}

% 版面いっぱいのボックスを書く
%       \@outputpageというマクロの\shipoutを使っている箇所が
%       柱やノンブルを付け加えて出力している所
%
%
\def\@outputpage{\begingroup\catcode`\=10
 \let\-\@dischyph \let\'\@acci  \let\`\@accii \let\=\@acciii
 \if@specialpage
        \global\@specialpagefalse\@nameuse{ps@\@specialstyle}\fi
 \if@twoside
 \ifodd\count\z@
        \let\@thehead\@oddhead
        \let\@thefoot\@oddfoot
        \let\@themargin\oddsidemargin
 \else
        \let\@thehead\@evenhead
        \let\@thefoot\@evenfoot
        \let\@themargin\evensidemargin  
\fi\fi
\shipout
        \vbox{\normalsize \baselineskip\z@ \lineskip\z@
        \let\par\@@par 
        \vskip \topmargin \moveright\@themargin
        \vbox{\setbox\@tempboxa
%
          \vbox to0pt{\hbox to0pt{%ボックスを描く
            \mkbox{\textwidth}{\textheight} \hss} \vss}
%
        \vbox to\headheight{\vfil \hbox to\textwidth
          {\let\label\@gobble \let\index\@gobble
            \@thehead}}
        \dp\@tempboxa\z@
        \box\@tempboxa
        \vskip \headsep
        \box\@outputbox
        \baselineskip\footskip
        \hbox to\textwidth{\let\label\@gobble
          \let\index\@gobble
          \@thefoot}}}\global\@colht\textheight
	\endgroup\stepcounter{page}\let\firstmark\botmark}
