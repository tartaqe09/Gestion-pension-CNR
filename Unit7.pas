unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons, ExtCtrls, DB,
  ADODB;

type
  TForm7 = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid4: TDBGrid;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button1: TButton;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    ADOConnection1: TADOConnection;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_etat_TP';
        1:A:='Etat_TP';
      end;
    ADOTable3.Filter := A + '='''+edit1.Text+'''';
   ADOTable3.Filtered := true;

if ADOTable3.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable3.Filtered := false;
  end;

edit1.Clear;


end;

procedure TForm7.Edit2Change(Sender: TObject);
begin
ADOTable3.Filtered:=false;
if edit2.Text = '' then
  exit;
ADOTable3.Filter := 'Etat_TP like ('+''''+edit2.Text+'%'+''''+')';
ADOTable3.Filtered:=true;
end;

procedure TForm7.BitBtn2Click(Sender: TObject);
begin
adotable3.Insert;
end;

procedure TForm7.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer Etat de TP!?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable3.delete;
end;

procedure TForm7.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable3.post;
showmessage('l''enregistrement r�ussi...');
end;

procedure TForm7.BitBtn4Click(Sender: TObject);
begin
adotable3.Edit;
end;

procedure TForm7.BitBtn6Click(Sender: TObject);
begin
adotable3.Cancel;
end;

procedure TForm7.BitBtn7Click(Sender: TObject);
begin
ADOTable3.refresh;
showmessage('la MAJ est faite avec succ�...')
end;

procedure TForm7.BitBtn5Click(Sender: TObject);
begin
form4.show;
form7.Hide;
end;

procedure TForm7.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var x:integer;
begin
 x:=DBGrid4.DataSource.DataSet.RecNo;
 if odd(x) then
   DBGrid4.Canvas.Brush.Color:=clwhite
 else
   DBGrid4.Canvas.Brush.Color:=clActiveCaption;
   DBGrid4.DefaultDrawColumnCell(rect, datacol, column, state);


end;

end.
