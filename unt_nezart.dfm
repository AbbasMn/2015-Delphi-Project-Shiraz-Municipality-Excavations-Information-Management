object frm_nezart: Tfrm_nezart
  Left = 18
  Top = 119
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1606#1592#1575#1585#1578' '#1581#1601#1575#1585#1610
  ClientHeight = 639
  ClientWidth = 1156
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1156
    639)
  PixelsPerInch = 96
  TextHeight = 14
  object Label3: TLabel
    Left = 586
    Top = 14
    Width = 126
    Height = 14
    Anchors = [akTop, akRight]
    Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1581#1601#1575#1585#1610':'
  end
  object l_code: TLabel
    Left = 311
    Top = 16
    Width = 36
    Height = 14
    Caption = 'l_code'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 752
    Top = 3
    Width = 381
    Height = 535
    Anchors = [akTop, akRight]
    Caption = #1601#1585#1605' '#1606#1592#1575#1585#1578
    TabOrder = 0
    DesignSize = (
      381
      535)
    object Label4: TLabel
      Left = 242
      Top = 218
      Width = 125
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1608#1590#1593#1610#1578' '#1576#1575#1586#1587#1575#1586#1610' '#1608' '#1605#1585#1605#1578':'
    end
    object Label1: TLabel
      Left = 246
      Top = 357
      Width = 100
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1608#1575#1581#1583' '#1705#1606#1578#1585#1604' '#1608' '#1606#1592#1575#1585#1578':'
    end
    object Label2: TLabel
      Left = 246
      Top = 398
      Width = 62
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588#1582#1589' '#1606#1575#1592#1585':'
    end
    object Label8: TLabel
      Left = 246
      Top = 450
      Width = 59
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1606#1592#1575#1585#1578':'
    end
    object Label10: TLabel
      Left = 192
      Top = 450
      Width = 5
      Height = 14
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label11: TLabel
      Left = 158
      Top = 450
      Width = 5
      Height = 14
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object l_shomare_darkhast: TDBText
      Left = 5
      Top = 14
      Width = 146
      Height = 17
      Alignment = taCenter
      DataField = 'Nezarat_Shomare_darkhast'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 154
      Top = 15
      Width = 218
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1585#1575#1610' '#1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1581#1601#1575#1585#1610':'
    end
    object ch_zayeat: TCheckBox
      Left = 232
      Top = 34
      Width = 134
      Height = 24
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1570#1608#1585#1610' '#1590#1575#1610#1593#1575#1578
      TabOrder = 0
    end
    object ch_makhlot: TCheckBox
      Left = 269
      Top = 85
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1605#1582#1604#1608#1591' '#1585#1610#1586#1610
      TabOrder = 2
    end
    object ch_ghargab: TCheckBox
      Left = 269
      Top = 110
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1594#1585#1602#1575#1576
      TabOrder = 3
    end
    object ch_payan_hafari: TCheckBox
      Left = 248
      Top = 59
      Width = 118
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1662#1575#1610#1575#1606' '#1593#1605#1604#1610#1575#1578' '#1581#1601#1575#1585#1610
      TabOrder = 1
    end
    object ch_tarakom: TCheckBox
      Left = 269
      Top = 136
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1578#1585#1575#1705#1605' '#1608' '#1705#1605#1662#1705#1578
      TabOrder = 4
    end
    object ch_ghir: TCheckBox
      Left = 269
      Top = 161
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1602#1610#1585' '#1662#1575#1588#1610
      TabOrder = 5
    end
    object ch_asfalt: TCheckBox
      Left = 269
      Top = 187
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1570#1587#1601#1575#1604#1578
      TabOrder = 6
    end
    object mem_Vasiate_Bazsazi: TMemo
      Left = 19
      Top = 218
      Width = 201
      Height = 126
      Anchors = [akTop, akRight]
      TabOrder = 7
    end
    object edt_Vahed_Control: TEdit
      Left = 23
      Top = 353
      Width = 201
      Height = 22
      Anchors = [akTop, akRight]
      TabOrder = 8
    end
    object cmbo_Nazer: TComboBox
      Left = 19
      Top = 397
      Width = 204
      Height = 22
      Style = csDropDownList
      Anchors = [akTop, akRight]
      ItemHeight = 14
      ItemIndex = 0
      TabOrder = 9
      Text = #1605#1581#1605#1583' '#1583#1575#1606#1588#1605#1606#1583#1610#1575#1606
      Items.Strings = (
        #1605#1581#1605#1583' '#1583#1575#1606#1588#1605#1606#1583#1610#1575#1606
        #1593#1604#1610' '#1583#1607#1602#1575#1606)
    end
    object edt_tarikh_roz: TEdit
      Left = 198
      Top = 446
      Width = 29
      Height = 22
      Anchors = [akTop, akRight]
      MaxLength = 2
      TabOrder = 10
      OnKeyPress = edt_tarikh_rozKeyPress
    end
    object edt_tarikh_mah: TEdit
      Left = 164
      Top = 446
      Width = 29
      Height = 22
      Anchors = [akTop, akRight]
      MaxLength = 2
      TabOrder = 11
      OnKeyPress = edt_tarikh_mahKeyPress
    end
    object edt_tarikh_sal: TEdit
      Left = 104
      Top = 446
      Width = 52
      Height = 22
      Anchors = [akTop, akRight]
      MaxLength = 4
      TabOrder = 12
      OnKeyPress = edt_tarikh_salKeyPress
    end
    object Button1: TButton
      Left = 19
      Top = 494
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607
      TabOrder = 13
      OnClick = Button1Click
    end
  end
  object edt_shomare_darkhast_hafari: TEdit
    Left = 391
    Top = 10
    Width = 158
    Height = 22
    Anchors = [akTop, akRight]
    MaxLength = 15
    TabOrder = 1
    OnChange = edt_shomare_darkhast_hafariChange
    OnKeyPress = edt_shomare_darkhast_hafariKeyPress
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 1
    Top = 43
    Width = 745
    Height = 592
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource1
    FixedColor = clMenu
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UIStyle = DeepBlue
    BorderColor = clBlack
    FocusedColor = clNavy
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clBlack
    FixedBGColor = clMenu
    BGColor = clBtnFace
    Columns = <
      item
        Expanded = False
        FieldName = 'Nezarat_Shomare_darkhast'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1581#1601#1575#1585#1610
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nezarat_Tarikh'
        Title.Caption = #1578#1575#1585#1610#1582' '#1606#1592#1575#1585#1578
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Zayeat'
        Title.Caption = #1580#1605#1593' '#1570#1608#1585#1610' '#1590#1575#1610#1593#1575#1578
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Payane_Hafari'
        Title.Caption = #1662#1575#1610#1575#1606' '#1593#1605#1604#1610#1575#1578' '#1581#1601#1575#1585#1610
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Makhlote_Rizi'
        Title.Caption = #1605#1582#1604#1608#1591' '#1585#1610#1586#1610
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Ghargh_Abi'
        Title.Caption = #1594#1585#1602#1575#1576
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Tarakom_Kamiat'
        Title.Caption = #1578#1585#1575#1705#1605' '#1608' '#1705#1605#1662#1705#1578
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Ghir_Pashi'
        Title.Caption = #1602#1610#1585' '#1662#1575#1588#1610
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Asfalt'
        Title.Caption = #1570#1587#1601#1575#1604#1578
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Vahede_Nezarat'
        Title.Caption = #1608#1575#1581#1583' '#1705#1606#1578#1585#1604' '#1608' '#1606#1592#1575#1585#1578':'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nezarat_Shakhse_Control_Konande'
        Title.Caption = #1588#1582#1589' '#1606#1575#1592#1585
        Width = 100
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = maduDB.ADOQuery_nezarat
    Left = 135
    Top = 144
  end
end
