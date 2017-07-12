% ------------------- 基本信息 -------------------
% 定义最低要求 LaTeX 版本
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
% 定义 AirNote 文档类
\ProvidesClass{AirNote}[2017/05/21 0.0.1 A gentle document template by Foair.]
% 定义 AirNote 标志
\def\AirNote{\textsc{AirNote}}
% 定义 AirNote 版本
\def\version{0.0.1}

% ------------------- 用户选项 -------------------
% 编写宏包参数的宏包
\RequirePackage{kvoptions}
% 设置宏包参数的前缀和族
\SetupKeyvalOptions{
  family=air,
  prefix=air@}
% 数学符号简写（默认值：关闭）
\DeclareBoolOption{shortmath}
% 用于单色打印（默认值：关闭）
\DeclareBoolOption{print}
% 设置每个行内公式的显示效果（默认值：关闭）
\DeclareBoolOption{expand}
% 解析传递给 AirNote 的参数
\ProcessKeyvalOptions*
% 将其他的参数传递给 ctexbook 文档类
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
% 传递 no-math 参数给 fontspec 宏包，必须在 ctex 文档类之前调用
\PassOptionsToPackage{no-math}{fontspec}
% 以 ctexbook 为底层文档类
\LoadClass[fontset=adobe,punct=kaiming,openany,oneside]{ctexbook}

% ------------------- 宏包定义 -------------------
% 设置默认字符编码为 T1 编码
% \RequirePackage[T1]{fontenc}
% 极高提高 LaTeX 的数学能力
\RequirePackage{amsmath}
% 定义出现在目录里的内容
\RequirePackage[nottoc]{tocbibind}
% 定义页面的尺寸和部分栏目的高度
\RequirePackage{geometry}
% 使用多种颜色和预定义的颜色
\RequirePackage[dvipsnames]{xcolor}
% 提高插入图形的能力
\RequirePackage{graphics}
% 提升表格的能力
\RequirePackage{tabularx}
% 为 PDF 提供书签、XMP 信息以及链接
\RequirePackage{hyperref}
% 方便地改变标题样式
\RequirePackage[format=hang,textfont=it,font=small]{caption}
% 提供浮动体支持
\RequirePackage{float}
% 方便地定义页眉和页脚
\RequirePackage{fancyhdr}
% 定义三线表格需要
\RequirePackage{booktabs}
% 定义一些特殊符号
\RequirePackage{pifont}
% 最好的绘图宏包
\RequirePackage{tikz}
% 更改定义等的样式
\RequirePackage{ntheorem}
% 方便地绘制函数图形和三维函数图
% \RequirePackage{pgfplots}
% 更改默认的英文字体、无衬线字体以及打字机字体
\RequirePackage[defaultsups]{newtxtext}
% 更改默认的数学字体为 Times 风格
\RequirePackage[smallerops]{newtxmath}
% 提供数学粗体支持
\RequirePackage{bm}
% 将表格的第一行加粗
\RequirePackage{tabu}

% pgfplots 库
% \usepgfplotslibrary{colorbrewer}

