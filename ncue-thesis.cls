\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ncue-thesis}[2026/06/22 v1.0 NCUE thesis template]

\newif\ifthesispagenumbers
\thesispagenumberstrue
\DeclareOption{nopagenumbers}{\thesispagenumbersfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[
  UTF8,
  scheme=plain,
  fontset=none,
  a4paper,
  oneside,
  openany
]{ctexbook}

\RequirePackage{geometry}
\geometry{top=2.54cm,bottom=2.54cm,left=2.54cm,right=2.54cm,headheight=14pt,headsep=0pt,footskip=1.3cm}

\RequirePackage{fontspec}
\RequirePackage{xeCJK}
\defaultfontfeatures{Ligatures=TeX,Scale=MatchLowercase}
\IfFontExistsTF{Times New Roman}{%
  \setmainfont{Times New Roman}%
}{%
  \setmainfont{texgyretermes-regular.otf}[
    BoldFont=texgyretermes-bold.otf,
    ItalicFont=texgyretermes-italic.otf,
    BoldItalicFont=texgyretermes-bolditalic.otf
  ]%
}
\IfFontExistsTF{標楷體}{%
  \setCJKmainfont{標楷體}[AutoFakeBold=2]%
}{\IfFontExistsTF{DFKai-SB}{%
  \setCJKmainfont{DFKai-SB}[AutoFakeBold=2]%
}{\IfFileExists{C:/Windows/Fonts/kaiu.ttf}{%
  \setCJKmainfont{kaiu.ttf}[Path=C:/Windows/Fonts/,AutoFakeBold=2]%
}{\IfFontExistsTF{Kaiti TC}{%
  \setCJKmainfont{Kaiti TC}[AutoFakeBold=2]%
}{\IfFontExistsTF{BiauKai}{%
  \setCJKmainfont{BiauKai}[AutoFakeBold=2]%
}{\IfFontExistsTF{STKaiti}{%
  \setCJKmainfont{STKaiti}[AutoFakeBold=2]%
}{\IfFontExistsTF{AR PL KaitiM Big5}{%
  \setCJKmainfont{AR PL KaitiM Big5}[AutoFakeBold=2]%
}{\IfFontExistsTF{bkai00mp.ttf}{%
  \setCJKmainfont{bkai00mp.ttf}[AutoFakeBold=2]%
}{\IfFontExistsTF{Noto Serif CJK TC}{%
  \setCJKmainfont{Noto Serif CJK TC}[AutoFakeBold=2]%
}{\IfFileExists{C:/Windows/Fonts/NotoSerifTC-VF.ttf}{%
  \setCJKmainfont{NotoSerifTC-VF.ttf}[Path=C:/Windows/Fonts/,AutoFakeBold=2]%
}{%
  \setCJKmainfont{FandolKai-Regular.otf}[AutoFakeBold=2]%
}}}}}}}}}}
\IfFontExistsTF{Microsoft JhengHei}{%
  \setCJKsansfont{Microsoft JhengHei}%
}{\IfFontExistsTF{PingFang TC}{%
  \setCJKsansfont{PingFang TC}%
}{\IfFontExistsTF{Noto Sans CJK TC}{%
  \setCJKsansfont{Noto Sans CJK TC}%
}{\IfFileExists{C:/Windows/Fonts/NotoSansTC-VF.ttf}{%
  \setCJKsansfont{NotoSansTC-VF.ttf}[Path=C:/Windows/Fonts/]%
}{%
  \setCJKsansfont{FandolHei-Regular.otf}[BoldFont=FandolHei-Bold.otf]%
}}}}
\IfFileExists{C:/Windows/Fonts/mingliu.ttc}{%
  \setCJKmonofont{mingliu.ttc}[Path=C:/Windows/Fonts/]%
}{\IfFontExistsTF{MingLiU}{%
  \setCJKmonofont{MingLiU}%
}{%
  \setCJKmonofont{FandolFang-Regular.otf}%
}}
\xeCJKsetup{PunctStyle=plain}

\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{tocloft}
\RequirePackage{caption}
\RequirePackage{chngcntr}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{enumitem}
\RequirePackage{xparse}
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\RequirePackage{bookmark}

\hypersetup{
  unicode=true,
  colorlinks=false,
  pdfborder={0 0 0},
  bookmarksnumbered=true,
  bookmarksopen=true
}

\makeatletter
% Word 範本的內文為 14 pt、單行間距；此處採 14/18 pt。
\renewcommand\normalsize{%
  \@setfontsize\normalsize{14pt}{18pt}%
  \abovedisplayskip 12pt plus 3pt minus 6pt%
  \abovedisplayshortskip 0pt plus 3pt%
  \belowdisplayshortskip 7pt plus 3pt minus 4pt%
  \belowdisplayskip \abovedisplayskip
}
\renewcommand\small{\@setfontsize\small{12pt}{15pt}}
\renewcommand\footnotesize{\@setfontsize\footnotesize{10.5pt}{13pt}}
\AtBeginDocument{\normalsize\setstretch{1.0}}
\makeatother

\setlength{\parindent}{2em}
\setlength{\parskip}{0pt}
\setlength{\emergencystretch}{2em}
\raggedbottom

% 章、節格式：章另起新頁並置頂置中；節不另起新頁。
\ctexset{
  chapter = {
    name = {第,章},
    number = \chinese{chapter},
    format = \centering\bfseries\fontsize{20pt}{24pt}\selectfont,
    nameformat = {},
    titleformat = {},
    beforeskip = 0pt,
    afterskip = 18pt,
    aftername = \quad,
    pagestyle = thesis
  },
  section = {
    name = {第,節},
    number = \chinese{section},
    format = \centering\bfseries\fontsize{16pt}{20pt}\selectfont,
    beforeskip = 18pt,
    afterskip = 18pt,
    aftername = \quad
  }
}

% 頁碼：預設顯示；若要完全仿照原 Word 的無頁碼畫面，使用 nopagenumbers 類別選項。
\fancypagestyle{thesis}{%
  \fancyhf{}
  \ifthesispagenumbers\fancyfoot[C]{\normalsize\thepage}\fi
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{plain}{%
  \fancyhf{}
  \ifthesispagenumbers\fancyfoot[C]{\normalsize\thepage}\fi
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{thesis}

% 前置頁使用大寫羅馬數字；正文自 1 起算。
\makeatletter
\renewcommand\frontmatter{%
  \clearpage
  \hypersetup{pageanchor=true}
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{thesis}
}
\renewcommand\mainmatter{%
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{thesis}
}
\renewcommand\backmatter{%
  \clearpage
  \@mainmatterfalse
  \pagestyle{thesis}
}
\makeatother

% 目錄只列到「節」；低層級仍可用下方三個命令排版。
\setcounter{secnumdepth}{1}
\setcounter{tocdepth}{1}

% 目錄／圖表目錄外觀。
\renewcommand{\cfttoctitlefont}{\hfill\bfseries\fontsize{20pt}{24pt}\selectfont}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{0pt}
\setlength{\cftaftertoctitleskip}{18pt}
\renewcommand{\cftlottitlefont}{\hfill\bfseries\fontsize{20pt}{24pt}\selectfont}
\renewcommand{\cftafterlottitle}{\hfill}
\setlength{\cftbeforelottitleskip}{0pt}
\setlength{\cftafterlottitleskip}{18pt}
\renewcommand{\cftloftitlefont}{\hfill\bfseries\fontsize{20pt}{24pt}\selectfont}
\renewcommand{\cftafterloftitle}{\hfill}
\setlength{\cftbeforeloftitleskip}{0pt}
\setlength{\cftafterloftitleskip}{18pt}

\renewcommand{\cftchapfont}{\normalfont}
\renewcommand{\cftchappagefont}{\normalfont}
\renewcommand{\cftsecfont}{\normalfont}
\renewcommand{\cftsecpagefont}{\normalfont}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforechapskip}{8pt}
\setlength{\cftbeforesecskip}{8pt}
\setlength{\cftsecindent}{2em}
\setlength{\cftsecnumwidth}{5em}

\renewcommand{\contentsname}{目錄}
\renewcommand{\listtablename}{表目錄}
\renewcommand{\listfigurename}{圖目錄}
\renewcommand{\tablename}{表}
\renewcommand{\figurename}{圖}

% 圖表依章編號，格式為 2-1。
\counterwithin{table}{chapter}
\counterwithin{figure}{chapter}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\captionsetup{font=normalsize,labelsep=space,skip=6pt}
\captionsetup[table]{position=top,justification=raggedright,singlelinecheck=false}
\captionsetup[figure]{position=bottom,justification=centering,singlelinecheck=true}

\renewcommand{\cfttabpresnum}{表~}
\renewcommand{\cftfigpresnum}{圖~}
\setlength{\cfttabnumwidth}{5em}
\setlength{\cftfignumwidth}{5em}
\renewcommand{\cfttableader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftfigleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforetabskip}{8pt}
\setlength{\cftbeforefigskip}{8pt}

% metadata ---------------------------------------------------------------
\makeatletter
\def\NCUE@university{國立彰化師範大學}
\def\NCUE@department{○○學系（所）}
\def\NCUE@degree{碩士論文}
\def\NCUE@titlezh{中文論文題目}
\def\NCUE@titleen{English Thesis Title}
\def\NCUE@student{○○○}
\def\NCUE@advisor{○○○}
\def\NCUE@advisorcredential{博士}
\def\NCUE@year{115}
\def\NCUE@month{7}
\def\NCUE@keywordszh{關鍵詞一、關鍵詞二、關鍵詞三}
\def\NCUE@keywordsen{keyword one, keyword two, keyword three}

\newcommand{\thesisuniversity}[1]{\gdef\NCUE@university{#1}}
\newcommand{\thesisdepartment}[1]{\gdef\NCUE@department{#1}}
\newcommand{\thesisdegree}[1]{\gdef\NCUE@degree{#1}}
\newcommand{\thesistitlezh}[1]{\gdef\NCUE@titlezh{#1}}
\newcommand{\thesistitleen}[1]{\gdef\NCUE@titleen{#1}}
\newcommand{\thesisstudent}[1]{\gdef\NCUE@student{#1}}
\newcommand{\thesisadvisor}[1]{\gdef\NCUE@advisor{#1}}
\newcommand{\thesisadvisorcredential}[1]{\gdef\NCUE@advisorcredential{#1}}
\newcommand{\thesisyear}[1]{\gdef\NCUE@year{#1}}
\newcommand{\thesismonth}[1]{\gdef\NCUE@month{#1}}
\newcommand{\thesiskeywordszh}[1]{\gdef\NCUE@keywordszh{#1}}
\newcommand{\thesiskeywordsen}[1]{\gdef\NCUE@keywordsen{#1}}

% 封面 -------------------------------------------------------------------
\newcommand{\makethesiscover}{%
  \hypersetup{pageanchor=false}
  \begin{titlepage}
    \thispagestyle{empty}
    \setlength{\parindent}{0pt}
    \centering
    {\fontsize{24pt}{30pt}\selectfont
      \NCUE@university\NCUE@department\par
      \vspace{36pt}
      \NCUE@degree\par
      \vspace{36pt}
      \begin{minipage}{\textwidth}\centering\NCUE@titlezh\end{minipage}\par
      \vspace{18pt}
      \begin{minipage}{\textwidth}\centering\NCUE@titleen\end{minipage}\par
      \vspace{72pt}
      研究生：\NCUE@student\par
      \vspace{36pt}
      指導教授：\NCUE@advisor\space \NCUE@advisorcredential\par
      \vfill
      中華民國\NCUE@year 年\NCUE@month 月\par
      \vspace*{36pt}
    }
  \end{titlepage}
}

% 無編號前置／後置標題，並加入目錄。
\newcommand{\thesisfrontchapter}[1]{%
  \clearpage
  \phantomsection
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
}
\newcommand{\thesisbackchapter}[1]{%
  \clearpage
  \phantomsection
  \chapter*{#1}
  \addcontentsline{toc}{chapter}{#1}
}

\newenvironment{chineseabstract}{\thesisfrontchapter{摘要}}{}
\newenvironment{englishabstract}{\thesisfrontchapter{Abstract}\begingroup}{\endgroup}
\newenvironment{acknowledgements}{\thesisfrontchapter{誌謝}}{}
\newcommand{\zhkeywords}[1]{\par\vspace{0.5\baselineskip}\noindent 關鍵詞：#1}
\newcommand{\enkeywords}[1]{\par\vspace{0.5\baselineskip}\noindent\textit{Keywords}: #1}
\newcommand{\zhkeywordsfrommetadata}{\zhkeywords{\NCUE@keywordszh}}
\newcommand{\enkeywordsfrommetadata}{\enkeywords{\NCUE@keywordsen}}
\newcommand{\acknowledgementsignature}{%
  \vfill
  \begin{flushright}
    \NCUE@student 謹誌於\\
    \NCUE@university\NCUE@department\\
    中華民國\NCUE@year 年\NCUE@month 月
  \end{flushright}
}

% 目錄與圖表目錄：將自身也列入總目錄。
\newcommand{\makethesistoc}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{目錄}
  \tableofcontents
}
\newcommand{\makethesislistoftables}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{表目錄}
  \listoftables
}
\newcommand{\makethesislistoffigures}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{圖目錄}
  \listoffigures
}

% 章節內文的三層層級：壹、／一、／(一)
\newcounter{ncuelevelone}[section]
\newcounter{ncueleveltwo}[ncuelevelone]
\newcounter{ncuelevelthree}[ncueleveltwo]
\newcommand{\NCUE@formalnum}[1]{%
  \ifcase#1 零\or 壹\or 貳\or 參\or 肆\or 伍\or 陸\or 柒\or 捌\or 玖\or 拾\else #1\fi
}
\NewDocumentCommand{\levelone}{m}{%
  \refstepcounter{ncuelevelone}%
  \setcounter{ncueleveltwo}{0}\setcounter{ncuelevelthree}{0}%
  \par\vspace{0.5\baselineskip}\noindent
  \NCUE@formalnum{\value{ncuelevelone}}、#1\par
}
\NewDocumentCommand{\leveltwo}{m}{%
  \refstepcounter{ncueleveltwo}%
  \setcounter{ncuelevelthree}{0}%
  \par\noindent\hspace*{1.5em}\chinese{ncueleveltwo}、#1\par
}
\NewDocumentCommand{\levelthree}{m}{%
  \refstepcounter{ncuelevelthree}%
  \par\noindent\hspace*{3em}(\chinese{ncuelevelthree})\space #1\par
}

\makeatother
