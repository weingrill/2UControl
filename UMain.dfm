object FHaupt: TFHaupt
  Left = 396
  Top = 207
  Hint = 
    'right-click for port-selection'#13#10'if state remains unchanged,'#13#10'por' +
    't is either getting input or'#13#10'not available'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ToUControl'
  ClientHeight = 96
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000000000AAAAAAAA000099
    000900000000000000AAAAAAAA000090909090000000000000AA000000000090
    900990000000000000AA0000000000909090900000AAAAAAAAAA000000000099
    0009000000AAAAAAAAAA00000000000000000000000000000000000000000000
    0000000000AAAAAAAAAAAA00000000990099900000AAAAAAAAAAAA0000000090
    90990000000000000000AA000000009090009000000000000000AA0000000090
    90909000000000000000AAAAAA00009900090000000000000000AAAAAA000000
    000000000000000000000000000000000000000000AAAAAA00AAAAAAAA000099
    0099900000AAAAAA00AAAAAAAA00009090090000000000AA00AA000000000090
    90090000000000AA00AA00000000009090990000000000AAAAAA000000000099
    00090000000000AAAAAA00000000000000000000000000000000000000000000
    0000000000AAAAAA00000000000000990009000000AAAAAA0000000000000090
    90909000000000AA000000000000009090909000000000AA0000000000000090
    90909000000000AAAAAAAAAAAA00009900090000000000AAAAAAAAAAAA000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  PopupMenu = PMHaupt
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LData0: TLabel
    Left = 136
    Top = 0
    Width = 30
    Height = 13
    Hint = 'state of Data0'
    Caption = 'undef.'
  end
  object LData1: TLabel
    Left = 136
    Top = 24
    Width = 30
    Height = 13
    Hint = 'state of Data1'
    Caption = 'undef.'
  end
  object LData2: TLabel
    Left = 136
    Top = 48
    Width = 30
    Height = 13
    Hint = 'state of Data2'
    Caption = 'undef.'
  end
  object LData3: TLabel
    Left = 136
    Top = 72
    Width = 30
    Height = 13
    Hint = 'state of Data3'
    Caption = 'undef.'
  end
  object CBData0: TCheckBox
    Left = 0
    Top = 0
    Width = 129
    Height = 17
    Hint = 'set state of Data0'
    Caption = 'transfer pulse frame 1'
    TabOrder = 0
    OnClick = CBDataClick
  end
  object CBData1: TCheckBox
    Left = 0
    Top = 24
    Width = 129
    Height = 17
    Hint = 'set state of Data1'
    Caption = 'transfer pulse frame 2'
    TabOrder = 1
    OnClick = CBDataClick
  end
  object CBData2: TCheckBox
    Left = 0
    Top = 48
    Width = 129
    Height = 17
    Hint = 'set state of Data2'
    Caption = 'on chip amp enable'
    TabOrder = 2
    OnClick = CBDataClick
  end
  object CBData3: TCheckBox
    Left = 0
    Top = 72
    Width = 129
    Height = 17
    Hint = 'set state of Data3'
    Caption = 'shutter enable'
    TabOrder = 3
    OnClick = CBDataClick
  end
  object PMHaupt: TPopupMenu
    Left = 64
    Top = 16
    object Port378: TMenuItem
      Caption = 'LPT1'
      Checked = True
      GroupIndex = 1
      Hint = 'Port 378h'
      RadioItem = True
      OnClick = Port378Click
    end
    object Port278: TMenuItem
      Caption = 'LPT2'
      GroupIndex = 1
      Hint = 'Port 278h'
      RadioItem = True
      OnClick = Port278Click
    end
    object Port3BC: TMenuItem
      Caption = 'LPT3'
      GroupIndex = 1
      Hint = 'Port 3BCh'
      RadioItem = True
      OnClick = Port3BCClick
    end
  end
end
