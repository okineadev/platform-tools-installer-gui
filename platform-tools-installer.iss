; https://jrsoftware.org/ishelp/

[Setup]
; Basic setup information
AppName=Android SDK Platform Tools
AppId={{09BC49C8-44AA-4FD8-90F2-628EA62B4338}}
AppVersion=0.0.1
AppCopyright=Copyright (C) Okinea Dev 2024-present
AppPublisher=Okinea Dev
AppPublisherURL=https://github.com/okineadev
AppSupportURL=https://github.com/okineadev/platform-tools-installer-gui/issues
AppUpdatesURL=https://github.com/okineadev/platform-tools-installer-gui/releases
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
; Files to be included in the installation
Source: "add-to-path.ps1"; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: "platform-tools\*"; DestDir: "{app}"

[Messages]
; Custom messages for the installer
WelcomeLabel1=Welcome to the platform-tools installation wizard!

[Tasks]
; Tasks to be performed during installation
Name: "addtopath"; Description: "Add to PATH (need restart)"; Flags: restart

[Run]
; Commands to be executed during installation
Filename: "powershell.exe"; Parameters: "-ExecutionPolicy Bypass -File ""{tmp}\add-to-path.ps1"" -Folder ""{app}"""; Flags: runhidden runascurrentuser; Tasks: addtopath; StatusMsg: "Додавання до PATH..."
