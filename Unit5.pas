unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids,
  DBGrids;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox2: TGroupBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
//adotable1.insert;
end;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
//if MessageDlg('voulez vous vraiment supprimer un mot de retenu !?',mtconfirmation,[mbyes,mbno],0)=mryes then
//adotable1.delete;
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
 //ADOTable1.edit;
end;

procedure TForm5.BitBtn7Click(Sender: TObject);
begin
//ADOTable1.refresh;
//showmessage('la MAJ est faite avec succ�...')
end;

procedure TForm5.BitBtn5Click(Sender: TObject);
begin
//form4.show;
//form5.Hide;
end;

procedure TForm5.Button1Click(Sender: TObject);

begin
     { case ComboBox2.ItemIndex of
        0:A:='ID_mod_ret';
        1:A:='Desig_mod_ret';
      end;
    ADOTable1.Filter := A + '='''+edit9.Text+'''';
    ADOTable1.Filtered := true;

if ADOTable1.Fields[0].AsString = '' then
  begin
    showmessage('    introuvable ...');
    ADOTable1.Filtered := false;
  end;

edit9.Clear; }

end;

end.
