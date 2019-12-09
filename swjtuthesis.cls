%%
%% This is file `swjtuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% swjtuthesis.dtx  (with options: `class')
%% 
%% Copyright (C) 2018-2019 by GeosciMan <geosciman@163.com>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.2 of this license or (at your option) any later
%% version. The latest version of this license is in:
%% 
%%     http://www.latex-project.org/lppl.txt
%% 
%% and version 1.2 or later is part of all distributions of
%% LaTeX version 1999/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{swjtuthesis}
    [2018/03/28 v1.1 SWJTU thesis template]
\newif\if@swjtu@doctor
\newif\if@swjtu@master
\newif\if@swjtu@bachelor
\newif\if@swjtu@professional
\newif\if@swjtu@english
\newif\if@swjtu@numerical
\newif\if@swjtu@super
\newif\if@swjtu@pdf
\DeclareOption{doctor}{\@swjtu@doctortrue\@swjtu@masterfalse\@swjtu@bachelorfalse}
\DeclareOption{master}{\@swjtu@doctorfalse\@swjtu@mastertrue\@swjtu@bachelorfalse}
\DeclareOption{bachelor}{\@swjtu@doctorfalse\@swjtu@masterfalse\@swjtu@bachelortrue}
\DeclareOption{professional}{\@swjtu@professionaltrue}
\DeclareOption{chinese}{\@swjtu@englishfalse}
\DeclareOption{english}{\@swjtu@englishtrue}
\DeclareOption{print}{\@swjtu@pdffalse}
\DeclareOption{pdf}{\@swjtu@pdftrue}
\DeclareOption{super}{\@swjtu@numericaltrue\@swjtu@supertrue}
\DeclareOption{numbers}{\@swjtu@numericaltrue\@swjtu@superfalse}
\DeclareOption{authoryear}{\@swjtu@numericalfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{doctor,chinese,print,super}
\ProcessOptions\relax
\newif\if@swjtu@addtocspace
\if@swjtu@bachelor
    \@swjtu@addtocspacetrue
\fi
\if@swjtu@english
  \PassOptionsToClass{scheme=plain}{ctexbook}
\fi
\if@swjtu@pdf
  \PassOptionsToClass{oneside}{book}
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[UTF8, a4paper, openany, zihao=-4]{ctexbook}[2018/03/15]
\RequirePackage{etoolbox}
\@ifclasslater{ctexbook}{2015/05/14}{}{%
    \ClassError{swjtuthesis}{%
        Requiring ctex 2.0 or later version!\MessageBreak
        Please update the package using your\MessageBreak
        TeX package manager or from CTAN
    }{%
        See swjtuthesis.pdf for more detailed update guide.
    }
}
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}
\RequirePackage{hyperref}
\hypersetup{
    bookmarksopen=true,
    bookmarksnumbered=true,
    bookmarksopenlevel=1,
    CJKbookmarks=true,
    pdfborder=0 0 0,
    unicode=true,
    linktoc=all,
}
\if@swjtu@pdf
    \hypersetup{
        colorlinks=true,
        allcolors=blue,
    }
