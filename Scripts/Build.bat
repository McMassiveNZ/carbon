@echo off
if exist "../Build" (
	pushd "../Build"
	cmake --build .
	popd
) else (
	echo Build directory missing
)
