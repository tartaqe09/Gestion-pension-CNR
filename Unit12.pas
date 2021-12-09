unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, Buttons, ExtCtrls, Mask, Grids,
  DBGrids;

type
  TForm12 = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    GroupBox3: TGroupBox;
    Edit9: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    DataSource8: TDataSource;
    ADOTable8: TADOTable;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm12.BitBtn2Click(Sender: TObject);
begin
adotable8.Insert;
end;

procedure TForm12.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimer une agence !?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable8.delete;
end;

procedure TForm12.BitBtn3Click(Sender: TObject);
begin
if (dbedit1.text = '') and (dbedit2.text = '') and (dbedit3.text = '') then
showmessage('veuiller remplir les champs vides...');
ADOTable8.post;
showmessage('l''enregistrement r�ussi...');
end;

procedure TForm12.BitBtn4Click(Sender: TObject);
begin
adotable8.Edit;
end;

procedure TForm12.BitBtn6Click(Sender: TObject);
begin
adotable8.Cancel;
end;

procedure TForm12.BitBtn7Click(Sender: TObject);
begin
ADOTable8.refresh;
showmessage('la MAJ est faite avec succ�...')
end;

procedure TForm12.BitBtn5Click(Sender: TObject);
begin
form4.show;
form12.Hide;
end;

procedure TForm12.Button1Click(Sender: TObject);
var A:string;
begin
      case ComboBox1.ItemIndex of
        0:A:='Nom_agence';
        1:A:='ville_agence';
        2:A:='Cod_postal';
      end;
    ADOTable8.Filter := A + '='''+edit9.Text+'''';
   ADOTable8.Filtered := true;

if ADOTable8.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable8.Filtered := false;
  end;

edit9.Clear;

end;

procedure TForm12.Edit5Change(Sender: TObject);
begin
ADOTable8.Filtered:=false;
if edit5.Text = '' then
  exit;
  ADOTable8.Filter := 'ville_agence like ('+''''+edit5.Text+'%'+''''+')';
ADOTable8.Filtered:=true;
end;

procedure TForm12.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var x:integer;
begin
 x:=DBGrid1.DataSource.DataSet.RecNo;
 if odd(x) then
   DBGrid1.Canvas.Brush.Color:=clwhite
 else
   DBGrid1.Canvas.Brush.Color:=clActiveCaption;
   DBGrid1.DefaultDrawColumnCell(rect, datacol, column, state);


end;

end.
