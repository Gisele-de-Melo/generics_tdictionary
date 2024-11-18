object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Generics - TDictionary'
  ClientHeight = 266
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 144
    Top = 16
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object EditName: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EditPhone: TEdit
    Left = 144
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object BtnAddContact: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = BtnAddContactClick
  end
  object BtnShowContacts: TButton
    Left = 97
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 3
    OnClick = BtnShowContactsClick
  end
  object BtnDeleteContact: TButton
    Left = 190
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 4
    OnClick = BtnDeleteContactClick
  end
  object MemoContacts: TMemo
    Left = 8
    Top = 112
    Width = 257
    Height = 137
    TabOrder = 5
  end
end
