# LaTeX笔记

## 常用的package

```latex
\usepackage{ctexart}
\usepackage{setspace}
\usepackage{tabularray}
\usepackage{graphicx}
\usepackage{amsmath}
\UseTblrLibrary{amsmath}
```



## 一些琐碎的语法点

### 1.角标微调

有时候角标位置不尽人意，这时可以用`\uproot{}`和`\leftroot{}`对角标进行微调

示例：

`$\sqrt[3]{\dfrac{x+y}{x-y}}$`

$\sqrt[3]{\dfrac{x+y}{x-y}}$

式中角标3的位置就不尽人意

用`\uproot{}`和`\leftroot{}`微调

`$\sqrt[\uproot{18}\leftroot{-4} 3]{\dfrac{x+y}{x-y}}$`

$\sqrt[\uproot{18}\leftroot{-4} 3]{\dfrac{x+y}{x-y}}$ 

这样就比较漂亮了

