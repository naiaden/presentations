%% This file implements the beamer template for the 2014 Radboud 
%% University corporate style. It also contains the template for
%% the Centre for Language and Speech Technology department.
%%
%% For comments, questions, and suggestions contact me at
%% l.onrust@let.ru.nl or visit the github repository on
%% https://github.com/naiaden/presentations/tree/master/ruhuisstijl
%% (this single-file version can be found in the distributed dir)
%%
%% You can distribute and edit the files as you wish, but I'd
%% love to hear of any changes. Also, if you let me know that
%% you are using the template, I can keep you up-to-date on
%% future changes.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{beamerruhuisstijl}[2014/10/07 Beamer template for Radboud University corporate style]

\LoadClass[xcolor=table,10pt,t]{beamer}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{pgfpages}
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{tikz}

\newif\ifbeamer@official
\beamer@officialfalse
\DeclareOptionBeamer{official}[false]{\csname beamer@official#1\endcsname}

\DeclareOptionBeamer{handout}{\gdef\beamer@currentmode{handout}}

\newcommand{\notes}{hide notes}
\DeclareOptionBeamer{notes}{\renewcommand{\notes}{#1}}

\newcommand{\dept}{none}
\DeclareOptionBeamer{department}{\renewcommand{\dept}{#1}}

\newcommand{\grouplogo}{none}
\DeclareOptionBeamer{grouplogo}{\renewcommand{\grouplogo}{#1}}

\newcommand{\spp}{1}
\DeclareOptionBeamer{slidesperpage}{\renewcommand{\spp}{#1}}

\newcommand{\tablecolours}{false}
\DeclareOptionBeamer{tablecolours}{\renewcommand{\tablecolours}{#1}}

\newcommand{\slidenumbers}{none}
\DeclareOptionBeamer{slidenumbers}{\renewcommand{\slidenumbers}{#1}}

\newcommand{\alwaysshowauthor}{false}
\DeclareOptionBeamer{alwaysshowauthor}{\renewcommand{\alwaysshowauthor}{#1}}

\newcommand{\alwaysshowdate}{false}
\DeclareOptionBeamer{alwaysshowdate}{\renewcommand{\alwaysshowdate}{#1}}

\newcommand{\tocatsectionstart}{false}
\DeclareOptionBeamer{tocatsectionstart}{\renewcommand{\tocatsectionstart}{#1}}

\newcommand{\tocatsectionstarttitle}{Overview}
\DeclareOptionBeamer{tocatsectionstarttitle}{\renewcommand{\tocatsectionstarttitle}{#1}}

\newcommand{\showinstitute}{false}
\DeclareOptionBeamer{showinstitute}{\renewcommand{\showinstitute}{#1}}

\newcommand{\showdate}{false}
\DeclareOptionBeamer{showdate}{\renewcommand{\showdate}{#1}}


\only<handout>{
    \renewcommand{\spp}{2}
}

\ProcessOptionsBeamer

\pgfpagesdeclarelayout{3 on 1}
{
  \edef\pgfpageoptionheight{\the\paperwidth} % landscaped by default
  \edef\pgfpageoptionwidth{\the\paperheight}
  \def\pgfpageoptionborder{0pt}
  \def\pgfpageoptionfirstshipout{1}
}
{
  \pgfpagesphysicalpageoptions
  {%
    logical pages=3,%
    physical height=\pgfpageoptionheight,%
    physical width=\pgfpageoptionwidth,%
    current logical shipout=\pgfpageoptionfirstshipout%
  }
  \ifdim\paperheight>\paperwidth\relax
    % put side-by-side
    \pgfpageslogicalpageoptions{1}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.33\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.1667\pgfphysicalwidth}{.5\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{2}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.33\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{3}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.33\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.8333\pgfphysicalwidth}{.5\pgfphysicalheight}%
    }%
  \else
    % stack on top of one another
    \pgfpageslogicalpageoptions{1}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=\pgfphysicalwidth,%
      resized height=.33\pgfphysicalheight,%
      center=\pgfpoint{.5\pgfphysicalwidth}{.8333\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{2}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=\pgfphysicalwidth,%
      resized height=.33\pgfphysicalheight,%
      center=\pgfpoint{.5\pgfphysicalwidth}{.5\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{3}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=\pgfphysicalwidth,%
      resized height=.33\pgfphysicalheight,%
      center=\pgfpoint{.5\pgfphysicalwidth}{.1667\pgfphysicalheight}%
    }%
  \fi
}

\pgfpagesdeclarelayout{6 on 1}
{
  \edef\pgfpageoptionheight{\the\paperwidth} % landscaped by default
  \edef\pgfpageoptionwidth{\the\paperheight}
  \def\pgfpageoptionborder{0pt}
  \def\pgfpageoptionfirstshipout{1}
}
{
  \pgfpagesphysicalpageoptions
  {%
    logical pages=6,%
    physical height=\pgfpageoptionheight,%
    physical width=\pgfpageoptionwidth,%
    current logical shipout=\pgfpageoptionfirstshipout%
  }
  \ifdim\paperheight>\paperwidth\relax
    % put side-by-side
    \pgfpageslogicalpageoptions{1}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.1667\pgfphysicalwidth}{.25\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{3}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.5\pgfphysicalwidth}{.25\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{5}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.8333\pgfphysicalwidth}{.25\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{2}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.1667\pgfphysicalwidth}{.75\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{4}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.5\pgfphysicalwidth}{.75\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{6}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.8333\pgfphysicalwidth}{.75\pgfphysicalheight}%
    }%
  \else
    % stack on top of one another
    \pgfpageslogicalpageoptions{1}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=0.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.25\pgfphysicalwidth}{.8333\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{3}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=0.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.25\pgfphysicalwidth}{.5\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{5}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=0.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.25\pgfphysicalwidth}{.1667\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{2}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=0.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.75\pgfphysicalwidth}{.8333\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{4}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=0.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.75\pgfphysicalwidth}{.5\pgfphysicalheight}%
    }%
    \pgfpageslogicalpageoptions{6}
    {%
      border shrink=\pgfpageoptionborder,%
      resized width=0.5\pgfphysicalwidth,%
      resized height=\pgfphysicalheight,%
      center=\pgfpoint{.75\pgfphysicalwidth}{.1667\pgfphysicalheight}%
    }%
  \fi
}

\ifthenelse{\equal{\spp}{2}}{\pgfpagesuselayout{2 on 1}[a4paper,border shrink=5mm]}{}
\ifthenelse{\equal{\spp}{3}}{\pgfpagesuselayout{3 on 1}[a4paper,border shrink=5mm]}{}
\ifthenelse{\equal{\spp}{4}}{\pgfpagesuselayout{4 on 1}[a4paper,border shrink=5mm,landscape]}{}
\ifthenelse{\equal{\spp}{6}}{\pgfpagesuselayout{6 on 1}[a4paper,border shrink=5mm]}{}

\setbeamertemplate{background}[grid][step=10]

\mode<presentation>

\setbeamerfont{page number in head/foot}{size=\footnotesize}
\setbeamercolor*{page number in head/foot}{fg=ruhuisstijlzwart}
\setbeamerfont{author in head/foot}{size=\footnotesize}
\setbeamercolor*{author in head/foot}{fg=ruhuisstijlzwart}

%%% Footnote stuff
% Cannot get it working to skip the title page when extra information
% is displayed in the footline. In the next version hopefully...
\ifthenelse{\equal{\dept}{none}}{%
    \setbeamertemplate{footline}{%
        \vspace{1.75cm}
    }
}{%
    \setbeamertemplate{footline}{%
        \ifthenelse{\equal{\slidenumbers}{slide} \OR \equal{\slidenumbers}{relative}}{%
        	\vspace{0.5cm}
            \hspace{1cm}%
            \begin{beamercolorbox}[wd=.08\paperwidth,ht=2.25ex,dp=1ex]{page number in head/foot}%
    			\usebeamerfont{page number in head/foot}\insertframenumber
                  \ifthenelse{\equal{\slidenumbers}{relative}}{%
    				/\inserttotalframenumber
				  }
                  {}
  			\end{beamercolorbox}
            \ifthenelse{\equal{\alwaysshowauthor}{true}}{%
        	\begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex]{author in head/foot}%
    			\usebeamerfont{author in head/foot}\insertshortauthor
  			\end{beamercolorbox}
        	}{}
            \ifthenelse{\equal{\alwaysshowdate}{true}}{%
        	\begin{beamercolorbox}[wd=.15\paperwidth,ht=2.25ex,dp=1ex]{author in head/foot}%
    			\usebeamerfont{author in head/foot}\insertshortdate
  			\end{beamercolorbox}
        	}{}
            \vspace{0.5cm}
        }{%
        	\vspace{1.25cm}
        }
        
    }
}




\setbeamertemplate{footnote}{%
    \makebox[1em][l]{\insertfootnotemark}\footnotesize\insertfootnotetext\par%
}

%%% Table of content stuff
\ifbeamer@official
    \ifthenelse{\equal{\dept}{none}}{%
        \setbeamertemplate{subsection in toc}{\leavevmode\leftskip=0.5em\parbox[t]{\textwidth-\leftskip-0.5em}{\inserttocsubsection}\par}
    }{%
        \relax
    }%
\else%
    \relax
\fi

%%% Description stuff
\ifbeamer@official
    \ifthenelse{\equal{\dept}{none}}{%
        \setbeamersize{description width=0.5em}
        \setbeamertemplate{description item}{\hspace*{0.5em}\insertdescriptionitem}
    }{%
        \defbeamertemplate{description item}{align left}{\hspace*{1em}\insertdescriptionitem\hfill}
        \setbeamertemplate{description item}[align left]
    }%
\else
    \defbeamertemplate{description item}{align left}{\hspace*{1em}\insertdescriptionitem\hfill}
    \setbeamertemplate{description item}[align left]
\fi

%%% Enumeration stuff
\ifbeamer@official
    \ifthenelse{\equal{\dept}{none}}{%
        \setlength\leftmargini{1em}
        \setlength\leftmarginii{0.5em}
        \setlength\leftmarginiii{0.5em}
        \setlength\labelsep{0.25em}
        \setlength\labelwidth{\leftmarginii}
        \setlength\labelwidth{-\labelsep}
    }{%
        \relax
    }%
\else%
    \relax
\fi%

%%% Itemisation stuff
\setbeamertemplate{itemize item}[circle]
\setbeamertemplate{itemize subitem}{--}
\setbeamertemplate{itemize subsubitem}[triangle]

\setbeamertemplate{itemize/enumerate body begin}
  {\normalsize\renewcommand\theenumii{\theenumi\alph{enumii}}}
\setbeamertemplate{itemize/enumerate subbody begin}{\normalsize}
\setbeamertemplate{itemize/enumerate subsubbody begin}{\normalsize}
\setbeamertemplate{itemize/enumerate subsubsubbody begin}{\normalsize}

\setbeamertemplate{enumerate item}{\insertenumlabel.}
\setbeamertemplate{enumerate subitem}{\alph{enumii}.}

\renewcommand{\itemize}[1][]{%
  \beamer@ifempty{#1}{}{\def\beamer@defaultospec{#1}}%
  \ifnum \@itemdepth >2\relax\@toodeep\else
    \advance\@itemdepth\@ne
    \beamer@computepref\@itemdepth% sets \beameritemnestingprefix
    \usebeamerfont{itemize/enumerate \beameritemnestingprefix body}%
    \usebeamercolor[fg]{itemize/enumerate \beameritemnestingprefix body}%
    \usebeamertemplate{itemize/enumerate \beameritemnestingprefix body begin}%
    \list
      {\usebeamertemplate{itemize \beameritemnestingprefix item}}
      {%
          \ifbeamer@official
            \setlength\itemsep{0pt}%
            \setlength\topsep{0pt}%
            \setlength\partopsep{0pt}%
            \setlength\parsep{0pt}%
            \setlength\parskip{0pt}%
            \ifthenelse{\equal{\dept}{none}}{%
              \setlength\leftmargini{1em}%
              \setlength\leftmarginii{0.5em}%
              \setlength\leftmarginiii{0.5em}%
              \setlength\labelsep{0.25em}%
              \setlength\labelwidth{0.6em}%
            }{%
              \setlength\labelsep{10pt}%
              \setlength\labelwidth{7pt}%
              \setlength\leftmargin{18pt}%
            }%
          \else%
            \relax%
          \fi%
          \def\makelabel##1{%
          {%
                \usebeamerfont*{itemize \beameritemnestingprefix item}%
                \usebeamercolor[fg]{itemize \beameritemnestingprefix item}##1\hfill%
          }%
        }%
      }
  \fi%
  \beamer@cramped%
  \raggedright%
  \beamer@firstlineitemizeunskip%
}

\ifbeamer@official
    % Removes the figure number from the caption. Use {caption}[numbered] otherwise
    \setbeamertemplate{caption}{\raggedright\insertcaption\par}

    % Redesigning the block environment to have a title in bold font
    % and minimal vertical spacing (only at the end)
    \setbeamertemplate{block begin}
    {%
       {\bfseries\insertblocktitle}\par%\vspace{-0.2cm}%
    }
    \setbeamertemplate{block end}{\vskip\smallskipamount}

    % The original style requires 2.5cm margin, whatever that means. Our frames
    % are not of the same size, so we have to "scale" it. 1cm seems to be reasonable
    \setbeamersize{text margin left=1cm}
\else%
    \setbeamertemplate{caption}[default]

    \setbeamertemplate{block begin}
    {%
       {\bfseries\insertblocktitle}\par%\vspace{-0.2cm}%
    }
    \setbeamertemplate{block end}{\vskip\smallskipamount}
\fi%

\setbeamertemplate{frametitle}
{
    \vspace*{1.5em}%
    \begin{minipage}[t][.5cm][t]{10cm}%
        \begin{beamercolorbox}{frametitle}%
            \raggedright\insertframetitle\par%
        \end{beamercolorbox}%
    \end{minipage}
}

\newenvironment{tussenpagina}[3]{%
    \begin{frame}
        \ifthenelse{\equal{\dept}{none}}{%
            \vspace*{-0.25cm}\hspace*{-1cm}\includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl2014-43-front.pdf}
            \vspace*{-5cm}
            \includegraphics[width=0.5\textwidth]{#3}\par%
            \vspace*{-8cm}
        }{%
            \vspace*{-0.25cm}\hspace*{-1cm}\includegraphics[width=12.8cm,height=8.34cm]{#3}
            \vspace*{-7.5cm}
        }
        \begin{minipage}[t][2.5cm][t]{10cm}%
            \begin{beamercolorbox}{title}%
                \usebeamerfont{title}{\Huge#1\par}%
                \vspace{0.25cm}%
                \usebeamerfont{subtitle}#2\par%
            \end{beamercolorbox}%
        \end{minipage}%
}{%
    \end{frame}
}%

\ifthenelse{\equal{\tocatsectionstart}{true}}{%
	\AtBeginSection{
		\begin{frame}[c,plain,noframenumbering]
        	\frametitle{\tocatsectionstarttitle}
        	\tableofcontents[currentsection,hideothersubsections]
    	\end{frame}
    }%
}{%
}

\setbeamertemplate{background}{
    \ifthenelse{\equal{\dept}{clst}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_clst_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{cls}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_cls_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{hlcs}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_hlcs_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{kaski}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_kaski_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{ptrs}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ptrs_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{imr}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_imr_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{is}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_is_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{ds}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ds_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{icis}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_icis_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{mbsd}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_mbsd_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{ster}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ster_2014-43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{datascience}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ds_2016_43-slide.pdf}
        \fi
    }{%
    \ifthenelse{\equal{\dept}{softwarescience}}{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ss_2016_43-slide.pdf}
        \fi
    }{%
        \ifnum\thepage>1\relax%
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl2014-43-slide.pdf}
        \fi
    }}}}}}}}}}}}}%
    \ifthenelse{\equal{\grouplogo}{lama}}{%
        %\vspace*{-0.8cm}
        \hspace*{-12.5cm}
        % [trim=-5cm 0 0 -1cm] left bottom right top
        % trim the graphic for positive values and add space for negative values
        \includegraphics[scale=0.4, trim=0cm -0.5cm 0cm 0cm]{logo/lama.pdf}
    }{%
    }% 
}

\defbeamertemplate*{title page}{ruhuisstijl}[1][]
{
    \ifthenelse{\equal{\dept}{clst}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_clst_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{cls}}{%
        	\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_cls_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{hlcs}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_hlcs_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{kaski}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_kaski_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{ptrs}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ptrs_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{imr}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_imr_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{is}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_is_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{datascience}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ds_2016_43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{softwarescience}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ss_2016_43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{icis}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_icis_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{mbsd}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_mbsd_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{ds}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ds_2014-43-front.pdf}
    }{%
    \ifthenelse{\equal{\dept}{ster}}{%
			\vspace*{-0.25cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl_ster_2014-43-front.pdf}
    }{%
			\vspace*{-0.23cm}\hspace*{-1.08cm}
            \includegraphics[width=1\paperwidth]{backgrounds/ruhuisstijl2014-43-front.pdf}
    }}}}}}}}}}}}}%
    \ifthenelse{\equal{\grouplogo}{lama}}{%
    	%\vspace*{-0.8cm}
        \hspace*{-12.5cm}
        % [trim=-5cm 0 0 -1cm] left bottom right top
        % trim the graphic for positive values and add space for negative values
        \includegraphics[scale=0.4, trim=0cm -0.5cm -50cm 0cm]{logo/lama.pdf}
    }{%
    }%    
    \vspace*{-8.5cm}
    \begin{minipage}[t][2.5cm][t]{10cm}%
        \begin{beamercolorbox}{title}%
            \usebeamerfont{title}{\Huge\inserttitle\par}%
            \vspace{0.25cm}%
            \usebeamerfont{subtitle}\insertsubtitle\par%
        \end{beamercolorbox}%
        \ifthenelse{\equal{\showinstitute}{true}}{
        \begin{beamercolorbox}{institute}%
            \usebeamerfont{institute}{\insertinstitute\par}%
        \end{beamercolorbox}%
        }{}
        \ifthenelse{\equal{\showdate}{true}}{
        \begin{beamercolorbox}{date}%
            \usebeamerfont{date}{\insertdate\par}%
        \end{beamercolorbox}%
        }{}
    \end{minipage}%
}

