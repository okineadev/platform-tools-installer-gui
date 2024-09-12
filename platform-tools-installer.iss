; https://jrsoftware.org/ishelp/

[Setup]
AppName=Android SDK Platform Tools
AppId={{09BC49C8-44AA-4FD8-90F2-628EA62B4338}}
AppVersion=0.0.1
CreateAppDir=yes
UsePreviousAppDir=no
DefaultDirName={sd}\platform-tools
DefaultGroupName=Platform Tools Installer
SolidCompression=yes
PrivilegesRequired=admin
SetupIconFile=favicon.ico
WizardImageFile=android-bot.bmp
WizardSmallImageFile=android.bmp
WizardImageAlphaFormat=defined
WizardStyle=modern
DisableWelcomePage=no
ShowLanguageDialog=auto
LicenseFile=terms-and-conditions.txt
OutputBaseFilename="platform-tools-installer"
WizardImageStretch=no

[Files]
Source: "add-to-path.ps1"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "platform-tools\*"; DestDir: "{app}"

[Messages]
WelcomeLabel1=Welcome to the platform-tools installation wizard!

[Tasks]
Name: "addtopath"; Description: "Add to PATH (need restart)"; Flags: restart

[Run]
Filename: "powershell.exe"; Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\add-to-path.ps1"" -Folder ""{app}"""; Flags: runhidden runascurrentuser; Tasks: addtopath; StatusMsg: "Додавання до PATH..."
