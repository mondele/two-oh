unit ui;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TProjectPanel }

  TProjectPanel = class(TPanel)
    private
    FName: string;
    FSize: integer;
    FDate: TDateTime;
  public
    constructor Create(AOwner: TComponent); override;
    property Name: string read FName write FName;
    property Size: integer read FSize write FSize;
    property Date: TDateTime read FDate write FDate;
  end;

  { TDashboard2 }

  TDashboard2 = class(TForm)
    home: TPanel;
    homeHeader: TPanel;
    Label1: TLabel;
    StatusBar: TPanel;
    Sidebar: TPanel;
    titleBar: TPanel;
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Dashboard2: TDashboard2;

implementation

{$R *.lfm}

{ TDashboard2 }

procedure TDashboard2.Label1Click(Sender: TObject);
begin

end;

{ TProjectPanel }

constructor TProjectPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

Procedure Tdashboard.CreatePanels;
var
  i: integer;
  panel: TProjectPanel;
begin
  // Create panels and add them to the array
  SetLength(FPanelArray, FPanels.Count);
  for i := 0 to FPanels.Count - 1 do
  begin
    panel := TProjectPanel.Create(Self);
    panel.Name := FPanels[i];
    panel.Size := 100; // Replace with actual size
    panel.Date := Now; // Replace with actual date
    panel.Parent := homeScreen;
    panel.Align := alTop;
    FPanelArray[i] := panel;
  end;
end;

end.

