unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, DBCtrls, ADODB, StdCtrls, Buttons, Grids,
  DBGrids, DB, ExtCtrls;

type
  TForm15 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOTable2Num_TP: TIntegerField;
    ADOTable2ID_ass: TIntegerField;
    ADOTable2Date_D: TWideStringField;
    ADOTable2Date_F: TWideStringField;
    GroupBox2: TGroupBox;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    ADOTable3ID_ass: TAutoIncField;
    ADOTable3Num_pens: TStringField;
    ADOTable3Nom_ass: TStringField;
    ADOTable3Prenom_ass: TStringField;
    ADOTable3Date_naiss_ass: TWideStringField;
    ADOTable3Adrs_ass: TStringField;
    ADOTable3Num_Tel: TIntegerField;
    ADOTable3D_serv: TWideStringField;
    ADOTable3F_serv: TWideStringField;
    ADOTable3ID_sit_fami: TIntegerField;
    ADOTable3ID_regime: TIntegerField;
    ADOTable3ID_etat_pens: TIntegerField;
    ADOTable3ID_groupe: TIntegerField;
    ADOTable3ID_avt: TIntegerField;
    ADOTable3ID_agence: TIntegerField;
    DBGrid1: TDBGrid;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ADOTable1ID_agence: TAutoIncField;
    ADOTable1Nom_agence: TStringField;
    ADOTable1ville_agence: TStringField;
    ADOTable1Cod_postal: TIntegerField;
    Label8: TLabel;
    ADOTable4: TADOTable;
    ADOTable4ID_Type_TP: TAutoIncField;
    ADOTable4Type_TP: TStringField;
    DataSource6: TDataSource;
    DataSource5: TDataSource;
    ADOTable5: TADOTable;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit4: TEdit;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOTable5Date_TP: TWideStringField;
    ADOTable5ID_etat_TP: TIntegerField;
    ADOTable5ID_Type_TP: TIntegerField;
    ADOTable5ID_FV: TIntegerField;
    DataSource7: TDataSource;
    ADOTable6: TADOTable;
    ADOTable7: TADOTable;
    ADOTable9: TADOTable;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery2Taux_de_pension: TBCDField;
    DataSource8: TDataSource;
    ADOTable7ID_FV: TAutoIncField;
    ADOTable7Mois: TStringField;
    ADOTable7Annee: TIntegerField;
    ADOTable7Mod_TP: TStringField;
    ADOTable6Num_TP: TIntegerField;
    ADOTable6ID_ass: TIntegerField;
    ADOTable6Date_D: TWideStringField;
    ADOTable6Date_F: TWideStringField;
    ADOTable5Num_TP: TAutoIncField;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    ADOQuery3: TADOQuery;
    DataSource9: TDataSource;
    ADOQuery3Num_TP: TAutoIncField;
    ADOQuery3Date_TP: TWideStringField;
    ADOQuery3ville_agence: TStringField;
    ADOQuery3Num_pens: TStringField;
    ADOQuery3Nom_ass: TStringField;
    ADOQuery3Prenom_ass: TStringField;
    ADOQuery3Type_TP: TStringField;
    ADOQuery3Mont_TP: TFloatField;
    ADOQuery2num_pens: TStringField;
    ADOQuery3to: TFloatField;
    ADOQuery3sit_famil: TStringField;
    ADOQuery4: TADOQuery;
    BCDField1: TBCDField;
    StringField1: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ADOQuery3CalcFields(DataSet: TDataSet);
    //procedure Panel2Click(Sender: TObject);
    //procedure Button1Click(Sender: TObject);

   // procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;
  T:Real;

implementation

uses Unit4, Unit14;

{$R *.dfm}

procedure TForm15.BitBtn1Click(Sender: TObject);

begin
adoquery1.Close;
    adoquery1.Prepared;
   adoquery1.Parameters.ParamByName('Num').Value:= edit1.Text;
   adoquery1.Open;
   if adoquery1.Fields[0].asstring <>'' then
   begin
    edit2.Text:=  adoquery1.Fields[0].AsString;
    edit3.Text:= adoquery1.Fields[1].AsString;;
    edit4.Text:= adoquery1.Fields[2].AsString;

    adoquery4.Close;
    adoquery4.Prepared;
   adoquery4.Parameters.ParamByName('n').Value:=edit1.Text;
   adoquery4.Open;
    T:=ADOQuery2.Fields[0].AsFloat;
    end
    else
    begin
      showmessage('le numero n''existe pas !');
     if MessageDlg('voulez vous vraiment creer un nouveau assuré!?',mtconfirmation,[mbyes,mbno],0)=mryes then

     form14.show;

end;
end;


procedure TForm15.DateTimePicker1Change(Sender: TObject);
begin
dbedit3.Text:=datetostr( DateTimePicker1.Date);
end;

procedure TForm15.Button1Click(Sender: TObject);
begin
ADOTable5.Insert;
ADOTable7.Insert;
ADOTable9.Insert;
end;

procedure TForm15.Button2Click(Sender: TObject);
var m,a,code:string;
test:Boolean;


begin
test:=false;
m:=FormatDateTime('mmmm',now);
a:=FormatDateTime('yyyy',now);
ADOTable7.First;
while not(ADOTable7.Eof)do
begin
if (ADOTable7.Fields[1].AsString=m) and  (ADOTable7.Fields[2].AsString=a)then
begin
test:=true;
code:=ADOTable7.Fields[0].AsString;
break;
end;
ADOTable7.Next;
end;

if test=false then
begin
ADOTable7.Insert;
ADOTable7.Fields[1].Value:=FormatDateTime('mmmm',now);
ADOTable7.Fields[2].Value:=FormatDateTime('yyyy',now);
ADOTable7.Fields[3].AsString:='normal';
ADOTable7.Post;
ADOTable7.Last;
code:=ADOTable7.Fields[0].AsString;
end;

ADOTable5.Insert;
ADOTable5.Fields[0].Value:=DateToStr(DateTimePicker1.Date);
if (t=75) or (t=45)or (t=37.5)then
ADOTable5.Fields[1].AsString:='1'
else
ADOTable5.Fields[1].AsString:='2';
ADOTable9.Locate('type_tp',DBLookupComboBox1.Text,[]);
ADOTable5.Fields[2].AsString:=ADOTable9.Fields[0].AsString;
ADOTable5.Fields[3].AsString:=code;
ADOTable5.post;
ADOTable3.Locate('num_pens',edit1.Text,[]);
//insertion table avoir2
ADOTable6.Insert;
ADOTable5.last;
ADOTable6.Fields[0].AsString:=ADOTable5.Fields[4].AsString;
ADOTable6.Fields[1].AsString:=ADOTable3.Fields[0].AsString;
ADOTable6.Fields[2].AsString:=DateToStr(DateTimePicker1.Date);
ADOTable6.post;

ShowMessage('ok');
end;

procedure TForm15.ADOQuery3CalcFields(DataSet: TDataSet);
begin
if ADOQuery3sit_famil.Value='Marié (e)' then
ADOQuery3.Fields[9].AsFloat:=((ADOQuery3.Fields[8].AsFloat*24300)+2500)-((ADOQuery3.Fields[8].AsFloat*24300)*0.02)
else
ADOQuery3.Fields[9].AsFloat:=((ADOQuery3.Fields[8].AsFloat*24300))-((ADOQuery3.Fields[8].AsFloat*24300)*0.02);
end;

end.
