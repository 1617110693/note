# Python笔记



[toc]

---

## Python 原地修改 vs 返回新值

### 核心

1. **不可变类型**：所有操作**只返回新值**，**绝不修改原变量**

2. **可变类型**：分两种

   - 增 / 删 / 改 / 排序 / 清空 → **原地修改原变量**
   - 切片 / 复制 / 集合运算 → **返回新对象，不改动原变量**

   

3. **全局内置函数**：一律**返回新值**，不修改原数据

### 不可变类型

包含：`str`字符串、`tuple`元组、`int/float`数值、`bool`布尔

特性：

本身**不可被原地修改**，所有方法、运算都只会生成**新值**，原变量保持不变。

示例：

```python
# 字符串
s = "python"
s.upper()   # 返回新字符串 "PYTHON"，原s不变
print(s)    # 仍输出 python

# 元组
t = (1,2,3)
t + (4,)    # 返回新元组，原t不变
```

### 可变类型分类

1. 原地修改（改原变量，返回 None）

直接在自身上增删改，**无有效返回值**

|   类型    |                       原地修改常用方法                       |
| :-------: | :----------------------------------------------------------: |
| 列表 list | `append`、`pop`、`remove`、`sort`、`extend`、`insert`、`reverse`、`clear` |
| 集合 set  |        `add`、`remove`、`update`、`clear`、`discard`         |
| 字典 dict |             `update`、`pop`、`clear`、`popitem`              |

示例：

```python
ls = [3,1,2]
ls.sort()   # 原地排序，直接改原列表
print(ls)   # [1,2,3]
```

2. 返回新值（不改原变量）

只生成新对象，原数据保持原样

|   类型    |              返回新值常用操作 / 方法              |
| :-------: | :-----------------------------------------------: |
| 列表 list |              切片 `ls[1:]`、`copy()`              |
| 集合 set  | `union`并集、`intersection`交集、`difference`差集 |
| 字典 dict |                     `copy()`                      |

### 高频易混淆对比

|      写法      |   类型   | 是否原地修改 |        作用        |
| :------------: | :------: | :----------: | :----------------: |
|  `ls.sort()`   | 列表方法 |  ✅ 改原列表  |    原地升序排序    |
|  `sorted(ls)`  | 内置函数 | ❌ 不改原列表 | 返回排序后的新列表 |
| `ls.reverse()` | 列表方法 |  ✅ 改原列表  |      原地反转      |
| `reversed(ls)` | 内置函数 | ❌ 不改原列表 |   返回反转迭代器   |

### 万能 3 秒判断流程

1. 先看**数据类型**：是字符串 / 元组 / 数字 → 直接判定：**只返回新值**
2. 是列表 / 集合 / 字典：看**动作**
   - 增、删、改、排序、清空 → **原地修改**
   - 切片、复制、求交集并集 → **返回新值**
3. 是 `sorted/reversed/len` 等全局函数 → **必返回新值**

### 极简记忆口诀

不可变，只出新；

可变分，改自身；

内置函数不动原，

排序反转要分清。

---



## Python在数模中的应用

### 主要用途

- **分析数据 (`Pandas`)**：
  - 能够快速读取 Excel 或 CSV 数据，进行清洗、缺失值处理和统计描述。
  - 例如：`df.describe()` 可以一键获取均值、标准差等。
- **数值求解 (`SciPy` / `SymPy`)**：
  - 如果你有复杂的非线性方程或微分方程（ODE），`scipy.optimize`（如 `fsolve`）和 `scipy.integrate`（如 `solve_ivp`）非常高效。
  - 如果你需要先进行符号推导（比如化简方程），`SymPy` 可以像 MATLAB 一样帮你推公式。
- **绘制曲线 (`Matplotlib` / `Seaborn`)**：
  - 能精确控制每一个绘图细节（线宽、颜色、坐标轴标签）。
  - **关键点**：你可以轻松将西文字体设为 `Times New Roman`，中文字体设为 `SimSun`（宋体），直接生成符合论文规范的高清插图。

------

### 实战代码模板

