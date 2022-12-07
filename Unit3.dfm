object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1052#1086#1073#1080#1083#1100#1085#1099#1077' '#1087#1086#1095#1090#1086#1074#1086'-'#1082#1072#1089#1089#1086#1074#1099#1077' '#1090#1077#1088#1084#1080#1085#1072#1083#1099
  ClientHeight = 461
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 770
    Height = 236
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076'_'#1082#1072#1089#1089#1099
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081'_'#1085#1086#1084#1077#1088
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1077#1088#1080#1081#1085#1099#1081'_'#1085#1086#1084#1077#1088
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072'_'#1074#1099#1087#1091#1089#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1085#1076#1077#1082#1089'_'#1086#1090#1076#1077#1083#1077#1085#1080#1103
        Width = 64
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 25
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 0
      Top = 5
      Width = 35
      Height = 23
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = #1055#1086#1080#1089#1082
      ParentBiDiMode = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 3
      Width = 697
      Height = 22
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBEdit1: TDBEdit
    Left = 360
    Top = 200
    Width = 121
    Height = 23
    DataField = #1050#1086#1076'_'#1082#1072#1089#1089#1099
    DataSource = DataSource1
    TabOrder = 2
    Visible = False
    OnChange = DBEdit1Change
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 261
    Width = 770
    Height = 200
    Align = alBottom
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076'_'#1090#1077#1088#1084#1080#1085#1072#1083#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081'_'#1085#1086#1084#1077#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1077#1088#1080#1081#1085#1099#1081'_'#1085#1086#1084#1077#1088
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072'_'#1074#1099#1087#1091#1089#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1085#1076#1077#1082#1089'_'#1086#1090#1076#1077#1083#1077#1085#1080#1103
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Vladislav\' +
      'Desktop\'#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' '#1087#1088#1072#1082#1090#1080#1082#1072' 2022\'#1087#1088#1086#1080#1079#1074#1086#1076#1089#1090#1074#1077#1085#1085#1072#1103' '#1087#1088#1072#1082#1090#1080#1082#1072 +
      '.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 216
    Top = 280
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 312
    Top = 280
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1050#1072#1089#1089#1099)
    Left = 408
    Top = 280
  end
  object MainMenu1: TMainMenu
    Left = 488
    Top = 280
    object N1: TMenuItem
      Caption = #1047#1072#1087#1080#1089#1100
      object N3: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N5Click
      end
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#1058#1077#1088#1084#1080#1085#1072#1083#1099' ')
    Left = 376
    Top = 352
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 280
    Top = 360
  end
end
