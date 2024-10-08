unit TestTheme;

{$mode ObjFPC}{$H+}

interface

uses
  fpcunit, testregistry, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ui;

type
  TTestTheme = class(TTestCase)
  published
    procedure TestCreateTheme;
    procedure TestThemeColors;
  end;

  TTestProjectPanel = class(TTestCase)
  published
    procedure TestCreateProjectPanel;
    procedure TestProjectPanelColors;
  end;

  TTestDashboard2 = class(TTestCase)
  published
    procedure TestCreateDashboard2;
    procedure TestCreatePanels;
  end;

implementation

{ TTestTheme }

procedure TTestTheme.TestCreateTheme;
var
  theme: TTheme;
begin
  theme := TTheme.Create(clRed, clBlue, clGreen);
  AssertNotNil(theme);
  AssertEquals(clRed, theme.PrimaryColor);
  AssertEquals(clBlue, theme.SecondaryColor);
  AssertEquals(clGreen, theme.TextColor);
end;

procedure TTestTheme.TestThemeColors;
var
  theme: TTheme;
begin
  theme := TTheme.Create(clRed, clBlue, clGreen);
  AssertEquals(clRed, theme.PrimaryColor);
  AssertEquals(clBlue, theme.SecondaryColor);
  AssertEquals(clGreen, theme.TextColor);
end;

{ TTestProjectPanel }

procedure TTestProjectPanel.TestCreateProjectPanel;
var
  panel: TProjectPanel;
  theme: TTheme;
begin
  theme := TTheme.Create(clRed, clBlue, clGreen);
  panel := TProjectPanel.Create(nil, theme);
  AssertNotNil(panel);
  AssertEquals(theme, panel.ColorScheme);
  AssertEquals(clBlue, panel.Color);
  AssertEquals(clGreen, panel.Font.Color);
end;

procedure TTestProjectPanel.TestProjectPanelColors;
var
  panel: TProjectPanel;
  theme: TTheme;
begin
  theme := TTheme.Create(clRed, clBlue, clGreen);
  panel := TProjectPanel.Create(nil, theme);
  AssertEquals(clBlue, panel.Color);
  AssertEquals(clGreen, panel.Font.Color);
end;

{ TTestDashboard2 }

procedure TTestDashboard2.TestCreateDashboard2;
var
  dashboard: TDashboard2;
begin
  dashboard := TDashboard2.Create(nil);
  AssertNotNil(dashboard);
end;

procedure TTestDashboard2.TestCreatePanels;
var
  dashboard: TDashboard2;
  theme: TTheme;
  panel: TProjectPanel;
  i: Integer;
begin
  theme := TTheme.Create(clRed, clBlue, clGreen);
  dashboard := TDashboard2.Create(nil);
  dashboard.Theme := theme;
  dashboard.CreatePanels;
  for i := 0 to dashboard.FPanelArray.Length - 1 do
  begin
    panel := dashboard.FPanelArray[i];
    AssertNotNil(panel);
    AssertEquals(theme, panel.ColorScheme);
    AssertEquals(clBlue, panel.Color);
    AssertEquals(clGreen, panel.Font.Color);
  end;
end;

initialization
  RegisterTest('TTestTheme', TTestTheme);
  RegisterTest('TTestProjectPanel', TTestProjectPanel);
  RegisterTest('TTestDashboard2', TTestDashboard2);
