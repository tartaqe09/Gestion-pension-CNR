unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, jpeg, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
adoquery1.SQL.Clear;
adoquery1.SQL.Add('select*from utilisateur where nom_utilisateur = ''' +edit1.text+''' and mot_de_passe =''' +edit2.Text+''' ');
adoquery1.Open;
 if not adoquery1.Eof then
  begin
    form3.show;
    form1.Hide;
  end
      else
  messagedlg('mot de passe incorrect',mterror,[mbok],0);
  edit2.clear;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
adoquery1.Cancel;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=true then
  begin
     edit2.PasswordChar:= #0;
  end
  else
    begin
       edit2.PasswordChar:= '*';
    end;
end;

end.
 