unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Image6: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5, Unit6, Unit8, Unit7, Unit10, Unit11, Unit12, Unit13, Unit9,
  Unit14, Unit15;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
Panel1.visible:=true;

end;

procedure TForm4.Button6Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm4.Button9Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
form7.show;
end;

procedure TForm4.Button11Click(Sender: TObject);
begin
form10.show;
end;

procedure TForm4.Button12Click(Sender: TObject);
begin
form11.show;
end;

procedure TForm4.Button13Click(Sender: TObject);
begin
form12.show;
end;

procedure TForm4.Button14Click(Sender: TObject);
begin
form13.show;
end;

procedure TForm4.Button10Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
form14.show;
form4.Hide;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
form15.show;
form4.Hide;
end;

end.
