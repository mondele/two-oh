program two_oh;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, unit1
  { you can add units after this };

{$R *.res}

function happy_path: string;
begin
{$IFDEF UNIX}
happy_path := GetEnv('HOME'); {All Unixes}
happy_path := happy_path + '/.config/BTT-Writer/';
{$ELSE}
{$IFDEF WINDOWS}
happy_path := GetEnv('HOMEPATH'); {Windows NT}
happy_path := happy_path + '\AppData\Local\BTT-Writer\';
{$ENDIF}
{$ENDIF}
end;

function listProjects (dataPath string): string;
begin
   myDirectory := dataPath + 'targetTranslations'
   projectFolders := FindAllDirectories(myDirectory, false);
   try
     if projectFolders.Count > 0 then
     Result := projectFolders;
end;

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