\setbeameroption{\notes}
\setbeamertemplate{note page}[plain]

\hypersetup{
    colorlinks=true,
    linkcolor=ruhuisstijlrood,
    urlcolor=ruhuisstijlrood,
}

\setbeamertemplate{navigation symbols}{}

\setbeamerfont{frametitle}{size=\large}
\setbeamerfont{frametitle}{series=\bfseries}
\setbeamerfont{blocktitle}{series=\bfseries}
\setbeamerfont{description item}{series=\bfseries}

\setbeamercolor{normal text}{fg=ruhuisstijlzwart}
\setbeamercolor{structure}{fg=ruhuisstijlzwart}
\setbeamercolor{example text}{fg=ruhuisstijlzwart}
\setbeamercolor{frametitle}{fg=ruhuisstijlrood}
\setbeamercolor{alerted text}{fg=ruhuisstijlrood}

\setbeamerfont{page number in head/foot}{size=\footnotesize}
\setbeamerfont{author in head/foot}{size=\footnotesize}

\ifthenelse{\equal{\dept}{none}}{%
    \setbeamercolor{title}{fg=ruhuisstijlzwart}
    \setbeamercolor{date}{fg=ruhuisstijlzwart}
    \setbeamercolor{institute}{fg=ruhuisstijlzwart}
    \setbeamercolor*{page number in head/foot}{fg=ruhuisstijlwit}
	\setbeamercolor*{author in head/foot}{fg=ruhuisstijlwit}
}{%
    \setbeamercolor{title}{fg=ruhuisstijlwit}
    \setbeamercolor{date}{fg=ruhuisstijlwit}
    \setbeamercolor{institute}{fg=ruhuisstijlwit}
    \setbeamercolor*{page number in head/foot}{fg=ruhuisstijlzwart}
	\setbeamercolor*{author in head/foot}{fg=ruhuisstijlzwart}
}

\mode<all>



% http://tex.stackexchange.com/questions/26360/how-to-color-the-font-of-a-single-row-in-a-table
\newcommand*{\@rowstyle}{}

\newcommand*{\rowstyle}[1]{% sets the style of the next row
  \gdef\@rowstyle{#1}%
  \@rowstyle\ignorespaces%
}

\newcolumntype{=}{% resets the row style
  >{\gdef\@rowstyle{}}%
}

\newcolumntype{+}{% adds the current row style to the next column
  >{\@rowstyle}%
}

\definecolor{ruhuisstijlrood}{rgb}{0.745,0.192,0.102}
\definecolor{ruhuisstijlzwart}{rgb}{0,0,0}
\definecolor{ruhuisstijlwit}{rgb}{0.98,0.98,0.98}

\newcommand{\rured}[1]{\textcolor{ruhuisstijlrood}{#1}}


\ifthenelse{\equal{\tablecolours}{false}}{%
%
}{%
    \rowcolors{1}{ruhuisstijlrood!12}{ruhuisstijlrood!25}
}

\endinput