\fi
\AtBeginDocument{
    \hypersetup{
        pdftitle={\swjtu@title},
        pdfauthor={\swjtu@author}
    }
}
\RequirePackage{xparse}
\NewDocumentCommand\setfontsize{mo}{\IfValueTF{#2}{\fontsize{#1}{#2}}{\fontsize{#1}{2\dimexpr#1}}\linespread{1}\selectfont\relax}
\newcommand\zhspace[1][1]{\hspace{#1\ccwd}}
\newcommand\swjtu@underline[2][6em]{%
    \hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt\relax
}
\def\swjtu@define@term#1{
    \expandafter\gdef\csname #1\endcsname##1{
        \expandafter\gdef\csname swjtu@#1\endcsname{##1}
    }
    \csname #1\endcsname{}
}
\swjtu@define@term{professionaltype}
\swjtu@define@term{title}
\swjtu@define@term{classifiedindex}
\swjtu@define@term{UDC}
\swjtu@define@term{secrettext}
\swjtu@define@term{grade}
\swjtu@define@term{author}
\swjtu@define@term{discipline}
\swjtu@define@term{major}
\swjtu@define@term{supervisor}
\swjtu@define@term{cosupervisor}
\swjtu@define@term{date}
\swjtu@define@term{enprofessionaltype}
\swjtu@define@term{entitle}
\swjtu@define@term{enclassifiedindex}
\swjtu@define@term{enUDC}
\swjtu@define@term{ensecrettext}
\swjtu@define@term{engrade}
\swjtu@define@term{enauthor}
\swjtu@define@term{endiscipline}
\swjtu@define@term{enmajor}
\swjtu@define@term{ensupervisor}
\swjtu@define@term{encosupervisor}
\swjtu@define@term{endate}
\date{\zhnumsetup{time=Chinese}\zhtoday}
\endate{\CTEX@todayold}
\if@swjtu@english
  \renewcommand\figurename{Fig.}
  \newcommand\swjtu@notesname{\textbf{Notes}: }
  \newcommand\swjtu@acknowledgementsname{Acknowledgements}
  \newcommand\swjtu@publicationsname{Publications}
  \newcommand\swjtu@notationname{Notation}
\else
  \renewcommand\listfigurename{图目录}
  \renewcommand\listtablename{表目录}
  \newcommand\swjtu@notesname{\textbf{注}：}
  \newcommand\swjtu@acknowledgementsname{致谢}
  \newcommand\swjtu@publicationsname{在读期间发表的学术论文与取得的研究成果}
  \newcommand\swjtu@notationname{符号说明}
  \def\equationautorefname~#1\null{公式~(#1)\null}%
  \def\footnoteautorefname{脚注}%
  \def\itemautorefname~#1\null{第~#1~项\null}%
  \def\figureautorefname{图}%
  \def\tableautorefname{表}%
  \def\partautorefname~#1\null{第~#1~部分\null}%
  \def\appendixautorefname{附录}%
  \def\chapterautorefname~#1\null{第~#1~章\null}%
  \def\sectionautorefname~#1\null{第~#1~节\null}%
  \def\subsectionautorefname~#1\null{第~#1~小节\null}%
  \def\subsubsectionautorefname~#1\null{第~#1~小小节\null}%
  \def\paragraphautorefname~#1\null{第~#1~段\null}%
  \def\subparagraphautorefname~#1\null{第~#1~小段\null}%
  \def\theoremautorefname{定理}%
  \def\pageautorefname~#1\null{第~#1~页\null}%
\fi
\RequirePackage{geometry}
\geometry{
    paper=a4paper,
    top=2.54cm, bottom=2.54cm,
    left=3.17cm, right=3.17cm,
    headheight=0.75cm, headsep=0.29cm,
    footskip=0.79cm}
\RequirePackage{fancyhdr}
\renewcommand{\headrulewidth}{0.4pt}
\if@swjtu@bachelor
  \fancypagestyle{swjtu@headings}{%
    \fancyhf{}%
    \fancyhead[C]{\setfontsize{9\bp@}西南交通大学本科毕业论文}%
    \fancyfoot[C]{\setfontsize{9\bp@}\thepage}}%
\else
  \fancypagestyle{swjtu@headings}{%
    \fancyhf{}%
    \fancyhead[C]{\setfontsize{10.5\bp@}\leftmark}%
    \fancyfoot[C]{\setfontsize{10.5\bp@}\thepage}}%
\fi
\fancypagestyle{swjtu@notation}{\fancyfoot{}}
\pagestyle{swjtu@headings}
\patchcmd\chaptermark{#1}{\protect\spacetitle{#1}}{}{}
\renewcommand*{\cleardoublepage}{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\g@addto@macro\frontmatter{%
  \if@swjtu@bachelor
    \pagenumbering{gobble}%
  \else
    \pagenumbering{Roman}%
  \fi}
\renewcommand\mainmatter{%
  \if@swjtu@bachelor
    \clearpage
  \else
    \cleardoublepage
    \pagenumbering{arabic}%
  \fi
  \@mainmattertrue
}
\renewcommand\chapter{%
    \if@openright\cleardoublepage\else\clearpage\fi
    \global\@topnum\z@
    \@afterindenttrue
    \if@swjtu@bachelor
      \if@mainmatter
        \ctexset{chapter/format = \centering\sffamily\setfontsize{16\bp@}}
      \else
        \ctexset{chapter/format = \centering\sffamily\setfontsize{18\bp@}}
      \fi
      \if@swjtu@addtocspace
        \addtocontents{toc}{\protect\addvspace{12\bp@}}%
      \fi
    \fi
    \secdef\@chapter\@schapter
}
\RequirePackage{pifont}
\def\swjtu@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{swjtuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ding{\the\numexpr\value{#1}+191\relax}}
\RequirePackage{xstring}
\newcommand\spacetitle[1]{%
  \StrLen{#1}[\titlelength]%
  \if@swjtu@bachelor
    \if@mainmatter\relax\else
      \ifnum\titlelength=2\ziju{1}\else
        \ifnum\titlelength=4\ziju{0.5}%
        \fi
      \fi
    \fi
  \else
    \ifnum\titlelength=2\ziju{2}\else
      \ifnum\titlelength=3\ziju{1}\else
        \ifnum\titlelength=4\ziju{0.5}%
        \fi
      \fi
    \fi
  \fi#1}
\setcounter{secnumdepth}{5}
\ctexset{
    chapter = {
        format      = \centering\sffamily\bfseries\setfontsize{16\bp@},
        nameformat  = {},
        titleformat = \spacetitle,
        number      = \thechapter,
        aftername   = \hspace{\ccwd},
        beforeskip  = -7\bp@, % 24bp - 31bp
        afterskip   = 8\bp@, % 18bp - 10bp
        % fixskip   = true, % will be used in future version
    },
    section = {
        format     = \sffamily\setfontsize{14\bp@},
        aftername  = \hspace{\ccwd},
        beforeskip = 24\bp@,
        afterskip  = 6\bp@,
    },
    subsection = {
        format     = \sffamily\setfontsize{13\bp@},
        aftername  = .\hspace{\ccwd},
        indent     = 2\ccwd,
        beforeskip = 12\bp@,
        afterskip  = 6\bp@,
    },
    subsubsection = {
        format     = \sffamily\setfontsize{12\bp@},
        number     = \arabic{subsubsection},
        aftername  = .\hspace{\ccwd},
        indent     = 3\ccwd,
        beforeskip = 12\bp@,
        afterskip  = 6\bp@,
    },
    paragraph = {
        format     = \sffamily\setfontsize{12\bp@},
        number     = (\arabic{paragraph}),
        aftername  = \hspace{\ccwd},
        indent     = 3\ccwd,
        beforeskip = \z@,
        afterskip  = \z@,
        runin      = false,
    },
    subparagraph = {
        format     = \sffamily\setfontsize{12\bp@},
        number     = \swjtu@textcircled{subparagraph},
        aftername  = \hspace{\ccwd},
        indent     = 3\ccwd,
        beforeskip = \z@,
        afterskip  = \z@,
        runin      = false,
    },
}
\if@swjtu@bachelor
    \setcounter{secnumdepth}{4}
    \ctexset{
        chapter={
            format = \centering\sffamily\setfontsize{16\bp@},
            number = \chinese{chapter},
        },
        section = {
            format = \centering\sffamily\setfontsize{15\bp@},
            name   = {第,节},
            number = \chinese{section},
        },
        subsection = {
            format    = \sffamily\setfontsize{14\bp@},
            number    = \chinese{subsection},
            aftername = {、},
        },
        subsubsection = {
            format    = {\rmfamily\setfontsize{12\bp@}},
            number    = \arabic{subsubsection},
            aftername = {.\ },
            indent    = \ccwd,
        },
        paragraph = {
            format    = {\rmfamily\setfontsize{12\bp@}},
            name      = {(,)},
            number    = \arabic{paragraph},
            aftername = {\ },
            indent    = 2\ccwd,
        },
        subparagraph = {
            format    = {},
            name      = {},
            indent    = 2\ccwd,
        },
    }
\fi
\newcounter{swjtu@pdfbookmark}
\NewDocumentCommand\swjtu@chapter{o m}{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \addtocounter{swjtu@pdfbookmark}\@ne
  \IfValueTF{#1}{%
    \pdfbookmark[0]{#1}{swjtuchapter.\theswjtu@pdfbookmark}%
    \chaptermark{#1}%
  }{%
    \pdfbookmark[0]{#2}{swjtuchapter.\theswjtu@pdfbookmark}%
    \chaptermark{#2}%
  }%
  \chapter*{#2}}
\renewcommand\maketitle{%
    \newgeometry{
        top=3.8cm, bottom=3.8cm,
        left=3.2cm, right=3.2cm,
        headheight=0cm, headsep=0.8cm,
        footskip=0.8cm}
    \pagenumbering{gobble}
    \pdfbookmark[0]{封面}{titlepage}
    \make@cntitle \cleardoublepage
    \pdfbookmark[0]{Title page}{entitlepage}
    \restoregeometry
    \if@swjtu@bachelor\relax\else
        \if@swjtu@pdf\relax\else%
            \pdfbookmark[0]{原创性声明}{statement}
            \make@statement \cleardoublepage
        \fi
    \fi
}
\if@swjtu@doctor
  \if@swjtu@professional
    \newcommand\swjtu@thesisname{专业博士学位论文}%
  \else
    \newcommand\swjtu@thesisname{博士学位论文}%
  \fi
  \newcommand\swjtu@enthesisname{A dissertation for doctor's degree}%
\else
  \if@swjtu@master
    \if@swjtu@professional
      \newcommand\swjtu@thesisname{专业硕士学位论文}
    \else
      \newcommand\swjtu@thesisname{硕士学位论文}
    \fi
    \newcommand\swjtu@enthesisname{A dissertation for master's degree}
  \else
    \newcommand\swjtu@thesisname{学士学位论文}
    \newcommand\swjtu@enthesisname{A dissertation for bachelor's degree}
  \fi
\fi
\newcommand\swjtu@supervisorline{%
  \ifx\swjtu@encosupervisor\@empty%
    Supervisor: \swjtu@ensupervisor%
  \else%
    Supervisors: \swjtu@ensupervisor, \swjtu@encosupervisor%
  \fi}
\RequirePackage{tikz}
\newcommand\vpostext[2]{%
    \tikz[remember picture,overlay]%
        \node [yshift=-#1] at (current page.north) [below,align=flush center]%
            {\parbox{\textwidth}{\centering#2}};}
\newcommand\make@cntitle{%
    \begin{titlepage}%
        \tikz[remember picture,overlay]%
            \node [yshift=-4cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\fangsong\setfontsize{14\bp@}\swjtu@classifiedindex}};%
                {\parbox{\textwidth}{\raggedleft\fangsong\setfontsize{14\bp@}\swjtu@secrettext}}%
        \tikz[remember picture,overlay]%
            \node [yshift=-5cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\fangsong\setfontsize{14\bp@}\swjtu@UDC}};%
        \if@swjtu@professional
          \vpostext{6.3cm}{\sffamily\setfontsize{28\bp@}\ziju{-0.09}\swjtu@thesisname}%
          \vpostext{9cm}{\setfontsize{26\bp@}\swjtu@professionaltype}%
          \vpostext{16.3cm}{\sffamily\bfseries\setfontsize{30\bp@}\swjtu@title}%
        \else
          \vpostext{6.3cm}{\sffamily\setfontsize{28\bp@}\swjtu@thesisname}%
          \vpostext{9.0cm}{\sffamily\bfseries\setfontsize{30\bp@}\swjtu@title}%
        \fi
        \tikz[remember picture,overlay]%
            \node [yshift=-20cm] at (current page.north)%
            [below,align=flush center] {%
                \setfontsize{16\bp@}%
                \begin{tabular}{@{}l@{\hspace{\ccwd}}l@{}}%
                    \textsf{年\hspace{4em}级}    & \swjtu@grade \\%
                    \textsf{姓\hspace{4em}名} & \swjtu@author \\%
                    \textsf{专\hspace{4em}业} & \swjtu@major \\%
                    \textsf{指\hspace{0.6em}导\hspace{0.6em}教\hspace{0.6em}师} & \swjtu@supervisor\quad\swjtu@cosupervisor \\%
                \end{tabular}};%
          \vpostext{26cm}{\setfontsize{16\bp@}[30\bp@]\swjtu@date}%
    \end{titlepage}}
\newcommand\make@entitle{%
    \begin{titlepage}%
        \tikz[remember picture,overlay]%
            \node [yshift=-2cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\setfontsize{14\bp@}\swjtu@enclassifiedindex}};%
        \tikz[remember picture,overlay]%
            \node [yshift=-3cm] at (current page.north) [below,align=flush center]%
                {\parbox{\textwidth}{\raggedright\fangsong\setfontsize{14\bp@}\swjtu@enUDC}};%
        \vpostext{4.9cm}{\sffamily\setfontsize{26\bp@}[30\bp@]\swjtu@enthesisname}%
        \if@swjtu@professional
          \vpostext{6.2cm}{\setfontsize{16\bp@}\swjtu@enprofessionaltype}%
          \vpostext{15cm}{\sffamily\bfseries\setfontsize{26\bp@}[30\bp@]\swjtu@entitle}%
        \else
          \vpostext{8.0cm}{\sffamily\bfseries\setfontsize{26\bp@}[30\bp@]\swjtu@entitle}%
        \fi
        \tikz[remember picture,overlay]%
            \node [yshift=-20.2cm] at (current page.north)%
            [below,align=flush center] {%
                \setfontsize{16\bp@}[30\bp@]%
                \begin{tabular}{@{}l@{}}%
                    Grade:         \swjtu@engrade \\%
                    Author:        \swjtu@enauthor \\%
                    Speciality:    \swjtu@enmajor \\%
                    \swjtu@supervisorline \\%
                \end{tabular}};%
             \vpostext{26cm}{\setfontsize{16\bp@}[30\bp@]\swjtu@endate}%
    \end{titlepage}}
\newcommand{\swjtu@declaretext} {
本人声明所呈交的学位论文，是本人在导师指导下进行研究工作所取得的成果。
除已特别加以标注和致谢的地方外，论文中不包含任何他人已经发表或撰写过
的研究成果。与我一同工作的同志对本研究所做的贡献均已在论文中作了明确的说明。
}
\newcommand{\swjtu@authorization}{
作为申请学位的条件之一，学位论文著作权拥有者授权西南交通大学拥有
学位论文的部分使用权，即：学校有权按有关规定向国家有关部门或机构送交
论文的复印件和电子版，允许论文被查阅和借阅，可以将学位论文编入《中国
学位论文全文数据库》等有关数据库进行检索，可以采用影印、缩印或扫描等
复制手段保存、汇编学位论文。本人提交的电子文档的内容和纸质论文的内容
相一致。

保密的学位论文在解密后也遵守此规定。
}
\newcommand\make@statement{
    \thispagestyle{empty}
    \setfontsize{12\bp@}[20\bp@]
    \vspace*{-0.15cm}
    \begin{center}
      \setfontsize{16\bp@}\textbf{西南交通大学学位论文原创性声明}
    \end{center}
    \vskip 0.3cm

    \swjtu@declaretext\par

    \vskip 0.7cm
    \begin{tabular}{p{7cm}p{7cm}}
      作者签名：\swjtu@underline[7.4em]{} & 签字日期：\swjtu@underline[7.4em]{}
    \end{tabular}
    \vskip 2.6cm

    \begin{center}
      \setfontsize{16\bp@}\textbf{西南交通大学学位论文授权使用声明}
    \end{center}
    \vskip 0.3cm

    \swjtu@authorization\par
    \vskip 0.5cm
    $\square$公开 \hspace{0.4cm} $\square$保密（\swjtu@underline[2em]{}年）

    \vskip 0.5cm

    {\renewcommand{\arraystretch}{2.0}
    \begin{tabular}{p{7cm}p{7cm}}
      作者签名：\swjtu@underline[7.4em]{} & 导师签名：\swjtu@underline[7.4em]{} \\
      签字日期：\swjtu@underline[7.4em]{} & 签字日期：\swjtu@underline[7.4em]{} \\
    \end{tabular}}
}
\newenvironment{abstract}{%
    \if@swjtu@bachelor
        \chapter{中文内容摘要}%
    \else
        \swjtu@chapter{摘要}%
    \fi
  }{}
\newenvironment{enabstract}{%
    \if@swjtu@bachelor
        \chapter[英文内容摘要]{Abstract}
    \else
        \swjtu@chapter[Abstract]{ABSTRACT}
    \fi}{}
\newcommand\keywords[1]{%
  \par\phantom{empty line}\par\noindent\hangindent=4\ccwd\relax%
  \textbf{关键词}：#1}
\newcommand\enkeywords[1]{%
  \par\phantom{empty}\par\noindent\hangindent=5.3em\relax%
  \textbf{Key Words}: #1}
\renewcommand\tableofcontents{%
    \cleardoublepage%
    \if@swjtu@bachelor\pagenumbering{arabic}\fi
    \swjtu@chapter{\contentsname}%
    \@starttoc{toc}}
\RequirePackage{titletoc}
\newcommand\swjtu@leaders{\titlerule*[0.5pc]{$\cdot$}}
\if@swjtu@bachelor
    \titlecontents{chapter}
        [\z@]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\contentspage}
    \titlecontents{section}
        [\ccwd]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\contentspage}
    \titlecontents{subsection}
        [2\ccwd]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel、}}
        {}{\swjtu@leaders\contentspage}
\else
    \titlecontents{chapter}
        [\z@]
        {\addvspace{6\bp@}\setfontsize{14\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\unskip\hskip\ccwd\relax}}
        {}{\swjtu@leaders\setfontsize{12\bp@}[20\bp@]\contentspage}
    \titlecontents{section}
        [\ccwd]
        {\setfontsize{12\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\setfontsize{12\bp@}[20\bp@]\contentspage}
    \titlecontents{subsection}
        [2\ccwd]
        {\setfontsize{10.5\bp@}[20\bp@]}
        {\contentspush{\thecontentslabel\hskip\ccwd\relax}}
        {}{\swjtu@leaders\setfontsize{12\bp@}[20\bp@]\contentspage}
\fi
\titlecontents{figure}
    [\ccwd]
    {\addvspace{6\bp@}\setfontsize{12\bp@}}
    {\thecontentslabel\hspace*{0.5em}}
    {}{\swjtu@leaders\contentspage}
\titlecontents{table}
    [\ccwd]
    {\addvspace{6\bp@}\setfontsize{12\bp@}}
    {\thecontentslabel\hspace*{0.5em}}
    {}{\swjtu@leaders\contentspage}
    % 为了让图目录另页起，重新定义 \cs{listoffigures}
\renewcommand\listoffigures{%
    \if@swjtu@bachelor\clearpage\else\cleardoublepage\fi
    \swjtu@chapter{\listfigurename}%
    \@starttoc{lof}}
    % 表目录同样
\renewcommand\listoftables{%
    \if@swjtu@bachelor\clearpage\else\cleardoublepage\fi
    \swjtu@chapter{\listtablename}%
    \@starttoc{lot}}
\if@swjtu@bachelor
    \g@addto@macro\frontmatter{\@swjtu@addtocspacefalse}%
    \g@addto@macro\mainmatter{\@swjtu@addtocspacetrue}%
    \g@addto@macro\backmatter{\@swjtu@addtocspacefalse}%
    \g@addto@macro\appendix{\@swjtu@addtocspacefalse}%
\fi
\newenvironment{notation}{%
    \if@swjtu@bachelor\clearpage\else\cleardoublepage\fi
    \thispagestyle{swjtu@notation}
    \ctexset{chapter/format = \centering\rmfamily\setfontsize{12\bp@}}
    \swjtu@chapter{\swjtu@notationname}
    \setfontsize{10.5\bp@}[16\bp@]
    \setlength{\itemsep}{\z@}}{}
\newdimen\bp@ \bp@=1bp
\if@swjtu@bachelor
  \renewcommand\normalsize{%
     \@setfontsize\normalsize{12\bp@}{22\bp@}%
     \abovedisplayskip 12\bp@ \@plus3\bp@ \@minus7\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
     \belowdisplayskip \abovedisplayskip
     \let\@listi\@listI}
  \normalsize
  \renewcommand\small{%
     \@setfontsize\small{10.5\bp@}{19.25\bp@}%
     \abovedisplayskip 10.5\bp@ \@plus3\bp@ \@minus6\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 9\bp@ \@plus3\bp@ \@minus5\bp@
                 \parsep 4.5\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\footnotesize{%
     \@setfontsize\footnotesize{9\bp@}{16.5\bp@}
     \abovedisplayskip 9\bp@ \@plus2\bp@ \@minus5\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6\bp@ \@plus3\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 6\bp@ \@plus2\bp@ \@minus2\bp@
                 \parsep 3\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\scriptsize{\@setfontsize\scriptsize{7.5\bp@}{13.75\bp@}}
  \renewcommand\tiny{\@setfontsize\tiny{6.5\bp@}{11.92\bp@}}
  \renewcommand\large{\@setfontsize\large{15\bp@}{27.5\bp@}}
  \renewcommand\Large{\@setfontsize\Large{18\bp@}{33\bp@}}
  \renewcommand\LARGE{\@setfontsize\LARGE{22\bp@}{40.33\bp@}}
  \renewcommand\huge{\@setfontsize\huge{24\bp@}{44\bp@}}
  \renewcommand\Huge{\@setfontsize\Huge{26\bp@}{47.67\bp@}}
\else
  \renewcommand\normalsize{%
     \@setfontsize\normalsize{12\bp@}{20\bp@}%
     \abovedisplayskip 12\bp@ \@plus3\bp@ \@minus7\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
     \belowdisplayskip \abovedisplayskip
     \let\@listi\@listI}
  \normalsize
  \renewcommand\small{%
     \@setfontsize\small{10.5\bp@}{17.5\bp@}%
     \abovedisplayskip 10.5\bp@ \@plus3\bp@ \@minus6\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6.5\bp@ \@plus3.5\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 9\bp@ \@plus3\bp@ \@minus5\bp@
                 \parsep 4.5\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\footnotesize{%
     \@setfontsize\footnotesize{9\bp@}{15\bp@}
     \abovedisplayskip 9\bp@ \@plus2\bp@ \@minus5\bp@
     \abovedisplayshortskip \z@ \@plus3\bp@
     \belowdisplayshortskip 6\bp@ \@plus3\bp@ \@minus3\bp@
     \def\@listi{\leftmargin\leftmargini
                 \topsep 6\bp@ \@plus2\bp@ \@minus2\bp@
                 \parsep 3\bp@ \@plus2\bp@ \@minus\bp@
                 \itemsep \parsep}%
     \belowdisplayskip \abovedisplayskip
  }
  \renewcommand\scriptsize{\@setfontsize\scriptsize{7.5\bp@}{12.5\bp@}}
  \renewcommand\tiny{\@setfontsize\tiny{6.5\bp@}{10.83\bp@}}
  \renewcommand\large{\@setfontsize\large{15\bp@}{25\bp@}}
  \renewcommand\Large{\@setfontsize\Large{18\bp@}{30\bp@}}
  \renewcommand\LARGE{\@setfontsize\LARGE{22\bp@}{36.67\bp@}}
  \renewcommand\huge{\@setfontsize\huge{24\bp@}{40\bp@}}
  \renewcommand\Huge{\@setfontsize\Huge{26\bp@}{43.33\bp@}}
\fi
\setlength{\parindent}{2\ccwd}
\setlength{\parskip}{\z@}
\RequirePackage{upgreek}
\renewcommand\pi{\uppi}
\RequirePackage{amssymb}
\renewcommand\le{\leqslant}
\renewcommand\leq{\leqslant}
\renewcommand\ge{\geqslant}
\renewcommand\geq{\geqslant}
\DeclareMathSizes{10.5bp}{10.5bp}{7.35bp}{5.25bp}
\renewcommand{\topfraction}{.85}
\renewcommand{\bottomfraction}{.65}
\renewcommand\textfraction{.15}
\renewcommand{\floatpagefraction}{.6}
\RequirePackage{caption}
\RequirePackage{calc}
\DeclareCaptionLabelSeparator{zhspace}{\hspace{\ccwd}}
\captionsetup{
    format = hang,
    font = small,
    labelsep = zhspace,
}
\if@swjtu@bachelor\else
    \captionsetup{font+=bf}
\fi
\captionsetup[figure]{
    position = bottom,
    aboveskip = 6bp,
    belowskip = {12bp-\intextsep},
}
\captionsetup[table]{
    position = top,
    aboveskip = 6bp,
    belowskip = 6bp,
}
\newcommand\note[1]{%
    \captionsetup{position = bottom, font = small}
    \caption*{\hangindent=2\ccwd\relax\swjtu@notesname\rmfamily#1}}
\renewcommand{\thefootnote}{\swjtu@textcircled{footnote}}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.25\textwidth
  \kern2.6\p@}
\renewcommand\@makefntext[1]{%
  \parindent 2\ccwd%
  \noindent
  \hb@xt@2\ccwd{\hss\@makefnmark}#1}
\if@swjtu@numerical
  \PassOptionsToPackage{sort&compress}{natbib}
\fi
\RequirePackage{natbib}
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\def\tmp@numerical{numerical}
\def\tmp@authoryear{authoryear}
\newcommand\swjtubibstyle[1]{%
  \def\tmp@gbt{#1}%
  \ifx\tmp@gbt\tmp@numerical%
    \bibliographystyle{swjtuthesis-numeric}%
  \else%
    \ifx\tmp@gbt\tmp@authoryear%
      \bibliographystyle{swjtuthesis-author-year}%
    \else%
      \PackageError{swjtuthesis}{Unknown argument #1.}
      {It should be `numerical' or `authoryear'.}
    \fi%
  \fi%
}
\if@swjtu@bachelor
  \if@swjtu@super
    \citestyle{super}
  \else
    \citestyle{numbers}
  \fi
  \bibliographystyle{swjtuthesis-bachelor}%
\else
  \if@swjtu@numerical
    \if@swjtu@super
      \citestyle{super}
    \else
      \citestyle{numbers}
    \fi
    \bibliographystyle{swjtuthesis-numeric}%
  \else
    \citestyle{authoryear}
    \bibliographystyle{swjtuthesis-author-year}%
  \fi
\fi
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
\if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\renewcommand\NAT@citenum%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\renewcommand\bibfont{\setfontsize{10.5bp}[20bp]}
\setlength{\bibsep}{\z@}
\setlength{\bibhang}{2\ccwd}
\renewcommand\@biblabel[1]{[#1]\hfill}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j%
  \do\k\do\l\do\m\do\n\do\o\do\p\do\q\do\r\do\s\do\t%
  \do\u\do\v\do\w\do\x\do\y\do\z%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J%
  \do\K\do\L\do\M\do\N\do\O\do\P\do\Q\do\R\do\S\do\T%
  \do\U\do\V\do\W\do\X\do\Y\do\Z%
  \do\1\do\2\do\3\do\4\do\5\do\6\do\7\do\8\do\9\do\0%
}
\renewcommand\bibsection{%
    \@mainmatterfalse
    \chapter{\bibname}%
    \@mainmattertrue
}
\newenvironment{acknowledgements}{%
  \if@swjtu@bachelor
    \swjtu@chapter{\swjtu@acknowledgementsname}%
  \else
    \chapter{\swjtu@acknowledgementsname}%
  \fi
}{}
\newenvironment{publications}{\chapter{\swjtu@publicationsname}}{}
