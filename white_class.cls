% Created by Alexander Baker, original repo here: https://github.com/AlexLBaker/LaTeX-Resume

\ProvidesClass{resume_cream}[2023/03/22 CV class]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

% Required packages
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\RequirePackage{xcolor}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{tikz}
\RequirePackage[margin=0.3in]{geometry}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage{fontawesome5}
\RequirePackage{adjustbox}
\RequirePackage{setspace}
\RequirePackage{pagecolor}

% Colors
\definecolor{white}{RGB}{255,255,255}
\definecolor{cream}{rgb}{1.0, 0.99, 0.97}
\definecolor{forestgreen}{RGB}{34, 139, 34}
\definecolor{linkedinblue}{RGB}{14, 118, 168}
\definecolor{wine}{RGB}{165, 42, 42}
\definecolor{burgundy}{rgb}{0.45, 0.18, 0.25}
\definecolor{lavender}{RGB}{104, 34, 139}

% Commands
\newcommand{\cvnumberphone}[1]{#1\\}
\newcommand{\cvlocation}[1]{#1\\}

\newcommand{\circularpic}[1]{%
  \begin{tikzpicture}
    \clip (0,0) circle (1.65cm);
    \node at (0,0) {\includegraphics[width=3.3cm]{#1}};
  \end{tikzpicture}%
}

% Document settings
\AtBeginDocument{
    \pagecolor{white}
    \setstretch{0.95}
    \linespread{0.95}
    \pagenumbering{gobble}
}

% Header
\newcommand{\header}[7]{
    \hspace{-18pt}
    \begin{minipage}[t]{0.6\textwidth}
        \vspace{-15pt}
        \textbf{\Huge\textcolor{burgundy}{#1}}\\
        \\
        \textbf{\large #2}
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.25\textwidth}
        \vspace{-15pt}
        \renewcommand{\arraystretch}{1}
        \hspace{-80pt}
        \begin{tabular}{l@{\hspace{4pt}}l}
        	    \fontsize{14pt}{10pt}\selectfont\textcolor{orange}{\faPhone} & \fontsize{12pt}{12pt}\selectfont\cvnumberphone{#4}    
            \fontsize{14pt}{10pt}\selectfont\textcolor{forestgreen}{\faEnvelope} & \fontsize{12pt}{12pt}\selectfont\href{mailto:#3}{#3}\\
            \fontsize{15pt}{10pt}\selectfont\textcolor{wine}{\faMapMarker} & \fontsize{12pt}{12pt}\selectfont\cvlocation{#7}
            \fontsize{16pt}{10pt}\selectfont\textcolor{linkedinblue}{\faLinkedin} & \fontsize{12pt}{12pt}\selectfont\href{#5}{#5}\\
            \fontsize{14pt}{10pt}\selectfont\textcolor{black}{\faGithub} & \fontsize{12pt}{12pt}\selectfont\href{#6}{#6}\\
        \end{tabular}
    \end{minipage}
    \vspace{3pt}
    \hrule
    \vspace{6pt}
}