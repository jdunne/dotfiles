@echo off

rem Installs symlinks to %HOME%

mklink "%HOME%\_vimrc" _vimrc
mklink "%HOME%\_gvimrc" _gvimrc
mklink /d "%HOME%\vimfiles" _vim
