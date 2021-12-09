unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm3.Timer1Timer(Sender: TObject);
begin
{progressbar1.Position:= progressbar1.Position+1;
if progressbar1.Position=100 then
begin
form4.show;
form3.Free;
end; }
end;

end.
 