\ifair@shortmath
  % 大写空心字母
  % 实数集
  \def\R{\mathbb{R}}
  % 自然数集
  \def\N{\mathbb{N}}
  % 整数集
  \def\Z{\mathbb{Z}}
  % 有理数集
  \def\bQ{\mathbb{Q}}
  % 复数集
  \def\bC{\mathbb{C}}

  % 小于等于
  \def\le{\leqslant}
  % 大于等于
  \def\ge{\geqslant}

  % 交集
  \def\nn{\cap}
  % 并集
  \def\uu{\cup}
  % 任意
  \def\aa{\forall}
  % 右空心箭头
  \def\Ra{$ \Rightarrow $}
  % 右箭头
  \def\ra{\rightarrow}

  % 大写手写体字母
  \def\sF{\mathcal{F}}
  \def\sH{\mathcal{H}}
  \def\sI{\mathcal{I}}
  \def\sJ{\mathcal{J}}
  \def\sL{\mathcal{L}}
  \def\sP{\mathcal{P}}
  \def\sR{\mathcal{R}}
  \def\sS{\mathcal{S}}

  % 小写希腊字母
  \def\a{\alpha}
  \def\b{\beta}
  \def\g{\gamma}
  \def\d{\delta}
  \def\e{\epsilon}
  \def\ve{\varepsilon}
  \def\z{\zeta}
  \def\h{\eta}
  \def\q{\theta}
  \def\th{\theta}
  \def\vq{\vartheta}
  \def\vth{\vartheta}
  \def\i{\iota}
  \def\vk{\varkappa}
  \def\ka{\kappa}
  \def\l{\lambda}
  \def\m{\mu}
  \def\n{\nu}
  \def\x{\xi}
  \def\vp{\varpi}
  \def\r{\rho}
  \def\vr{\varrho}
  \def\s{\sigma}
  \def\vs{\varsigma}
  \def\t{\tau}
  \def\u{\upsilon}
  \def\f{\phi}
  \def\j{\varphi}
  \def\vf{\varphi}
  \def\c{\chi}
  \def\y{\psi}
  \def\o{\omega}
  \def\w{\omega}

  % 大写希腊字母
  \def\G{\varGamma}
  \def\D{\varDelta}
  \def\Q{\varTheta}
  \def\Th{\varTheta}
  \def\L{\varLambda}
  \def\X{\varXi}
  \def\P{\varPi}
  \def\vS{\varSigma}
  \def\U{\varUpsilon}
  \def\F{\varPhi}
  \def\Y{\varPsi}
  \def\O{\varOmega}
  \def\W{\varOmega}

  % 常数
  % 圆周率
  \def\p{\piup}
  % 约化普朗克常数
  \def\hb{\hbar}
\fi

% 定义字体
\setCJKfamilyfont{fzys}{方正清刻本悦宋简体}[
  BoldFont = 方正清刻本悦宋简体,
  ItalicFont = 方正清刻本悦宋简体,
  BoldItalicFont = 方正清刻本悦宋简体]
\setCJKfamilyfont{fzqt}{方正启体简体}[
  BoldFont = 方正启体简体,
  ItalicFont = 方正启体简体,
  BoldItalicFont = 方正启体简体]
\setCJKfamilyfont{hwzs}{华文中宋}[
  BoldFont = 华文中宋,
  ItalicFont = 华文中宋,
  BoldItalicFont = 华文中宋]

\newfontfamily\AGaramond{AGaramondPro-Regular.otf}[
  BoldFont = AGaramondPro-Semibold.otf,
  ItalicFont = AGaramondPro-Italic.otf,
  BoldItalicFont = AGaramondPro-SemiboldItalic.otf]

% ------------------- 封面设计 -------------------
\newcommand{\Title}{数学笔记}

