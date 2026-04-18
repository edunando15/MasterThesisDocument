%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This class file defines the structure and design of the template. 
%
% Original header:
% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
% generated with the docstrip utility.
%
% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
% Further modified by www.latextemplates.com
% Further modified by Michael Stauffer
% Further modified by Maja Spahic
% Further modified by Eduardo Tiano (not so much)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\RequirePackage[utf8]{inputenc} % Allows the use of international characters 
%%(e.g. Umlauts)

\newcommand{\missingPackages}{packages} % Define folder with missing packages

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.

\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\newlength{\originalVOffset}
\newlength{\originalHOffset}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{newtxtext}
\usepackage{newtxmath}
\usepackage[dvipsnames]{xcolor} % https://en.wikibooks.org/wiki/LaTeX/Colors
\usepackage{multirow}
\usepackage{graphicx}
\RequirePackage{caption}
\captionsetup[subfigure]{labelformat=parens, labelsep=space, textfont=normalfont, labelfont=normalfont}
\usepackage{subcaption}
\usepackage{pdfpages}
\usepackage{pdflscape}
\usepackage{epstopdf}
\usepackage{array}
\usepackage{tabularx}
\usepackage{rotating}
\usepackage{listings}
\usepackage{blindtext}
\usepackage{multirow}
\usepackage{rotating}
\usepackage{longtable}
\usepackage{pgfplots}
\usepackage[acronym]{glossaries}
\usepackage{\missingPackages/lstpatch}
\usepackage{booktabs} %nicer tables
\usepackage{float}
\usepackage{tikz}
\usepackage{eurosym}
\usetikzlibrary{shapes.geometric, arrows}
\usepackage{epigraph} % quotations
\usepackage{comment}
\renewcommand{\arraystretch}{1.2} %nicer tables
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks=false,linkcolor={black},citecolor={black},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------
\RequirePackage{titlesec}
\titleformat{\chapter}[hang]
  {\normalfont\huge\bfseries}{\thechapter.}{1em}{}
\graphicspath{{03_Figures/}} % Specifies the directory where pictures are stored

% Use the APA (6th) reference package with biblatex
\usepackage[british]{babel} % Internationalisation (hyphenation rules), needed for APA citation
\usepackage{csquotes} % Context-sensitive inline and display quotations, recommended for APA citation

%\usepackage[style=apa,sortcites=true,sorting=nyt,backend=biber]{biblatex}
\usepackage[style=numeric,sorting=nyt,backend=biber]{biblatex}
\usepackage{enumitem}
\DeclareLanguageMapping{british}{british-apa}

%\addbibresource{Bibliography.bib}
    
\title{\thesisTitle} % Defines the thesis title - don't touch this

\setstretch{1.3} % Line spacing of 1.3

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}} % New command to make the lines in the title page

% Define the page headers using the FancyHdr package and set up for one-sided printing
\usepackage{fancyhdr}

% Check if layout is double or single side and adapt heading correspondingly
\if@twoside
    \fancyhead{} % clear all header fields
    \fancyhead[LE,RO]{\thepage}
    \fancyhead[RE,LO]{\nouppercase{\leftmark}}
    \fancyfoot{} % clear all footer fields
\else
    \fancyhead{} % clear all header fields
    \fancyfoot{} % clear all footer fields
\fi

 % The page style headers have been "empty" all this time, now use the "fancy" headers as defined before to bring them back
\pagestyle{fancy}

% Make header rule a bit thicker
\renewcommand{\headrulewidth}{0.5pt}

% Override standard chapter mark, do not change or delete this!
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

% Insert empty page if layout is two-sided
\newcommand\fillingPage{
    \if@twoside
        \cleardoublepage
    \fi
}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%----------------------------------------------------------------------------------------

