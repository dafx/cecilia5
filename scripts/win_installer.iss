; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A970BBE5-4FA8-496E-9823-2491D09DA043}
AppName=Cecilia5
AppVersion=5.0.2 beta
;AppVerName=Cecilia5 5.0.2 beta
AppPublisher=iACT.umontreal.ca
AppPublisherURL=http://code.google.com/p/cecilia5
AppSupportURL=http://code.google.com/p/cecilia5
AppUpdatesURL=http://code.google.com/p/cecilia5
DefaultDirName={pf}\Cecilia5
DisableDirPage=yes
DefaultGroupName=Cecilia5
AllowNoIcons=yes
LicenseFile=C:\Documents and Settings\user\svn\cecilia5\Cecilia5_Win\Resources\COPYING.txt
OutputBaseFilename=Cecilia5_5.0.2_setup
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
Uninstallable=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Documents and Settings\user\svn\cecilia5\Cecilia5_Win\Cecilia5.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Documents and Settings\user\svn\cecilia5\Cecilia5_Win\Resources\*"; DestDir: "{app}\Resources"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCR; Subkey: ".c5"; ValueType: string; ValueName: ""; ValueData: "Cecilia5File"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Cecilia5File"; ValueType: string; ValueName: ""; ValueData: "Cecilia 5 File"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "Cecilia5File\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Resources\CeciliaFileIcon5.ico"
Root: HKCR; Subkey: "Cecilia5File\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Cecilia5.exe"" ""%1"""

[Icons]
Name: "{group}\Cecilia5"; Filename: "{app}\Cecilia5.exe"; WorkingDir: "{app}"
Name: "{commondesktop}\Cecilia5"; Filename: "{app}\Cecilia5.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Cecilia5.exe"; Description: "{cm:LaunchProgram,Cecilia5}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\Cecilia5 Uninstall"







