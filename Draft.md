# 公式

$$
\int_a^bf(x)\mathrm{d}x
$$

$$
\vec{\mathstrut a} \times \vec{\mathstrut b}
$$

$$
A = \sum_{i=1}^{m}\sum_{j=1}^{n}a_{ij}E_{ij}
$$

$$
v_n = \dfrac{\left |u_n \right | + u_n}{2}
$$

\[
\sum_{i=1}^n a_i
\]

极限$$\lim\limits_{n \to \infty} \dfrac{1}{x} = 0$$     $\alpha = 0$ 
\[
\int_{0}^{2}{\dfrac{x}{\sqrt{1+x^{2}}}}\mathrm{d}x
\]

\[
\mathrm{A} = 
\begin{bmatrix}
	1 & 2 & 3\\
	4 & 5 & 6\\
	7 & 8 & 9
\end{bmatrix}
\]

\[
\int_{a}^{b}\!f(\,x\,)\,\mathrm{d}x\,=\,G(\,b\,)\;-\;G(\,a\,)
\]

\[
\int_{a}^{b}\!f(\,x\,)\,\mathrm{d}x\,=\,\int_{a}^{\beta}\!f[\,\varphi\left(\,t\,\right)]\varphi^{\,\prime}\!\left(\,t\,\right)\,\mathrm{d}t\;
\]

\[
\int_{0}^{\pi}{\frac{x\sin\,\,x}{1\,\,+\,\cos^{2}x}}\mathrm{d}x
\]





\[
\begin{pmatrix}
	\dfrac{1}{3} & -\dfrac{1}{4} & \dfrac{1}{5} \\
    \dfrac{11}{13} & -\dfrac{11}{14} & \dfrac{11}{15} \\
    \dfrac{1}{3} & \dfrac{1}{4} & -\dfrac{1}{5}
\end{pmatrix}
\]

\[
\operatorname*{lim}_{n\to\infty}\left({\frac{1}{n+1}}+{\frac{1}{n+2}}+\cdots+{\frac{1}{2n}}\right)=\ln\;2
\]

\[
\int_{a}^{1}x\operatorname{arctan}\,\,x\,\,\mathrm{d}x
\]

\[
\begin{cases}
	x+y+z=0\\
	x-2y-9z=12\\
	3x-7y+2z=21
\end{cases}
\]

$$S=\int_{x}\left\{\frac12\sum_{a}\partial^{\mu}\chi_{a}\partial_{\mu}\chi_{a}+V(\rho)\right\}$$
\[
A=\left(\begin{array}{cccc}
f\left(\alpha_1, \alpha_1\right) & f\left(\alpha_1, \alpha_2\right) & \cdots & f\left(\alpha_1, \alpha_n\right) \\
f\left(\alpha_2, \alpha_1\right) & f\left(\alpha_2, \alpha_2\right) & \cdots & f\left(\alpha_2, \alpha_n\right) \\
\vdots & \vdots & & \vdots \\
f\left(\alpha_n, \alpha_1\right) & f\left(\alpha_n, \alpha_2\right) & \cdots & f\left(\alpha_n, \alpha_n\right)
\end{array}\right)
\]



$$
\int _ { 0 } ^ { 2 } \frac { x } { \sqrt { 1 + x ^ { 2 } } } \mathrm { d } x
$$

> [!NOTE]
>
> This is a note.

|    **特性**    |    **子式 (Minor)**    | **主子式 (Principal Minor)** | **顺序主子式 (Leading Principal Minor)** |
| :------------: | :--------------------: | :--------------------------: | :--------------------------------------: |
| **行号与列号** | 可以不同 ($I \neq J$)  |      必须相同 ($I = J$)      |          必须是连续的前 $k$ 个           |
|   **对角线**   | 不一定包含原矩阵对角线 |   元素必在原矩阵主对角线上   |       必须包含左上角元素 $a_{11}$        |
|  **典型应用**  |  计算矩阵的秩、余子式  |  判断矩阵的正定性/半正定性   |        判断正定性 (Sylvester判据)        |





全体系数都是整数的矩阵称为整系数矩阵。
设$A$是整系数方阵且可逆，证明：$A$的逆矩阵也是整系数矩阵当且仅当$\displaystyle detA=土1$.

证明：

记$A^*$为$A$的伴随矩阵，其第$i$行$j$列的元素为$A$第$j$行$i$列的代数余子式.

由行列式的定义，代数余子式是$A$中元素的多项式，也就是可以通过$A$中元素进行加法、减法和乘法运算得到.

而$A$的元素均为整数，整数进行加减乘后还是整数,因此$A^{*}$为整系数矩阵.又因$\displaystyle A^{-1}=\frac{1}{det(A)}A^{*}$

故$A^{-1}$为整系数矩阵当且仅当$\displaystyle det(A)=\pm 1$ 





