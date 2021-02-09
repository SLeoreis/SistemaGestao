unit uFormFiltroFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormFiltroFornecedor = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    fdQryFiltroID_FORNECEDOR: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL: TWideStringField;
    fdQryFiltroFANTASIA: TWideStringField;
    fdQryFiltroCNPJ: TWideStringField;
    fdQryFiltroENDERECO: TWideStringField;
    fdQryFiltroBAIRRO: TWideStringField;
    fdQryFiltroID_CIDADE: TIntegerField;
    fdQryFiltroID_ESTADO: TIntegerField;
    fdQryFiltroEMAIL: TWideStringField;
    fdQryFiltroDT_EXCLUIDO: TDateField;
    Label2: TLabel;
    edtCNPJ: TEdit;
    procedure btnFiltroClick(Sender: TObject);
  private
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroFornecedor: TFormFiltroFornecedor;

implementation

{$R *.dfm}

{ TFormFiltroPai1 }

procedure TFormFiltroFornecedor.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroFornecedor.Filtrar;
begin
  fdQryFiltro.close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM FORNECEDOR');
  fdQryFiltro.SQL.Add('WHERE 1=1');
  if Trim(edtFIltro.Text) <> '' then begin
    fdQryFiltro.SQL.Add('AND UPPER (TRIM(RAZAO_SOCIAL)) LIKE ' + QuotedStr('%'+ UpperCase(Trim(edtFIltro.Text))+ '%') );
  end;

  if Trim (edtCNPJ.Text) <> '' then begin
    fdQryFiltro.SQL.Add(' AND UPPER (TRIM( REPLACE( REPLACE( REPLACE( CNPJ, ''.'', ''''), ''-'',''''), ''/'', '''') ) ) LIKE ' +QuotedStr('%' + UpperCase(Trim(edtCNPJ.Text))+ '%'));
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
