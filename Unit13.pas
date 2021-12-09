unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  TForm13 = class(TForm)
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
    ADOTable7ID_sit_fami: TAutoIncField;
    ADOTable7sit_famil: TStringField;
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
  Form13: TForm13;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm13.BitBtn2Click(Sender: TObject);
begin
adotable7.Insert;
end;

procedure TForm13.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer une situation familiale !?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable7.delete;
end;

procedure TForm13.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable7.post;
showmessage('l''enregistrement réussi...');
end;

procedure TForm13.BitBtn4Click(Sender: TObject);
begin
adotable7.Edit;
end;

procedure TForm13.BitBtn6Click(Sender: TObject);
begin
adotable7.Cancel;
end;

procedure TForm13.BitBtn7Click(Sender: TObject);
begin
ADOTable7.refresh;
showmessage('la MAJ est faite avec succé...')
end;

procedure TForm13.BitBtn5Click(Sender: TObject);
begin
form4.show;
form13.Hide;
end;

procedure TForm13.Edit2Change(Sender: TObject);
begin
ADOTable7.Filtered:=false;
if edit2.Text = '' then
  exit;
  ADOTable7.Filter := 'sit_famil like ('+''''+edit2.Text+'%'+''''+')';
ADOTable7.Filtered:=true;
end;

procedure TForm13.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_sit_fami';
        1:A:='sit_famil';
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

procedure TForm13.DBGrid7DrawColumnCell(Sender: TObject; const Rect: TRect;
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
