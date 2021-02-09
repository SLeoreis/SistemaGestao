unit uFormFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  uFormCadastroPai, Vcl.Grids, Vcl.DBGrids, uFormCadastroCliente;

type
  TFormFiltroCliente = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtFantasia: TEdit;
    edtCPF: TEdit;
    edtCodigo: TEdit;
    btnNovo: TButton;
    btnVisualizar: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
  procedure Filtrar;
  procedure ValidaQueryVazia;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormFiltroCliente: TFormFiltroCliente;

implementation

{$R *.dfm}

{ TFormFiltroCliente }

procedure TFormFiltroCliente.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroCliente := TFormCadastroCliente.Create(self);
  try
    FormCadastroCliente.fdQryCadastro.Insert;
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormFiltroCliente.btnVisualizarClick(Sender: TObject);
begin
  inherited;
    ValidaQueryVazia;
    FormCadastroCliente := TFormCadastroCliente.Create(self);
  try
    FormCadastroCliente.fdQryCadastro.Locate('ID_CLIENTE', fdQryFiltro.FieldByName('ID_CLIENTE').AsInteger, []);
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormFiltroCliente.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TFormFiltroCliente.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM CLIENTE');
  fdQryFiltro.SQL.Add('WHERE 1 = 1');

  if Trim(edtFIltro.Text) <> '' then begin
    fdQryFiltro.SQL.Add(' AND UPPER (TRIM( RAZAO_SOCIAL)) LIKE' +QuotedStr('%'+ UpperCase(Trim(edtFIltro.Text))+ '%') );
  end;

  if Trim(edtFantasia.Text) <> '' then begin
    fdQryFiltro.SQL.Add(' AND UPPER (TRIM( FANTASIA)) LIKE' + QuotedStr('%' + UpperCase(Trim(edtFantasia.Text))+ '%'));
  end;

  if Trim(edtCPF.Text) <> '' then begin
    fdQryFiltro.SQL.Add(' AND UPPER (TRIM( REPLACE( REPLACE( REPLACE( CPF_CNPJ, ''.'', ''''), ''-'',''''), ''/'', '''') ) ) LIKE ' +QuotedStr('%' + UpperCase(Trim(edtCPF.Text))+ '%'));
  end;

  if StrToIntDef(edtCodigo.Text, 0) > 0 then begin
    fdQryFiltro.SQL.Add(' AND ID_CLIENTE = ' + edtCodigo.Text);
  end;

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;


end;

procedure TFormFiltroCliente.ValidaQueryVazia;
begin
  if fdQryFiltro.IsEmpty then begin
    ShowMessage('Pesquise um Cliente ');
    Abort;
  end;
end;

end.
