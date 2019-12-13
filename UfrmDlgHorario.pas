unit UfrmDlgHorario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls, Clipbrd;

type
  TFrmDlgHorario = class(TFrmPlantillaDlg)
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure BitBtnGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDlgHorario: TFrmDlgHorario;

implementation

uses UDMDatos;

{$R *.dfm}

procedure TFrmDlgHorario.DBEdit6KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgHorario.DBEdit6ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgHorario.BitBtnGrabarClick(Sender: TObject);
begin
  DMDatos.HorarioHORA_SALIDA.Value:=DateTimePicker1.Time;
  inherited;
end;

end.
