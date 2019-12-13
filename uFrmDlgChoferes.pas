unit uFrmDlgChoferes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls;

type
  TFrmDlgChoferes = class(TFrmPlantillaDlg)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit8ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit6ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBEdit7ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDlgChoferes: TFrmDlgChoferes;

implementation

uses
  UDMDatos,Clipbrd;

{$R *.dfm}

procedure TFrmDlgChoferes.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Upcase(Key) in[#8,'0'..'9']) then
  begin
    Key:= #0;
    //MessageBeep(MB_ICONERROR);
  end;
end;

procedure TFrmDlgChoferes.DBEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit3KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit8KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit5KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit4KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit6KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit7KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgChoferes.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Upcase(Key) in[#8,'0'..'9']) then
    begin
      Key:= #0;
      //MessageBeep(MB_ICONERROR);
    end;
end;

procedure TFrmDlgChoferes.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDlgChoferes.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmDlgChoferes.DBEdit2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
   Handled := True;
end;

procedure TFrmDlgChoferes.DBEdit3ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgChoferes.DBEdit8ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgChoferes.DBEdit5ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgChoferes.DBEdit4ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgChoferes.DBEdit6ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgChoferes.DBEdit7ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

end.
