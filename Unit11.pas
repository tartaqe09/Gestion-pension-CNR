unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  TForm11 = class(TForm)
    DBGrid7: TDBGrid;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button1: TButton;
    ADOTable7: TADOTable;
    DataSource7: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable7ID_regime: TAutoIncField;
    ADOTable7Type_regime: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm11.BitBtn2Click(Sender: TObject);
begin
adotable7.Insert;
end;

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer un r�gime de liquidation !?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable7.delete;
end;

procedure TForm11.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable7.post;
showmessage('l''enregistrement r�ussi...');
end;

procedure TForm11.BitBtn4Click(Sender: TObject);
begin
adotable7.Edit;
end;

procedure TForm11.BitBtn6Click(Sender: TObject);
begin
adotable7.Cancel;
end;

procedure TForm11.BitBtn7Click(Sender: TObject);
begin
ADOTable7.refresh;
showmessage('la MAJ est faite avec succ�...')
end;

procedure TForm11.BitBtn5Click(Sender: TObject);
begin
form4.show;
form11.Hide;
end;

procedure TForm11.Edit2Change(Sender: TObject);
begin
ADOTable7.Filtered:=false;
if edit2.Text = '' then
  exit;
ADOTable7.Filter := 'Type_regime like ('+''''+edit2.Text+'%'+''''+')';
ADOTable7.Filtered:=true;
end;

procedure TForm11.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_regime';
        1:A:='Type_regime';
      end;
    ADOTable7.Filter := A + '='''+edit1.Text+'''';
    ADOTable7.Filtered := true;

if ADOTable7.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable7.Filtered := false;
  end;

edit1.Clear;
end;

procedure TForm11.DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var x:integer;
begin
 x:=DBGrid7.DataSource.DataSet.RecNo;
 if odd(x) then
   DBGrid7.Canvas.Brush.Color:=clwhite
 else
   DBGrid7.Canvas.Brush.Color:=clActiveCaption;
   DBGrid7.DefaultDrawColumnCell(rect, datacol, column, state);


end;

end.
