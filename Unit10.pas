unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  TForm10 = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    Button1: TButton;
    ADOTable6: TADOTable;
    DataSource6: TDataSource;
    ADOConnection1: TADOConnection;
    procedure Edit2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm10.Edit2Change(Sender: TObject);
begin
ADOTable6.Filtered:=false;
if edit2.Text = '' then
  exit;
ADOTable6.Filter :='groupe='+QuotedStr(edit2.Text);
ADOTable6.Filtered:=true;
end;

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
adotable6.Insert;
end;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer un groupe !?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable6.delete;
end;

procedure TForm10.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable6.post;
showmessage('l''enregistrement r�ussi...');
end;

procedure TForm10.BitBtn4Click(Sender: TObject);
begin
adotable6.Edit;
end;

procedure TForm10.BitBtn6Click(Sender: TObject);
begin
adotable6.Cancel;
end;

procedure TForm10.BitBtn7Click(Sender: TObject);
begin
ADOTable6.refresh;
showmessage('la MAJ est faite avec succ�...')
end;

procedure TForm10.BitBtn5Click(Sender: TObject);
begin
form4.show;
form10.Hide;
end;

procedure TForm10.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_groupe';
        1:A:='groupe';
      end;
    ADOTable6.Filter := A + '='''+edit1.Text+'''';
ADOTable6.Filtered := true;

if ADOTable6.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
   ADOTable6.Filtered := false;
  end;

edit1.Clear;

end;

procedure TForm10.DBGrid5DrawColumnCell(Sender: TObject; const Rect: TRect;
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
