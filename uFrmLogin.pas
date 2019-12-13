unit uFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, StdCtrls, Buttons;

type
  TFrmLogin = class(TFrmPlantillaGenerica)
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  contador: integer = 0;

implementation

uses
  UDMSeguridad, UFormMenu;

{$R *.dfm}

procedure TFrmLogin.BitBtn2Click(Sender: TObject);
begin
  inherited;
    Application.Terminate;
end;

procedure TFrmLogin.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with DMSeguridad do
    begin
      Usuarios.Open;
        if ((Usuarios.Locate('NOMBRE',Edit1.Text,[]))) and (UsuariosPASSWORD.Value = Edit2.Text) then
            begin
              ShowMessage('Login Exitoso');
              Login.Active := False;
              Login.Params.ParamByName('USUARIO').Value := UsuariosID.Value;
              Login.Active := True;
              Close
            end
        else
            begin
              ShowMessage('Datos incorrectos');
              contador := contador +1;
              Edit1.Text := '';
              Edit2.Text := '';
              Edit1.SetFocus;
              if contador = 3 then
                Application.Terminate;
            end;
    end;
end;

procedure TFrmLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GetKeyState(VK_CAPITAL) = 1) then
    label3.Caption := 'BLOQ MAYUS ON'
  else
    label3.Caption := '';
end;

end.


