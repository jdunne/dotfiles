@echo off

if "%HOME%"=="" goto :error_no_home

rem Installs symlinks to %HOME%

mklink /h "%HOME%\_vimrc" _vimrc
mklink /h "%HOME%\_gvimrc" _gvimrc
mklink /j "%HOME%\vimfiles" _vim
goto :end

:error_no_home
echo Please set your HOME env var to where you want your dotfiles installed.
goto :end

:end
