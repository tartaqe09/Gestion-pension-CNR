unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, DBCtrls, StdCtrls, Buttons, Mask,dateutils,
  ExtCtrls, ComCtrls;

type
  TForm14 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Edit7: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    ADOTable2ID_sit_fami: TAutoIncField;
    ADOTable2sit_famil: TStringField;
    ADOTable3: TADOTable;
    ADOTable3ID_regime: TAutoIncField;
    ADOTable3Type_regime: TStringField;
    ADOTable4: TADOTable;
    ADOTable4ID_etat_pens: TAutoIncField;
    ADOTable4Etat_pens: TStringField;
    ADOTable5: TADOTable;
    ADOTable5ID_avt: TAutoIncField;
    ADOTable5Type_avt: TStringField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    ADOTable6: TADOTable;
    ADOTable6ID_groupe: TAutoIncField;
    ADOTable6groupe: TIntegerField;
    DataSource6: TDataSource;
    ADOTable7: TADOTable;
    DataSource7: TDataSource;
    ADOTable7ID_agence: TAutoIncField;
    ADOTable7Nom_agence: TStringField;
    ADOTable7ville_agence: TStringField;
    ADOTable7Cod_postal: TIntegerField;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Label17: TLabel;
    Label18: TLabel;
    ADOQuery2: TADOQuery;
    DataSource9: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Edit1: TEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    ADOQuery2Ville_Agence: TStringField;
    ADOQuery2Num_pens: TStringField;
    ADOQuery2Nom_ass: TStringField;
    ADOQuery2Prenom_ass: TStringField;
    ADOQuery2sit_famil: TStringField;
    ADOQuery2etat_pens: TStringField;
    ADOQuery2Taux_de_pension: TBCDField;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    ADOTable1ID_ass: TAutoIncField;
    ADOTable1Num_pens: TStringField;
    ADOTable1Nom_ass: TStringField;
    ADOTable1Prenom_ass: TStringField;
    ADOTable1Date_naiss_ass: TWideStringField;
    ADOTable1Adrs_ass: TStringField;
    ADOTable1Num_Tel: TIntegerField;
    ADOTable1D_serv: TWideStringField;
    ADOTable1F_serv: TWideStringField;
    ADOTable1Net_mens: TBCDField;
    ADOTable1Taux_de_pension: TFloatField;
    ADOTable1ID_sit_fami: TIntegerField;
    ADOTable1ID_regime: TIntegerField;
    ADOTable1ID_etat_pens: TIntegerField;
    ADOTable1ID_groupe: TIntegerField;
    ADOTable1ID_avt: TIntegerField;
    ADOTable1ID_agence: TIntegerField;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    DataSource8: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox7Click(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBLookupComboBox6Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ADOTable1AfterScroll(DataSet: TDataSet);
    procedure ADOTable1CalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEdit11Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit4;

{$R *.dfm}


procedure TForm14.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('voulez vous vraiment supprimé un assuré !?',mtconfirmation,[mbyes,mbno],0)=mryes then
adotable1.Delete;
end;

procedure TForm14.BitBtn3Click(Sender: TObject);
begin
adotable1.Post;
ADOQuery2.Close;
ADOQuery2.Open;
ADOQuery2.Last;
BitBtn2.Click;
end;

procedure TForm14.BitBtn4Click(Sender: TObject);
begin
adotable1.edit;
end;

procedure TForm14.BitBtn6Click(Sender: TObject);
begin
adotable1.cancel;
end;

procedure TForm14.BitBtn7Click(Sender: TObject);
begin
adotable1.Refresh;
showmessage('vous avez mis à jour vos données ');
end;

procedure TForm14.BitBtn5Click(Sender: TObject);
begin
form4.show;
 form14.Hide;
end;

procedure TForm14.Edit1Change(Sender: TObject);
begin
dbedit1.text:= DBLookupComboBox2.Text+DBLookupComboBox3.Text+ DBLookupComboBox4.Text +inttostr(strtoint(edit7.text)+1);
end;

procedure TForm14.DBLookupComboBox1Click(Sender: TObject);
begin
if adotable2.Locate('sit_famil',DBLookupComboBox1.Text,[] )=true then
ADOTable1ID_sit_fami.Value:= ADOTable2ID_sit_fami.Value;
end;

procedure TForm14.DBLookupComboBox2Click(Sender: TObject);
begin
if adotable3.Locate('Type_regime',DBLookupComboBox2.Text,[] )=true then
ADOTable1ID_regime.Value:= ADOTable3ID_regime.Value;
dbedit1.text:= DBLookupComboBox2.Text+DBLookupComboBox3.Text+ DBLookupComboBox4.Text +inttostr(strtoint(edit7.text)+1);
end;

procedure TForm14.DBLookupComboBox3Click(Sender: TObject);
begin
if adotable6.Locate('groupe',DBLookupComboBox3.Text,[] )=true then
ADOTable1ID_groupe.Value:= ADOTable6ID_groupe.Value;
dbedit1.text:= DBLookupComboBox2.Text+DBLookupComboBox3.Text+ DBLookupComboBox4.Text +inttostr(strtoint(edit7.text)+1);
end;

procedure TForm14.DBLookupComboBox4Click(Sender: TObject);
begin
if adotable5.Locate('Type_avt',DBLookupComboBox4.Text,[] )=true then
ADOTable1ID_avt.Value:= ADOTable5ID_avt.Value;
dbedit1.text:= DBLookupComboBox2.Text+DBLookupComboBox3.Text+ DBLookupComboBox4.Text +inttostr(strtoint(edit7.text)+1);
end;

procedure TForm14.DBLookupComboBox5Click(Sender: TObject);
begin
if adotable4.Locate('Etat_pens',DBLookupComboBox5.Text,[] )=true then
ADOTable1ID_etat_pens.Value:= ADOTable4ID_etat_pens.Value;
end;

procedure TForm14.BitBtn2Click(Sender: TObject);
begin
adotable1.Insert;
end;

procedure TForm14.DBLookupComboBox7Click(Sender: TObject);
begin
//if adotable4.Locate('Etat_pens',DBLookupComboBox7.Text,[] )=true then
//ADOTable1ID_etat_pens.Value:= ADOTable4ID_etat_pens.Value;
end;

procedure TForm14.DBEdit10Change(Sender: TObject);
begin
//ADOTable1Taux_de_pension.Value:= ADOQuery2Tauxdepension.Value;
end;

procedure TForm14.DBLookupComboBox6Click(Sender: TObject);
begin
 if adotable7.Locate('ville_agence',DBLookupComboBox6.Text,[] )=true then
ADOTable1ID_agence.Value:= ADOTable7ID_agence.value;
end;

procedure TForm14.DateTimePicker1Change(Sender: TObject);
begin
dbedit4.Text:=datetostr( DateTimePicker1.Date);
end;

procedure TForm14.DateTimePicker2Change(Sender: TObject);
begin
dbedit7.Text:= datetostr(DateTimePicker2.Date);
end;

procedure TForm14.DateTimePicker3Change(Sender: TObject);
begin
dbedit8.Text:= datetostr(DateTimePicker3.Date);
end;

procedure TForm14.Button1Click(Sender: TObject);
begin
adoquery2.Open;
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
adoquery2.Close;
end;

procedure TForm14.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TForm14.ADOTable1AfterScroll(DataSet: TDataSet);
begin
label17.Caption:=inttostr( adotable1.RecordCount);
end;

procedure TForm14.ADOTable1CalcFields(DataSet: TDataSet);
begin
//adotable1.Fields[16].AsInteger:= yearof(adotable1.Fields[8].Value)-yearof(adotable1.Fields[7].Value);
 //adotable1.Fields[17].AsFloat:= adotable1.Fields[16].Asinteger*2.5;
end;

procedure TForm14.FormShow(Sender: TObject);
begin
adoquery2.Close;
adoquery2.Prepared;
adoquery2.SQL.Add('select Ville_Agence,Num_pens,Nom_ass,Prenom_ass,sit_famil,etat_pens, DATEDIFF(YY,D_serv,F_serv)  * 2.5 as [Taux_de_pension]');
adoquery2.SQL.add ('from Assuré,Agence, sit_famil,Etat_pension');
adoquery2.Open;




 end;

procedure TForm14.DBEdit11Change(Sender: TObject);
begin
//adotable1.Fields[10].Value:= adoquery2.Fields[6].Value;
end;

end.
