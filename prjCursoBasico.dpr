program prjCursoBasico;

uses
  Vcl.Forms,
  uDmDados in 'Forms\uDmDados.pas' {DataModule1: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Forms\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Forms\uFormCadastroCliente.pas' {FormCadastroCliente},
  uFormCadastroEstados in 'Forms\uFormCadastroEstados.pas' {FormCadastroEstado},
  uFormCadastroCidade in 'Forms\uFormCadastroCidade.pas' {FormCadastroCIdade},
  uLookup in 'Shared\uLookup.pas' {Lookup: TDataModule},
  uFormMain in 'Forms\uFormMain.pas' {FormMain},
  uFormFiltroPai in 'Forms\uFormFiltroPai.pas' {FormFiltroPai},
  uFormFiltroClientes in 'Forms\uFormFiltroClientes.pas' {FormFiltroCliente},
  uFormCadastroFornecedor in 'Forms\uFormCadastroFornecedor.pas' {FormCadastroFornecedor},
  uFormFiltroFornecedores in 'Forms\uFormFiltroFornecedores.pas' {FormFiltroFornecedor},
  uFormFiltroProdutos in 'Forms\uFormFiltroProdutos.pas' {FormFiltroProduto},
  uFormCadastroProdutos in 'Forms\uFormCadastroProdutos.pas' {FormCadastroPai1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TLookup, Lookup);
  Application.CreateForm(TFormCadastroPai1, FormCadastroPai1);
  Application.Run;
end.
