unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var f:textfile;
    slovo,maxslovo:string;
    dlzka,maxdlzka:integer;
begin
  assignfile(f,'slova.txt');
  reset(f);
  maxdlzka:=0;
  maxslovo:='';
  while not eof(f) do
  begin
  readln(f,slovo);
  dlzka:=length(slovo);
  if dlzka>maxdlzka then
     begin
     maxslovo:=slovo;
     maxdlzka:=dlzka;
     end;
  end;
  closefile(f);
  showmessage('Najdlhsie slovo v subore je '+ (maxslovo)+' a má '+intTOstr(maxdlzka)+' znakov.')

end;

end.

