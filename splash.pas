unit splash;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TsplashScreen }

  TsplashScreen = class(TForm)
    BootStatusText: TLabel;
    programVersion: TLabel;
    programName: TLabel;
    Logo: TImage;
    BootStatus: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure programNameClick(Sender: TObject);
    procedure LogoClick(Sender: TObject);
  private

  public

  end;

var
  splashScreen: TsplashScreen;

implementation

{$R *.lfm}

{ TsplashScreen }

procedure TsplashScreen.FormCreate(Sender: TObject);
begin

end;

procedure TsplashScreen.programNameClick(Sender: TObject);
begin

end;

procedure TsplashScreen.LogoClick(Sender: TObject);
begin

end;

end.

