ECHO APPVEYOR_REPO_BRANCH: %APPVEYOR_REPO_BRANCH%
ECHO APPVEYOR_REPO_TAG: %APPVEYOR_REPO_TAG%
ECHO APPVEYOR_BUILD_NUMBER : %APPVEYOR_BUILD_NUMBER%
ECHO APPVEYOR_BUILD_VERSION : %APPVEYOR_BUILD_VERSION%

CALL build\tools\NuGet.exe restore src\Our.Umbraco.AzureLogger.sln
CALL "%programfiles(x86)%\MSBuild\14.0\Bin\MsBuild.exe" build\Our.Umbraco.MigrationsViewer.proj
