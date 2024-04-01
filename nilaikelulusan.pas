unit nilaiKelulusan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    edtNama: TEdit;
    edtNilai: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    grade: TLabel;
    status: TLabel;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);

  private
    Nilai: Double;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    Nilai := StrToFloat(edtNilai.Text);

    if Nilai >= 70 then
    begin
      status.Caption := 'Lulus';
      status.Font.Color := clLime;
    end
    else
    begin
      status.Caption := 'Tidak Lulus';
      status.Font.Color := clRed;
    end;

    if Nilai >= 85 then
    begin
      grade.Caption := 'A';
      grade.Font.Color := clLime;
    end
    else if Nilai >= 75 then
    begin
      grade.Caption := 'B';
      grade.Font.Color := clLime;
    end
    else if Nilai >= 60 then
    begin
      grade.Caption := 'C';
      grade.Font.Color := clYellow;
    end
    else if Nilai >= 45 then
    begin
      grade.Caption := 'D';
      grade.Font.Color := clYellow;
    end
    else if Nilai > 0 then
    begin
      grade.Caption := 'E';
      grade.Font.Color := clRed;
    end;
end;
end.

