unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  uFormConfigBanco, uBiblioteca, Vcl.Forms, Vcl.Dialogs;

type
  TDataModule1 = class(TDataModule)
    FDCon: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CarregaBanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.CarregaBanco;
begin
  try
    FDCon.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName)+ 'config.ini', 'CONFIGURACAO', 'LOCAL_DB');
    FDCon.Connected:= true;
  except
  on Exception do
  begin
    ShowMessage('Por favor, configure o caminho do banco de dados!');
    FormConfigBanco.ShowModal;
  end;
  end;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
