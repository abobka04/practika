unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;



implementation

{$R *.dfm}

uses Unit3;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.ADOQuery1.Delete;
Form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

end.
