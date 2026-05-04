unit conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    conexao: TFDConnection;
    Login: TFDTable;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DSlogin: TDataSource;
    Conta: TFDTable;
    Cadastro: TFDTable;
    DSconta: TDataSource;
    DScadastro: TDataSource;
    Meta: TFDTable;
    DSmeta: TDataSource;
    Transacoes: TFDTable;
    DStransacoes: TDataSource;
    Transacoes_conta: TFDTable;
    DStransacoes_conta: TDataSource;
    Usuario: TFDTable;
    DSusuario: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFrm_Principal_Simulador_Financas;

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  conexao.Connected:=true;
  Login.Open;
  Conta.Open;
  Cadastro.Open;
  Meta.Open;
  Transacoes.Open;
  Transacoes_conta.Open;
  Usuario.Open;
end;

end.
