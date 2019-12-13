unit uFrmDlgUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls;

type
  TFrmDlgUsuarios = class(TFrmPlantillaDlg)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDlgUsuarios: TFrmDlgUsuarios;

implementation

uses
  UDMSeguridad,Clipbrd;

{$R *.dfm}

procedure TFrmDlgUsuarios.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    BitBtnGrabar.Click
   else
    if (Upcase(Key) in['0'..'9']) then
      begin
        Key:= #0;
      //MessageBeep(MB_ICONERROR);
      end;
end;

procedure TFrmDlgUsuarios.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if ((ssCtrl in Shift) AND (Key = ord('V'))) or ((ssShift in Shift) and (Key = VK_INSERT)) then
     begin
       if Clipboard.HasFormat(CF_TEXT) then
          ClipBoard.Clear;
       Key := 0;
     end;
end;

procedure TFrmDlgUsuarios.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if ((ssCtrl in Shift) AND (Key = ord('V'))) or ((ssShift in Shift) and (Key = VK_INSERT)) then
     begin
       if Clipboard.HasFormat(CF_TEXT) then
          ClipBoard.Clear;
       Key := 0;
     end;
end;

procedure TFrmDlgUsuarios.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if ((ssCtrl in Shift) AND (Key = ord('V'))) or ((ssShift in Shift) and (Key = VK_INSERT)) then
     begin
       if Clipboard.HasFormat(CF_TEXT) then
          ClipBoard.Clear;
       Key := 0;
     end;
end;

procedure TFrmDlgUsuarios.DBEdit2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgUsuarios.DBEdit3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgUsuarios.DBEdit4ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

end.
