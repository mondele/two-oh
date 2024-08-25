unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Panel1: TPanel;
    SideBar: TShape;
    headerBar: TShape;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure headerBarChangeBounds(Sender: TObject);
    procedure SideBarChangeBounds(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.headerBarChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.SideBarChangeBounds(Sender: TObject);
begin

end;

end.

