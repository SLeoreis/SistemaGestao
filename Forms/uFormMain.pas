unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, uFormCadastroCidade, uFormCadastroCliente,
  uFormCadastroEstados, AdvGlowButton, uFormFiltroClientes,
  uFormCadastroFornecedor, uFormFiltroFornecedores, uFormFiltroProdutos;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    btnFornecedores: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    btnFiltroCliente: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    btnFiltrarProdutos: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    btnFiltrarClientes: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    AdvGlowButton2: TAdvGlowButton;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    btnCadastroProdutos: TAdvGlowButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnFiltrarClientesClick(Sender: TObject);
    procedure btnFiltrarFornecedoresClick(Sender: TObject);
    procedure btnFiltrarProdutosClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}


procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin
  FormCadastroEstado := TFormCadastroEstado.Create(self);
  try
    FormCadastroEstado.ShowModal;
  finally
    FreeAndNil(FormCadastroEstado);
  end;
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
  FormCadastroCIdade := TFormCadastroCIdade.Create(self);
  try
    FormCadastroCIdade.ShowModal;
  finally
    FreeAndNil(FormCadastroCIdade);
  end;

end;

procedure TFormMain.AdvGlowButton4Click(Sender: TObject);
begin
  FormCadastroCliente := TFormCadastroCliente.Create(self);
  try
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
  end;

procedure TFormMain.btnFiltrarClientesClick(Sender: TObject);
begin
  try
    FormFiltroCliente := TFormFiltroCliente.Create(self);
    FormFiltroCliente.Show;
  finally

  end;
end;

procedure TFormMain.btnFiltrarFornecedoresClick(Sender: TObject);
begin
  try
    FormFiltroFornecedor := TFormFiltroFornecedor.Create(self);
    FormFiltroFornecedor.Show;
  finally

  end;
end;

procedure TFormMain.btnFiltrarProdutosClick(Sender: TObject);
begin
  try
    FormFiltroProduto := TFormFiltroProduto.Create(self);
    FormFiltroProduto.Show;
  finally

  end;
end;

procedure TFormMain.btnFornecedoresClick(Sender: TObject);
begin
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(self);
  try
    FormCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedor);
  end;
end;

end.
