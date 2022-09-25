@echo off
if not exist ./Dependencies (
	mkdir Dependencies
)

pushd Dependencies

if not exist ./vcpkg (
	git clone https://github.com/Microsoft/vcpkg.git
)

pushd vcpkg
call bootstrap-vcpkg.bat -disableMetrics
popd
popd

pushd Scripts
echo Installing dependencies
call InstallDependencies.bat

echo Generating Solution
call GenerateSolution.bat

echo Building Configurations
call Build.bat

popd

echo FINSHED!