% 封面的螺旋线
\def\spiral#1{%
  \pgfmathparse{int(#1)}%
  \ifnum\pgfmathresult>0
    \draw [black!10] (0,0) rectangle ++(1,1);
    \begin{scope}[shift={(1,1)}, rotate=90, scale=1/1.6180339887]
      \spiral{#1-1}
    \end{scope}
    \draw [black!60] (0,0) arc (270:360:1);
  \fi
}

% 封面的卡牌，需要一个必须参数
\newcommand{\Card}[1]{
\begin{tikzpicture}
  \begin{scope}[scale=5,xshift=3,yshift=3]
    \spiral{12}
  \end{scope}
  \draw[ultra thick, rounded corners=5mm] (0,0) rectangle (6,9);
  \node at (3,4.5) { \fontsize{150pt}{0}{$#1$} };
\end{tikzpicture}
}

% 定义生成封面页的命令
\def\maketitle{
\begin{titlepage}
	\vspace*{\fill}
	\centering
	\Card{\piup}
	\vspace*{2em}

	\zihao{-1}\CJKfamily{fzqt} \Title
	\vspace*{2em}
	\vspace*{\fill}
\end{titlepage}
}

% ------------------- 文档部件 -------------------
% 环境 表格：自己定义的表格
\newenvironment{mytable}[3][htb]
{\begin{table}[#1] \centering \newcommand{\tempcaption}{#3} \begin{tabular}{#2} \toprule}
{\bottomrule \end{tabular}  \caption{\tempcaption} \end{table}}

% 环境 注意：用于显示需要引起注意的内容
\newenvironment{vuyi}{\par\noindent{\makebox[0pt][r]{\color{violet}\ding{253}\quad}\textsf{注意}}\ \fangsong}{\par}
% 环境 例题：用于例题的环境
\newenvironment{liti}{\medskip\noindent{\makebox[0pt][r]{\color{violet}\ding{112}\quad}\textsf{例}}}{\medskip}
% 命令 标记：用于标记一个段落
\newcommand{\fm}{\noindent{\ \mbox{\color{olive}\ding{118}}}\quad}
% 命令 定义：定义一个命令，带一个必须参数
\newcommand{\define}[1]{\noindent{\makebox[0pt][r]{\color{JungleGreen}\ding{105}\quad}\textsf{#1}}}

% 定义页面尺寸和页面范围
\geometry{a4paper,left=20mm,right=20mm,top=20mm,bottom=15mm,headheight=2.17cm,headsep=8mm,footskip=12mm}

% 页面风格
%% 标题风格
\ctexset{
	section/name={\AGaramond\S},
	chapter/format+={\AGaramond\CJKfamily{fzys}},
	section/format+={\AGaramond\CJKfamily{hwzs}},
	subsection/format+={\AGaramond\CJKfamily{hwzs}},
	subsubsection/format+={\AGaramond\CJKfamily{hwzs}},
	chapter/beforeskip={0pt}
}

% 页眉页脚
%\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{plain}{\fancyhf{}\renewcommand{\headrulewidth}{0pt}}
\fancyfoot{}
\lhead{\textnormal{\CTEXthesection\ \itshape\rightmark}}
\chead{--\ \thepage\ --}
\rhead{\fangsong\ \leftmark}
\renewcommand\headrulewidth{0.4pt}

% 定义参考文献样式
\bibliographystyle{plain}

\ifair@expand
% 每个数学公式使用显示效果
\everymath{\displaystyle}
% 《LaTeX 入门》第 85 页
\setlength\lineskiplimit{2.625bp}
\setlength\lineskip{2.625bp}
\fi

% 定义强调样式
\renewcommand{\emph}[1]{\textsf{#1}}
\newcommand{\emphA}[1]{{\sffamily #1}}
\newcommand{\emphB}[1]{{\itshape #1}}

% ------------------- 数学符号简写 -------------------
% 自然常数
\def\ee{\mathrm{e}}
% 虚数单位
\def\ii{\mathrm{i}}
% 数学修饰符号
% 矢量
\def\vecb#1{\bm{#1}}

% 数学函数
% 绝对值
\def\abs#1{\left\lvert #1 \right\rvert}

% 运算符
% 微分
\DeclareMathOperator{\dd}{d\!}
% 偏导数
\DeclareMathOperator{\pd}{\uppartial\!}
% 梯度
\DeclareMathOperator{\vd}{\deltaup\!}

% ------------------- 文档信息 -------------------
% PDF 文档源信息
\hypersetup{
	linktocpage,
	bookmarksopenlevel = 2,
	pdfstartview = FitH,
	linkcolor = Magenta,
	bookmarksopen = true,
	bookmarksopenlevel = 2,
	colorlinks = true,
	citecolor = Maroon,
	pdftitle = 数学笔记,
	pdfauthor = Foair,
	pdfsubject = 数学笔记,
	pdfkeywords = 数学; 笔记,
}
