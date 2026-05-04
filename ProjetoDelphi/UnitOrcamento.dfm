object frmOrcamento: TfrmOrcamento
  Left = 0
  Top = 0
  Caption = 'frmOrcamento'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 60
    Align = alTop
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 0
      Top = 8
      Width = 320
      Height = 32
      Caption = 'Defini'#231#227'o de Metas Mensais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cboMes: TComboBox
    Left = 334
    Top = 19
    Width = 282
    Height = 23
    TabOrder = 1
    Items.Strings = (
      'Janeiro 2026')
  end
  object pnlInput: TPanel
    Left = 0
    Top = 60
    Width = 624
    Height = 80
    Align = alTop
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 2
    object lblCategoria: TLabel
      Left = 16
      Top = 19
      Width = 51
      Height = 15
      Caption = 'Categoria'
    end
    object lblMet: TLabel
      Left = 256
      Top = 19
      Width = 51
      Height = 15
      Caption = 'Meta (R$)'
    end
    object cboCategoria: TComboBox
      Left = 16
      Top = 40
      Width = 177
      Height = 23
      TabOrder = 0
      Items.Strings = (
        'Sa'#250'de'
        'Alimenta'#231#227'o'
        'Transporte'
        'Lazer')
    end
    object edtValorMeta: TEdit
      Left = 256
      Top = 40
      Width = 185
      Height = 23
      Alignment = taRightJustify
      TabOrder = 1
      TextHint = '0,00'
    end
    object btnDefinir: TButton
      Left = 480
      Top = 40
      Width = 136
      Height = 25
      Caption = 'Definir Meta'
      TabOrder = 2
      OnClick = btnDefinirClick
    end
  end
  object scrollBoxMetas: TScrollBox
    Left = 0
    Top = 140
    Width = 624
    Height = 301
    Align = alClient
    TabOrder = 3
  end
end
