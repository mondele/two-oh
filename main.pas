unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls;

type

  { Tdashboard }

  Tdashboard = class(TForm)
    Panel1: TPanel;
    SideBar: TShape;
    titleBar: TShape;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
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

procedure Tdashboard.SideBarChangeBounds(Sender: TObject);
begin

end;

end.

