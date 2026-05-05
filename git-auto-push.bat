@echo off
chcp 65001 > nul  :: 解决中文乱码
setlocal enabledelayedexpansion

:: ===================== 【文件夹路径】=====================
cd /d "D:\notes"  :: 改成你的路径，比如你的MarkdownNote.md所在文件夹
:: =====================================================================

:: 1. 用wmic获取固定格式的时间
for /f "skip=1 tokens=1-6 delims=.+- " %%a in ('wmic os get localdatetime') do (
    if "%%a" NEQ "" (
        set "datetime=%%a"
        set "datetime=!datetime:~0,12!"  :: 截取前12位：年4+月2+日2+时2+分2
    )
)

:: 2. 执行 Git 操作
echo.
echo ===================== Implement Git Commit =====================
echo Commit Messages: updated!datetime!
echo --------------------------------------------------------

git add .
git commit -m "updated!datetime!"
git push

echo.
echo ===================== Finished =====================
pause