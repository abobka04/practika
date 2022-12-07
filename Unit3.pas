unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    DBGrid2: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure TForm3.DBEdit1Change(Sender: TObject);
var h1, h2:string;
begin
       h1:=''+Form3.DBEdit1.Text;
    h2:=QuotedStr(h1);
    with Form3.ADOQuery2 do

    begin
      Close;
      SQL.Clear;
      SQL.add('select * from Терминалы where Код_терминала like'+h2+'order by Инвентарный_номер');
      Open;
    end;
     
end;

procedure TForm3.Edit1Change(Sender: TObject);
var help1, help2:string;
begin
   help1:='%'+Form3.Edit1.Text+'%';
   help2:=QuotedStr(help1);
   with Form3.ADOQuery1 do
   begin
     close;
     SQL.Clear;
     SQL.Add('select * from Кассы where Код_кассы like'+help2+' or Инвентарный_номер like'+help2+' or Наименование like'+help2+'or Серийный_номер like'+help2+' or Дата_выпуска like'+help2+' or Индекс_отделения like'+help2+' order by Код_кассы');
     Open;

   end;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
  Form3.ADOQuery1.Append;
  Form1.Show;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TForm3.N5Click(Sender: TObject);
begin
                Form2.Show;
end;

end.
