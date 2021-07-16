$current = pwd

cd ../../

New-Item -Type SymbolicLink ./libclipboard.dll -Value .\tool\libclipboard\target\release\libclipboard.dll

cd $current
