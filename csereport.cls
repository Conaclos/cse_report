\NeedsTeXFormat{LaTeX2e}

% Author: Victorien Elvinger
\ProvidesClass{csereport}[2014/08/01 Chair of Software Engineering, v0.1]

\LoadClass[a4paper,12pt,twoside]{report}

\RequirePackage{graphicx}
\RequirePackage[french,german,USenglish]{babel} % default is USenglish
\RequirePackage{times}

\RequirePackage{amsfonts,amssymb,amsmath,mathtools}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{titlesec}
\RequirePackage{lettrine}

\RequirePackage[a4paper]{geometry}
%\geometry{top=2cm, bottom=2cm,right=2cm,left=2.5cm}
\geometry{top=8em, bottom=8em}

\RequirePackage[colorlinks,linkcolor=black,citecolor=black,pagebackref]{hyperref}
\RequirePackage{acronym}

\RequirePackage{enumitem}
\RequirePackage{color}

\setlength{\parindent}{0em}
\parskip 1em

% Custom commands

\newcommand{\email}[1]{\href{mailto:#1}{\nolinkurl{#1}}}
\newcommand\english{\selectlanguage{USenglish}}
\newcommand\german{\selectlanguage{german}}
\newcommand\french{\selectlanguage{french}}

% Predefined acronyms

\acrodef{ETH}[ETH]{Eidgenössische Technische Hochschule}

\acrodef{EVE}[EVE]{Eiffel Verification Environment}
\acrodef{ES}[ES]{Eiffel Studio}

% Template variables

\def\reportType{Master Thesis}
\def\reportTitle{Title}
\def\reportDate{\the\year}

\def\reportAuthor{Author full name}
\def\reportSupervisors{Supervisor full names}
\def\reportChairPseron{Prof. Dr. Bertrand Meyer}

\def\reportChair{Chair of Software Engineering}
\def\reportDepartment{Department of Computer Science}
\def\reportUniversity{\acs{ETH} Zurich}

\def\reportChairLogo{figures/logo/sechair-logo.png}
\def\reportDepartmentLogo{figures/logo/csdepartment-logo.png}
\def\reportUniversityLogo{figures/logo/eth-logo.png}

\def\reportChairWebsite{http://se.inf.ethz.ch/}
\def\reportDepartmentWebsite{http://www.inf.ethz.ch/}
\def\reportUniversityWebsite{https://www.ethz.ch/}

% Predefined colors

\definecolor{header}{RGB}{0,50,110}

% Heading

\makeatletter
\def\maketitle{%
	\pagenumbering{alph} % Avoid identifier page duplication for hyperref package
	\pagestyle{empty}
	
	\begin{center}
		\includegraphics[width=6.5cm]{\reportChairLogo}
		\hspace{8cm}

		\vfill
		\vfill

		{\Huge\color{header}\bf \reportTitle}
		
		\vspace{1.618em}

		{\Large\color{header}\bf \reportType}
		
		\vspace{0.8em}

		{\large\color{header}\bf \reportDate}

		\vfill
		
		\begin{description}[style=multiline,align=right,leftmargin=4cm,labelsep=\itemindent+1.618em]
			\item[By] \bf{\reportAuthor}
			\item[Supervised by] \bf{\reportSupervisors}
			\item[Chair] \bf{\reportChairPseron}
		\end{description}

		\vfill
		\vfill
		\vfill
		
		\includegraphics[width=5cm]{\reportUniversityLogo}
		\hspace{4cm}
		\includegraphics[width=5cm]{\reportDepartmentLogo}		
	\end{center}

	\cleardoublepage
	\pagenumbering{roman}
	\setcounter{page}{1}
	\pagestyle{plain}
}
\makeatother
