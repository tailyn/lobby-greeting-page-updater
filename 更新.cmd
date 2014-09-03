SET GIT="c:\Program Files (x86)\Git\bin\git.exe"
SET REPO_FOLDER="%~dp0""lobby-greeting-page"

copy "%~1" %REPO_FOLDER%\img\welcome.png

cd %REPO_FOLDER%
dir

%GIT% commit -am "Update greeting image"
%GIT% pull --rebase
%GIT% push origin gh-pages

pause