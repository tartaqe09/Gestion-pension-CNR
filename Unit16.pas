unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TForm16 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    ComboBox2: TComboBox;
    ADOQuery1Num_TP: TAutoIncField;
    ADOQuery1ville_agence: TStringField;
    ADOQuery1Num_pens: TStringField;
    ADOQuery1Nom_ass: TStringField;
    ADOQuery1Prenom_ass: TStringField;
    ADOQuery1sit_famil: TStringField;
    ADOQuery1Date_TP: TWideStringField;
    ADOQuery1Type_TP: TStringField;
    ADOQuery2: TADOQuery;
    ADOQuery1T_p: TFloatField;
    ADOConnection1: TADOConnection;
    ADOQuery1mont_t: TFloatField;
    ADOQuery1Mod_TP: TStringField;
    ADOQuery1Mois: TStringField;
    ADOQuery1Annee: TIntegerField;
    Button2: TButton;
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit15;

{$R *.dfm}

procedure TForm16.ADOQuery1CalcFields(DataSet: TDataSet);
begin
if ADOQuery1sit_famil.Value='Marié (e)' then
ADOQuery1.Fields[9].AsFloat:=((ADOQuery1.Fields[8].AsFloat*24300)+2500)-((ADOQuery1.Fields[8].AsFloat*24300)*0.02)
else
ADOQuery1.Fields[9].AsFloat:=((ADOQuery1.Fields[8].AsFloat*24300))-((ADOQuery1.Fields[8].AsFloat*24300)*0.02);
end;

procedure TForm16.Button1Click(Sender: TObject);
begin
ADOQuery1.Filtered:=false;
end;

procedure TForm16.Button2Click(Sender: TObject);
begin
ADOQuery1.Filter:='Annee='+QuotedStr(edit1.text)+'and Mois='+QuotedStr(ComboBox1.text)+'and mod_tp='+QuotedStr(ComboBox2.text);
ADOQuery1.Filtered:=true;
end;

end.
