unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  TForm6 = class(TForm)
    DBGrid3: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
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
    Label12: TLabel;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    Edit9: TEdit;
    ComboBox2: TComboBox;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
ADOTable2.Insert;
end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer un Type de TP!?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable2.delete;
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable2.post;
showmessage('l''enregistrement réussi...');
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
ADOTable2.edit;
end;

procedure TForm6.BitBtn6Click(Sender: TObject);
begin
ADOTable2.cancel;
end;

procedure TForm6.BitBtn7Click(Sender: TObject);
begin
ADOTable2.refresh;
showmessage('la MAJ est faite avec succé...')
end;

procedure TForm6.BitBtn5Click(Sender: TObject);
begin
form4.show;
form6.Hide;
end;

procedure TForm6.Edit1Change(Sender: TObject);
begin
ADOTable2.Filtered:=false;
if edit1.Text = '' then
  exit;
  ADOTable2.Filter := 'Type_TP like ('+''''+edit1.Text+'%'+''''+')';
ADOTable2.Filtered:=true;
end;

procedure TForm6.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_Type_TP';
        1:A:='Type_TP';
      end;
    ADOTable2.Filter := A + '='''+edit9.Text+'''';
    ADOTable2.Filtered := true;

if ADOTable2.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable2.Filtered := false;
  end;

edit9.Clear;

end;

procedure TForm6.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var x:integer;
begin
 x:=DBGrid3.DataSource.DataSet.RecNo;
 if odd(x) then
   DBGrid3.Canvas.Brush.Color:=clwhite
 else
   DBGrid3.Canvas.Brush.Color:=clActiveCaption;
   DBGrid3.DefaultDrawColumnCell(rect, datacol, column, state);

end;

end.
