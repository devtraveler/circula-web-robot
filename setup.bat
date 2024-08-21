@echo off
echo Setting up the environment...

REM Step 1: Create a virtual environment (if not already created)
IF NOT EXIST "venv" (
    echo Creating virtual environment...
    python -m venv venv
)

REM Step 2: Activate the virtual environment
echo Activating virtual environment...
call venv\Scripts\activate

REM Step 3: Install required Python packages
echo Installing Python dependencies...
pip install --upgrade pip
pip install -r requirements.txt

REM Step 4: Add the drivers directory to the PATH
echo Adding drivers to PATH...
setx PATH "%PATH%;%CD%\drivers"

REM Step 5: Verify installation of SeleniumLibrary
echo Verifying installation of SeleniumLibrary...
pip show robotframework-seleniumlibrary >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo SeleniumLibrary is not installed. Installing now...
    pip install robotframework-seleniumlibrary
)

REM Step 6: Inform the user of completion
echo Setup complete! You can now run your tests.
pause