\newcommand*{\supervisor}[1]{\def\supName{#1}}
\newcommand*{\supervisorTwo}[1]{\def\supTwoName{#1}}
\newcommand*{\cosupervisor}[1]{\def\supcoName{#1}}
\newcommand*{\thesisTitle}[1]{\def\thesisTitle{#1}}
\newcommand*{\degree}[1]{\def\degreeName{#1}}
\newcommand*{\degreeTwo}[1]{\def\degreeTwoName{#1}}
\newcommand*{\authors}[1]{\def\authorName{#1}}
\newcommand*{\addresses}[1]{\def\addressNames{#1}}
\newcommand*{\subject}[1]{\def\subjectName{#1}}
\newcommand*{\keywords}[1]{\def\keywordNames{#1}}
\newcommand*{\university}[1]{\def\fhnw{#1}}
\newcommand*{\universityUnicam}[1]{\def\unicam{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\FHNW{#1}}
\newcommand*{\faculty}[1]{\def\hsw{#1}}
\newcommand*{\facultyUnicam}[1]{\def\hswUnicam{#1}}
\newcommand*{\FACULTY}[1]{\def\HSW{#1}}
\newcommand*{\department}[1]{\def\iwi{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\IWI{#1}}

\newif\ifcosupervisor

% defined by myself
\def\matricola#1{\gdef\@thematricola{#1}}
\def\academicyear#1{\gdef\@theacademicyear{#1}}
\def\msc{Master of Science}
%-------------------------------------------------      
\university{{University of Applied Sciences and Arts Northwestern Switzerland}}
\universityUnicam{{University of Camerino}}
%-------------------------------------------------   
\UNIVERSITY{{UNIVERSITY OF APPLIED SCIENCES AND ARTS NORTHWESTERN SWITZERLAND}}
%-------------------------------------------------                
\faculty{{School of Business}}
\facultyUnicam{{School of  Science and Technologies}}
%-------------------------------------------------                
\FACULTY{{SCHOOL OF BUSINESS}}
%-------------------------------------------------               
\department{{Institute for Information Systems}}
%-------------------------------------------------                
\DEPARTMENT{{INSTITUTE FOR INFORMATION SYSTEMS}}            
%----------------------------------------------------------------------------------------    

%----------------------------------------------------------------------------------------
%	TITLE PAGE DESIGN - FOR DUAL DEGREE
% 	IF YOU NEED THIS ONE, PLEASE COMMENT THE DAFAULT TITEL PAGE AND
%	UN-COMMENT DUAL DEGREE TITLE PAGE
%----------------------------------------------------------------------------------------
\newenvironment{titlePage}
{
    \begin{titlepage}
    \begin{center}

    % FHNW School of Business Logo
    \begin{figure}
        {\begin{minipage}[c]{.45\linewidth}
            \centering
            {\includegraphics[width=\linewidth,keepaspectratio]{figures/logo/LogoUnicamPR.png}}
        \end{minipage}
        \hspace{.09\linewidth}
        \begin{minipage}[c]{.45\linewidth}
            \centering
            {\includegraphics[width=\linewidth,keepaspectratio]{figures/logo/fhnwLogo.png}}
        \end{minipage}
    \vspace{0.05cm}%
    \hrule%
    \vspace{0.50cm}%
    }
    {
        % Row 1: Universities
        \begin{minipage}[t]{.45\linewidth}
            \centering
            {\rmfamily \small \bfseries \unicam \par}
        \end{minipage}%
        \hspace{.1\linewidth}%
        \begin{minipage}[t]{.45\linewidth}
            \centering 
            {\rmfamily \small \bfseries \fhnw \par}
        \end{minipage}
        
        \vspace{0.4cm}%
        
        % Row 2: Schools
        \begin{minipage}[t]{.45\linewidth}
            \centering
            {\rmfamily \small \scshape \hswUnicam \par}
        \end{minipage}%
        \hspace{.1\linewidth}%
        \begin{minipage}[t]{.45\linewidth}
            \centering 
            {\rmfamily \small \scshape \hsw \par}
        \end{minipage}
        
        \vspace{0.4cm}%
        
        % Row 3: Degrees
        \begin{minipage}[t]{.45\linewidth}
            \centering
            {\rmfamily \small \msc{} in\\\degreeTwoName~(LM-18)\par}
        \end{minipage}%
        \hspace{.1\linewidth}%
        \begin{minipage}[t]{.45\linewidth}
            \centering 
            {\rmfamily \small \msc{} in\\\degreeName \par}
        \end{minipage}
        
        \vspace{0.05cm}%
    }

    \vspace{2cm}%
    \end{figure}
    {\huge \bfseries \thesisTitle}\\[2cm] % Thesis title
    
 
    \begin{minipage}[b][3.8em][t]{0.4\textwidth}
    \begin{flushleft} \large
    \emph{Candidate}\\
	%{\authorName} % Author name - remove the \href bracket to remove the link
    {\bfseries \authorName} % Author name - remove the \href bracket to 
    %remove the link
    \end{flushleft}
    %{\bfseries \small Student ID \@thematricola}%
    \emph{Student ID} \\
    {\bfseries \@thematricola}
    \end{minipage}
    \begin{minipage}[b][3.8em][t]{0.4\textwidth}
    \begin{flushright} \large
    \emph{FHNW Supervisor} \\
    {\bfseries \supName} \\
    \vspace{0.3cm}
    \emph{Unicam Supervisor} \\
    {\bfseries \supTwoName} \\
    \ifcosupervisor
        \vspace{0.3cm}
        \emph{Co-supervisor} \\
        {\bfseries \supcoName}
    \fi 
    \vspace{0.3cm}
    \end{flushright}
    \end{minipage}\\[4cm]
 
    \large \textit{A thesis presented to the \hswUnicam{} of the \unicam{} and 
\hsw{} of the \fhnw{} in partial fulfillment of the requirements for the Degree of \msc{} in \degreeTwoName{} }\\[1cm] % University requirement text


    %{\rmfamily \Large \bfseries \unicam \par}%
  %\vspace{0.15cm}%
  %{\rmfamily \Large \scshape \hswUnicam \par}%
  %\vspace{0.15cm}%
  %{\rmfamily \large \degreeTwoName~(LM-18) \par}%

  %{\rmfamily \Large \bfseries \fhnw \par}%
  %\vspace{0.15cm}%
  %{\rmfamily \Large \scshape \hsw \par}%
  %\vspace{0.15cm}%
  %{\rmfamily \large \degreeName \par}%
 
    %{\large \today}\\% Date
 
    \vfill
    \vspace*{\stretch{7}}%
  \hrule%
  \vspace{0.15cm}%
  {\large A.Y. \@theacademicyear}%
    \end{center}

    \end{titlepage}
    
    \fillingPage{}
}

%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\abstractPage{

    \btypeout{Abstract Page}
    
    \addtotoc{Abstract} % Add the "Abstract" page entry to the Contents
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \markboth{}{} % Add "Abstract" to fancy header
}

% defined by myself
\newcommand{\abstract}[1]{
\addtotoc{Abstract} % Add the "Abstract" page entry to the Contents
\addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
\markboth{Abstract}{} % Add "Abstract" to fancy header
\newpage
\noindent
\fbox{\parbox{.98\linewidth}{
\vspace{-5mm}
\section*{Abstract}
\par
#1
}}\\[1cm]}

%----------------------------------------------------------------------------------------
%----------------------------------------------------------------------------------------
\newcommand\abstractItaPage{

    \btypeout{Abstract Page}
    
    \addtotoc{Abstract (Italian version)} % Add the "Abstract" page entry to the Contents
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \markboth{}{} % Add "Abstract" to fancy header
}

% defined by myself
\newcommand{\abstractita}[1]{
\addtotoc{Abstract (Italian version)} % Add the "Abstract" page entry to the Contents
\addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
\markboth{Abstract (Italian version)}{} % Add "Abstract" to fancy header
\newpage
\noindent
\fbox{\parbox{.98\linewidth}{
\vspace{-5mm}
\section*{Abstract (Italian version)}
\par
#1
}}\\[1cm]}

%----------------------------------------------------------------------------------------
%	Statement PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\myStatementOfAuthenticity{
	
	\btypeout{Statement of Authenticity}
	
	\addtotoc{Statement of Authenticity} % Add the "Abstract" page entry to the 
	%Contents
	\addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for 
	%aesthetics
	
	\markboth{}{} % Add "Acknowledgements" to fancy header
}

%----------------------------------------------------------------------------------------
%	ACKNOWLEDGEMENTS PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\ackPage{

    \btypeout{Acknowledgements Page}
    
    \addtotoc{Acknowledgements} % Add the "Abstract" page entry to the Contents
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \markboth{}{} % Add "Acknowledgements" to fancy header
    \chapter*{Acknowledgements}
}
\newcommand\ackPageIT{

    \btypeout{Ringraziamenti Page}
    
    \addtotoc{Ringraziamenti} % Add the "Abstract" page entry to the Contents
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \markboth{}{} % Add "Ringraziamenti" to fancy header
    \chapter*{Ringraziamenti}
}
%----------------------------------------------------------------------------------------
%	TABLE OF CONTENTS DESIGN
%----------------------------------------------------------------------------------------
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

\renewcommand{\contentsname}{Table of Contents} % Change the title of ToC from Contents to Table of Contents

\renewcommand\tableofcontents{
    
    \btypeout{Table of Contents}
    
    \addtotoc{Table of Contents}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    % Add filling page in case acknowledgements page was more than a page
    \fillingPage{}
    
    \begin{spacing}{1}{
        \setlength{\parskip}{1pt}
            \if@twocolumn
                \@restonecoltrue\onecolumn
            \else
                \@restonecolfalse
            \fi
        \chapter*{\contentsname
            \@mkboth{
                \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
        \@starttoc{toc}
        \if@restonecol\twocolumn\fi
        \cleardoublepage
    }\end{spacing}
}

%----------------------------------------------------------------------------------------
%	BIBLIOGRAPHY PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listOfBibliography{
    \cleardoublepage
    \phantomsection
    \label{Bibliography}
    \btypeout{Bibliography}
    \addtocontents{toc}{\vspace{1em}}
    \printbibliography[heading=bibintoc]
}

%----------------------------------------------------------------------------------------
%	DECLARATION OF AUTHORSHIP PAGE DESIGN
%----------------------------------------------------------------------------------------
\newcommand\statementOfAuthenticity{

    \btypeout{Statement of Authenticity}
    
    \addtotoc{Statement of Authenticity}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \chapter*{Statement of Authenticity}
        
    I, \authorName, hereby confirm that this report was performed autonomously using only the sources, aids and assistance stated in the report, and that quotes are readily identifiable as such.
    
   \vspace*{2cm} 
 
    Signed: \includegraphics*[scale=0.05]{03_Figures/signature1.jpg}\\
    \rule[1em]{25em}{0.5pt} % This prints a line for the signature
 
    Date: \today\\
    \rule[1em]{25em}{0.5pt} % This prints a line to write the date
}

%----------------------------------------------------------------------------------------
%	GLOSSARY DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listOfGlossary{
    \btypeout{Glossary}
    
    \addtotoc{Glossary}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \printglossary
}

%----------------------------------------------------------------------------------------
%	ABBREVIATIONS DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listOfAbbreviation{
    \btypeout{Abbreviations}
    
    \addtotoc{Abbreviations}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
    
    \printglossary[type=\acronymtype, title=Abbreviations]
}

%----------------------------------------------------------------------------------------
%	LIST OF FIGURES DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listOfFigures{
    \btypeout{List of Figures}
    
    \addtotoc{List of Figures}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
        
    \begin{spacing}{1}{
        \setlength{\parskip}{1pt}
        \if@twocolumn
          \@restonecoltrue\onecolumn
        \else
          \@restonecolfalse
        \fi
        \chapter*{\listfigurename
          \@mkboth{\MakeUppercase\listfigurename}
                  {\MakeUppercase\listfigurename}}
        \@starttoc{lof}
        \if@restonecol\twocolumn\fi
        \cleardoublepage
    }\end{spacing}
}

%----------------------------------------------------------------------------------------
%	LIST OF LISTINGS DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listOfListings{
    \btypeout{Listings}
    
    \addtotoc{Listings}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
        
    \begin{spacing}{1}{
        \setlength{\parskip}{1pt}
        \if@twocolumn
          \@restonecoltrue\onecolumn
        \else
          \@restonecolfalse
        \fi
        \chapter*{\lstlistlistingname
          \@mkboth{\MakeUppercase\lstlistlistingname}
                  {\MakeUppercase\lstlistlistingname}}
        \@starttoc{lol}
        \if@restonecol\twocolumn\fi
        \cleardoublepage
    }\end{spacing}
}
%	LIST OF TABLES DESIGN
%----------------------------------------------------------------------------------------
\newcommand\listOfTables{
    \btypeout{List of Tables}
    
    \addtotoc{List of Tables}
    \addtocontents{toc}{\vspace{1em}} % Add a gap in the Contents, for aesthetics
        
    \begin{spacing}{1}{
        \setlength{\parskip}{1pt}
        \if@twocolumn
          \@restonecoltrue\onecolumn
        \else
          \@restonecolfalse
        \fi
        \chapter*{\listtablename
          \@mkboth{
              \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
        \@starttoc{lot}
        \if@restonecol\twocolumn\fi
        \cleardoublepage
    }\end{spacing}
}

\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput

\usepackage{subfig}