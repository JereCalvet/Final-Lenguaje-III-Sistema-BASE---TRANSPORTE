unit UFrmDlgGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls;

type
  TFrmDlgGrupos = class(TFrmPlantillaDlg)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDlgGrupos: TFrmDlgGrupos;

implementation

uses
  UDMSeguridad,Clipbrd;

{$R *.dfm}

procedure TFrmDlgGrupos.DBEdit2KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgGrupos.DBEdit2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

end.
