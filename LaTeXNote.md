# LaTeX笔记

## 常用的package

```latex
\usepackage{ctex}
\usepackage{setspace}
\usepackage{tabularray}
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{mathtools}
\usepackage{geometry}
\usepackage{xcolor}
\UseTblrLibrary{amsmath}
\usepackage{xeCJKfntef}
```

说明：

```latex
\usepackage{ctex} 
%用于支持中文，但是如果\documentclass{ctexart}已经由ctex开头了就不必使用这个包了
```





## LaTeX基本结构

```latex
\documentclass[10pt,oneside,openany]{article}
							  %除了article,还可以设置为book,report等，以及对应的                                 %中文版本ctexart,ctexbook,...
                              %[ ]是可选的，可以设置字号
                              % 仅可选9pt,10pt,11pt,其中pt是指磅
                              % 还可以在 这里设置这篇文章为单页模式oneside（双页模式奇								% 数页整页内容将不居中，为了方便装订成书）；还能设置为                                 % openany,该模式下不强制那些章节页必须出现在奇数页
%一般在这里(documentclass下面)导入package
\usepackage{ctex}


\title{文章标题} %标题
\author{xxx\thanks{Email:xxx@gmail.com} \and xxx} %作者，r
\date{\today} %或手动输入日期

%以上区域称作导言区Preamble
%以下区域称作正文区Body
\begin{document}

\end{document}  %像这样由\begin{}   \end{}包裹住的区域称作环境
```





## 一些琐碎的语法点

### 角标微调

有时候角标位置不尽人意，这时可以用`\uproot{}`和`\leftroot{}`对角标进行微调

示例：

`$\sqrt[3]{\dfrac{x+y}{x-y}}$`

$\sqrt[3]{\dfrac{x+y}{x-y}}$

式中角标3的位置就不尽人意

用`\uproot{}`和`\leftroot{}`微调

`$\sqrt[\uproot{18}\leftroot{-4} 3]{\dfrac{x+y}{x-y}}$`

$\sqrt[\uproot{18}\leftroot{-4} 3]{\dfrac{x+y}{x-y}}$ 

这样就比较漂亮了

