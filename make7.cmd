@echo off

SET ARGS=--config RelWithDebInfo
IF NOT "%1"=="" (
  SET ARGS=%ARGS% --target %1
)
pushd build7
rem nmake.exe /f Makefile %1 %2 %3 %4 %5 %6 %7 %8 %9
echo %ARGS%
cmake --build . %ARGS%
popd
