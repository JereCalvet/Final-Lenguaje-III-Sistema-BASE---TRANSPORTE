unit UFrmPlantillaGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, ExtCtrls, StdCtrls, Grids, DBGrids,
  DBCtrls, DB, DBActns, ActnList, ComCtrls, ToolWin, ImgList;

type
  TFrmPlantillaGrid = class(TFrmPlantillaGenerica)
    Panel1: TPanel;
    DSBASE: TDataSource;
    DBNAV1: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    ToolBar1: TToolBar;
    btnfirst: TToolButton;
    btnprior: TToolButton;
    btnnext: TToolButton;
    btnlast: TToolButton;
    btninsert: TToolButton;
    btndelete: TToolButton;
    btnedit: TToolButton;
    btnpost: TToolButton;
    btncancel: TToolButton;
    btnrefresh: TToolButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btndeleteClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlantillaGrid: TFrmPlantillaGrid;

implementation

{$R *.dfm}

procedure TFrmPlantillaGrid.Button1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmPlantillaGrid.FormShow(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Open;
end;

procedure TFrmPlantillaGrid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSBASE.DataSet.Close;
end;

procedure TFrmPlantillaGrid.btndeleteClick(Sender: TObject);
begin
  inherited;
 // if MessageDlg('Borrar registro?', mtConfirmation,[mbOK, mbCancel],0) = mrOK then
 //    DSBASE.DataSet.Delete;
end;

procedure TFrmPlantillaGrid.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  grid : TDBGrid;
  row : integer;
begin
  inherited;
   grid := sender as TDBGrid;
   row := grid.DataSource.DataSet.RecNo;
   if Odd(row) then
      grid.Canvas.Brush.Color := clSilver
   else
      grid.Canvas.Brush.Color := clDkGray;
      grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
