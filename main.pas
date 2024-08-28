unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  DefaultTranslator, StdCtrls;

type

  { Tdashboard }

  Tdashboard = class(TForm)
    Label1: TLabel;
    homeScreen: TPanel;
    SideBar: TShape;
    titleBar: TShape;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure titleBarChangeBounds(Sender: TObject);
    procedure SideBarChangeBounds(Sender: TObject);
  private

  public

  end;

var
  dashboard: Tdashboard;

implementation

{$R *.lfm}

{ Tdashboard }

procedure Tdashboard.titleBarChangeBounds(Sender: TObject);
begin

end;

procedure Tdashboard.FormCreate(Sender: TObject);
begin

end;

procedure Tdashboard.Label1Click(Sender: TObject);
begin

end;

procedure Tdashboard.Panel1Click(Sender: TObject);
begin

end;

procedure Tdashboard.Panel2Click(Sender: TObject);
begin

end;

procedure Tdashboard.SideBarChangeBounds(Sender: TObject);
begin

end;

end.

