unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Menus;

type
  TFHaupt = class(TForm)
    CBData0: TCheckBox;
    CBData1: TCheckBox;
    CBData2: TCheckBox;
    CBData3: TCheckBox;
    LData0: TLabel;
    LData1: TLabel;
    LData2: TLabel;
    LData3: TLabel;
    PMHaupt: TPopupMenu;
    Port378: TMenuItem;
    Port278: TMenuItem;
    Port3BC: TMenuItem;
    procedure CBDataClick(Sender: TObject);
    procedure Port378Click(Sender: TObject);
    procedure Port278Click(Sender: TObject);
    procedure Port3BCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    Dataport: word;
    procedure GetPortStates;
  public
    { Public-Deklarationen }
  end;

var
  FHaupt: TFHaupt;

implementation

{$R *.DFM}

procedure Outport(PortAddr:word; Databyte: byte);
assembler; stdcall;
asm
   mov al,Databyte
   mov dx,PortAddr
   out dx,al
end;

function InPort(PortAddr: word): byte;
assembler; stdcall;
asm
   mov dx,PortAddr
   in al,dx
end;

procedure TFHaupt.CBDataClick(Sender: TObject);
var Databyte: Byte;
begin
  DataByte := 0;
  if CBData0.Checked then DataByte := DataByte + 1;
  if CBData1.Checked then DataByte := DataByte + 2;
  if CBData2.Checked then DataByte := DataByte + 4;
  if CBData3.Checked then DataByte := DataByte + 8;
  OutPort($378,Databyte);
  Application.ProcessMessages;
  GetPortStates;
end;

procedure TFHaupt.Port378Click(Sender: TObject);
begin
  Dataport := $378;
  Port378.Checked := True;
  GetPortStates;
end;

procedure TFHaupt.Port278Click(Sender: TObject);
begin
  Dataport := $278;
  Port278.Checked := True;
  GetPortStates;
end;

procedure TFHaupt.Port3BCClick(Sender: TObject);
begin
  Dataport := $3BC;
  Port3BC.Checked := True;
  GetPortStates;
end;

procedure TFHaupt.FormCreate(Sender: TObject);
begin
  DataPort := $378;
  GetPortStates;
end;

procedure TFHaupt.GetPortStates;
var DataByte:Byte;
begin
  DataByte := InPort(DataPort);
  if (DataByte and $01)=$01 then
    LData0.Caption := 'high' else LData0.Caption := 'low';
  if (DataByte and $02)=$02 then
    LData1.Caption := 'high' else LData1.Caption := 'low';
  if (DataByte and $04)=$04 then
    LData2.Caption := 'high' else LData2.Caption := 'low';
  if (DataByte and $08)=$08 then
    LData3.Caption := 'high' else LData3.Caption := 'low';
  FHaupt.Caption := 'ToUControl '+IntToStr(DataByte);
end;

end.