```python
import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import fsolve

# 1. 定义方程 (例如: x^2 - 5 = 0)
def my_equation(x):
    return x**2 - 5

# 2. 求数值解
initial_guess = 2
solution = fsolve(my_equation, initial_guess)
print(f"方程的数值解为: {solution[0]}")

# 3. 绘制趋势曲线
x_values = np.linspace(0, 5, 100)
y_values = my_equation(x_values)

plt.figure(figsize=(8, 5))
plt.plot(x_values, y_values, label='Trend Curve', color='blue', linewidth=2)
plt.axhline(0, color='black', linestyle='--') # 画出 y=0 的参考线
plt.scatter(solution, 0, color='red', label='Root') # 标记解的位置

# 字体设置 (务必匹配你的论文规范)
plt.rcParams['font.sans-serif'] = ['SimSun']    # 宋体处理中文
plt.rcParams['axes.unicode_minus'] = False      # 正常显示负号
plt.xlabel('变量 X (Units)')
plt.ylabel('函数值 f(X)')
plt.title('趋势曲线分析')
plt.legend()
plt.grid(True)
plt.show()
```

---

### scipy的使用

在数学建模竞赛中，`scipy` 是处理方程求解和趋势曲线分析的核心工具。针对“分析数据”、“求数值解”和“绘制曲线”的需求，需要掌握 `scipy.optimize`（求解方程）和 `scipy.interpolate`（插值/趋势平滑）这两个模块。

以下是竞赛中最常用的三个实战场景及代码示例：

#### 1. 非线性方程求解 (`scipy.optimize.fsolve`)

当你建立了一个复杂的模型方程（如食物链中的平衡方程），无法得出解析解时，可以使用 `fsolve` 求数值根。

**场景示例：** 求解 $x^2 + 2\sin(x) - 5 = 0$ 的根。

```python
from scipy.optimize import fsolve
import numpy as np

# 1. 定义方程，使其等于 0
def func(x):
    return x**2 + 2*np.sin(x) - 5

# 2. 给出初始猜测值（可以通过画图大致确定）
initial_guess = 2

# 3. 求解
root = fsolve(func, initial_guess)
print(f"方程的数值解为: {root[0]}")
```

#### 2. 趋势曲线拟合 (`scipy.optimize.curve_fit`)

当你有一组离散的观测数据，想要找到一个符合某种物理规律（如指数增长、S型增长）的方程时使用。

**场景示例：** 根据人口数据拟合 Logistic 模型 $y = \frac{L}{1 + e^{-k(x-x_0)}}$。

```python
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt

# 1. 定义想要拟合的模型函数
def logistic_model(x, L, k, x0):
    return L / (1 + np.exp(-k * (x - x0)))

# 2. 准备你的实验数据 (x_data, y_data)
x_data = np.array([0, 1, 2, 3, 4, 5])
y_data = np.array([1.2, 2.5, 4.8, 7.1, 8.5, 9.2])

# 3. 拟合，得到最优参数 popt
popt, pcov = curve_fit(logistic_model, x_data, y_data)

# 4. 绘制结果
x_fit = np.linspace(0, 6, 100)
y_fit = logistic_model(x_fit, *popt)

plt.scatter(x_data, y_data, label='原始数据')
plt.plot(x_fit, y_fit, color='red', label='拟合趋势线')
plt.legend()
plt.show()
```



#### 3. 数据平滑与插值 (`scipy.interpolate.interp1d`)

如果你有一组很稀疏的数据点，想画出平滑的趋势曲线，而不是生硬的折线。

**场景示例：** 将离散点用三次样条插值连成平滑曲线。

```python
from scipy.interpolate import interp1d

x = np.array([0, 1, 2, 3, 4, 5])
y = np.array([0, 0.8, 0.9, 0.1, -0.8, -1.0])

# 创建插值函数，'cubic' 表示三次样条插值（最平滑）
f_smooth = interp1d(x, y, kind='cubic')

x_new = np.linspace(0, 5, 100)
y_new = f_smooth(x_new)

plt.plot(x, y, 'o', label='原始离散点')
plt.plot(x_new, y_new, '-', label='平滑趋势线')
plt.legend()
plt.show()
```



---