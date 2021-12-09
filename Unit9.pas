unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  TForm9 = class(TForm)
    DBGrid5: TDBGrid;
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
    Label14: TLabel;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button1: TButton;
    ADOTable5: TADOTable;
    DataSource5: TDataSource;
    ADOConnection1: TADOConnection;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit4, Unit7;

{$R *.dfm}

procedure TForm9.BitBtn2Click(Sender: TObject);
begin
adotable5.Insert;
end;

procedure TForm9.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer un Avantage !?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable5.delete;
end;

procedure TForm9.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable5.post;
showmessage('l''enregistrement réussi...');
end;

procedure TForm9.BitBtn4Click(Sender: TObject);
begin
adotable5.Edit;
end;

procedure TForm9.BitBtn6Click(Sender: TObject);
begin
adotable5.Cancel;
end;

procedure TForm9.BitBtn7Click(Sender: TObject);
begin
ADOTable5.refresh;
showmessage('la MAJ est faite avec succé...')
end;

procedure TForm9.BitBtn5Click(Sender: TObject);
begin
form4.show;
form9.Hide;
end;

procedure TForm9.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_avt';
        1:A:='Type_avt';
      end;
    ADOTable5.Filter := A + '='''+edit1.Text+'''';
    ADOTable5.Filtered := true;

if ADOTable5.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable5.Filtered := false;
  end;

edit1.Clear;

end;

procedure TForm9.Edit2Change(Sender: TObject);
begin
ADOTable5.Filtered:=false;
if edit2.Text = '' then
  exit;
ADOTable5.Filter := 'Type_avt like ('+''''+edit2.Text+'%'+''''+')';
ADOTable5.Filtered:=true;
end;

procedure TForm9.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var x:integer;
begin
 x:=DBGrid5.DataSource.DataSet.RecNo;
 if odd(x) then
   DBGrid5.Canvas.Brush.Color:=clwhite
 else
   DBGrid5.Canvas.Brush.Color:=clActiveCaption;
   DBGrid5.DefaultDrawColumnCell(rect, datacol, column, state);

end;

end.
