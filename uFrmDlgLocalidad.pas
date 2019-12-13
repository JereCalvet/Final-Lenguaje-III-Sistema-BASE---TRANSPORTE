unit uFrmDlgLocalidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls;

type
  TFrmDlgLocalidad = class(TFrmPlantillaDlg)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
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
  FrmDlgLocalidad: TFrmDlgLocalidad;

implementation

uses
  UDMDatos,Clipbrd;

{$R *.dfm}

procedure TFrmDlgLocalidad.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDlgLocalidad.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDlgLocalidad.DBEdit4KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDlgLocalidad.DBEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgLocalidad.DBEdit3KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgLocalidad.DBEdit4KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgLocalidad.DBEdit2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgLocalidad.DBEdit3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgLocalidad.DBEdit4ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

end.
