unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  ADODB;

type
  TForm8 = class(TForm)
    DBGrid6: TDBGrid;
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
    ADOTable4: TADOTable;
    DataSource4: TDataSource;
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
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit4, Unit7;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox2.ItemIndex of
        0:A:='ID_etat_pens';
        1:A:='Etat_pens';
      end;
    ADOTable4.Filter := A + '='''+edit1.Text+'''';
    ADOTable4.Filtered := true;

if ADOTable4.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable4.Filtered := false;
  end;

edit1.Clear;

end;

procedure TForm8.Edit2Change(Sender: TObject);
begin
 ADOTable4.Filtered:=false;
if edit2.Text = '' then
  exit;
ADOTable4.Filter := 'Etat_pens like ('+''''+edit2.Text+'%'+''''+')';
ADOTable4.Filtered:=true;
end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin
adotable4.insert;
end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer Etat de pension!?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable4.delete;
end;

procedure TForm8.BitBtn3Click(Sender: TObject);
begin
if dbedit1.text = '' then
showmessage('veuiller remplir les champs vides...');
ADOTable4.post;
showmessage('l''enregistrement r�ussi...');
end;

procedure TForm8.BitBtn4Click(Sender: TObject);
begin
adotable4.Edit;
end;

procedure TForm8.BitBtn6Click(Sender: TObject);
begin
adotable4.Cancel;
end;

procedure TForm8.BitBtn7Click(Sender: TObject);
begin
ADOTable4.refresh;
showmessage('la MAJ est faite avec succ�...')
end;

procedure TForm8.BitBtn5Click(Sender: TObject);
begin
form4.show;
form8.Hide;
end;

procedure TForm8.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var x:integer;
begin
 x:=DBGrid6.DataSource.DataSet.RecNo;
 if odd(x) then
   DBGrid6.Canvas.Brush.Color:=clwhite
 else
   DBGrid6.Canvas.Brush.Color:=clActiveCaption;
   DBGrid6.DefaultDrawColumnCell(rect, datacol, column, state);


end;

end.
