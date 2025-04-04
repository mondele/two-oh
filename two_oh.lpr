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
  Forms, main, dos, FileUtil, Classes, ui, splash// , configurator
  { you can add units after this };

{$R *.res}

function happy_path: string;
begin
{$IFDEF UNIX}
happy_path := GetEnv('HOME'); {All Unixes}
{$IFDEF Darwin}
happy_path := happy_path + '/Library/ApplicationSupport/BTT-Writer/';
{$ELSE}
happy_path := happy_path + '/.config/BTT-Writer/';
{$ENDIF}
{$ELSE}
{$IFDEF WINDOWS}
happy_path := GetEnv('HOMEPATH'); {Windows NT}
happy_path := happy_path + '\AppData\Local\BTT-Writer\';
{$ENDIF}
{$ENDIF}
end;

function listProjects(dataPath: string): TStringList;
   var myDirectory: string;
   var projectFolders: TStringList;
begin
   myDirectory := dataPath + 'targetTranslations';
   projectFolders := FindAllDirectories(myDirectory, false);
   try
     if projectFolders.Count > 0 then
     Result := projectFolders;
     except
       begin
         writeLn('Something unexpected happened');
       end;
   end;
end;

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tdashboard, dashboard);
  Application.CreateForm(TDashboard2, Dashboard2);
  Application.CreateForm(TsplashScreen, splashScreen);
  Application.Run;
end.

