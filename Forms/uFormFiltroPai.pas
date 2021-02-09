unit uFormFiltroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDmDados;

type
  TFormFiltroPai = class(TForm)
    Panel1: TPanel;
    edtFIltro: TEdit;
    Label1: TLabel;
    btnFiltro: TButton;
    fdQryFiltro: TFDQuery;
    dsFiltro: TDataSource;
    FDTransaction: TFDTransaction;
    btnSairFiltro: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroPai: TFormFiltroPai;

implementation

{$R *.dfm}

procedure TFormFiltroPai.btnSairFiltroClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormFiltroPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
