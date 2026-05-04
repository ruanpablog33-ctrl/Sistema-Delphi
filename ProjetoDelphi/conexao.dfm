object DataModule1: TDataModule1
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object conexao: TFDConnection
    Params.Strings = (
      'Database=simulador_financas'
      'User_Name=root'
      'Server=localhost'
      'Port=3307'
      'DriverID=MySQL')
    Connected = True
    Left = 64
    Top = 72
  end
  object Login: TFDTable
    Connection = conexao
    TableName = 'simulador_financas.login'
    Left = 168
    Top = 72
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\xampp\mysql\bin\LIBMYSQL.DLL'
    Left = 64
    Top = 128
  end
  object DSlogin: TDataSource
    DataSet = Login
    Left = 280
    Top = 72
  end
  object Conta: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'simulador_financas.conta'
    Left = 168
    Top = 128
  end
  object Cadastro: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'simulador_financas.cadastro'
    Left = 168
    Top = 184
  end
  object DSconta: TDataSource
    DataSet = Conta
    Left = 280
    Top = 128
  end
  object DScadastro: TDataSource
    DataSet = Cadastro
    Left = 280
    Top = 184
  end
  object Meta: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'simulador_financas.meta'
    Left = 168
    Top = 240
  end
  object DSmeta: TDataSource
    DataSet = Meta
    Left = 280
    Top = 240
  end
  object Transacoes: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'simulador_financas.transacoes'
    Left = 168
    Top = 296
  end
  object DStransacoes: TDataSource
    DataSet = Meta
    Left = 280
    Top = 296
  end
  object Transacoes_conta: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'transacoes_conta_movimentacao'
    Left = 168
    Top = 352
  end
  object DStransacoes_conta: TDataSource
    DataSet = Transacoes_conta
    Left = 280
    Top = 352
  end
  object Usuario: TFDTable
    Connection = conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'simulador_financas.usuario'
    Left = 168
    Top = 408
  end
  object DSusuario: TDataSource
    DataSet = Usuario
    Left = 280
    Top = 408
  end
end
