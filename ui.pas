unit ui;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TDashboard2 }

  TDashboard2 = class(TForm)
    home: TPanel;
    homeHeader: TPanel;
    Label1: TLabel;
    StatusBar: TPanel;
    Sidebar: TPanel;
    titleBar: TPanel;
  private

  public

  end;

var
  Dashboard2: TDashboard2;

implementation

{$R *.lfm}

end.

