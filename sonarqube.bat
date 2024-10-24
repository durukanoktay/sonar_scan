@ECHO OFF
SET SONAR_SCANNER_BAT_DIRECTORY=C:\sonar-scanner\bin
SET PROJECT_NAME=sonar_test
SET PROJECT_KEY=sonar_test
SET SOURCES=%WORKSPACE%
SET URL=http://192.168.1.113:9000/
SET SONARQUBE_TOKEN=sqp_7b8805bfc174cec6f9bedaddcec9c2aac4dd4c9b
SET BUILD_WRAPPER_OUTPUT_DIRECTORY=%WORKSPACE%\bw_output

echo Checking directory and file access permissions...
icacls %SONAR_SCANNER_BAT_DIRECTORY%


::Sonar qube Operation
echo ==================
echo ******************
echo SonarQube Progress
echo ******************
echo ==================
%SONAR_SCANNER_BAT_DIRECTORY%\sonar-scanner.bat -X ^
 -D"sonar.projectKey=%PROJECT_KEY%" ^
 -D"sonar.sources=%SOURCES%" ^
 -D"sonar.projectBaseDir=%WORKSPACE%" ^
 -D"sonar.host.url=%URL%" ^
 -D"sonar.login=%SONARQUBE_TOKEN%" ^
 -D"sonar.language=c" ^
 -D"sonar.c.file.suffixes=c,h" ^
 -D"sonar.cfamily.build-wrapper-output=%BUILD_WRAPPER_OUTPUT_DIRECTORY%" ^
 

if %errorlevel% neq 0 (
    echo "SonarQube Scanner failed. Exiting."
    exit /b 1
)
echo "SonarQube analysis completed successfully."
@ECHO OFF