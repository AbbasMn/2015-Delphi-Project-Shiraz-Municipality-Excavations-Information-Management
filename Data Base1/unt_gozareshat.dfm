object frm_gozareshat: Tfrm_gozareshat
  Left = -21
  Top = 117
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588#1575#1578
  ClientHeight = 732
  ClientWidth = 1248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1248
    732)
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox4: TGroupBox
    Left = 4
    Top = 10
    Width = 1242
    Height = 158
    Anchors = [akLeft, akTop, akRight]
    Caption = '  '#1575#1606#1608#1575#1593' '#1580#1587#1578' '#1608' '#1580#1608'   '
    TabOrder = 0
    DesignSize = (
      1242
      158)
    object RadioGroup1: TRadioGroup
      Left = 959
      Top = 31
      Width = 265
      Height = 112
      Anchors = [akTop, akRight]
      Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1580#1587#1578#1580#1608'  '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1578#1575#1585#1610#1582'  '#1579#1576#1578' '#1581#1601#1575#1585#1610
        #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1581#1601#1575#1585#1610
        #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1581#1601#1575#1585#1610
        #1605#1606#1591#1602#1607
        #1588#1585#1705#1578' '#1581#1601#1575#1585
        #1606#1575#1605' '#1662#1610#1605#1575#1606#1705#1575#1585)
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object grp_tarikh: TGroupBox
      Left = 176
      Top = 31
      Width = 294
      Height = 69
      TabOrder = 1
      DesignSize = (
        294
        69)
      object Label8: TLabel
        Left = 255
        Top = 29
        Width = 31
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582':'
      end
      object Label10: TLabel
        Left = 181
        Top = 35
        Width = 5
        Height = 16
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object Label11: TLabel
        Left = 147
        Top = 35
        Width = 5
        Height = 16
        Anchors = [akTop, akRight]
        Caption = '/'
      end
      object edt_tarikh_roz: TEdit
        Left = 187
        Top = 27
        Width = 29
        Height = 24
        Anchors = [akTop, akRight]
        MaxLength = 2
        TabOrder = 0
      end
      object edt_tarikh_mah: TEdit
        Left = 153
        Top = 27
        Width = 29
        Height = 24
        Anchors = [akTop, akRight]
        MaxLength = 2
        TabOrder = 1
      end
      object edt_tarikh_sal: TEdit
        Left = 93
        Top = 27
        Width = 52
        Height = 24
        Anchors = [akTop, akRight]
        MaxLength = 4
        TabOrder = 2
      end
      object Button1: TButton
        Left = 16
        Top = 27
        Width = 41
        Height = 25
        Caption = #1606#1605#1575#1610#1588
        TabOrder = 3
        OnClick = Button1Click
      end
    end
    object grp_mantaghe: TGroupBox
      Left = 176
      Top = 31
      Width = 294
      Height = 69
      TabOrder = 2
      DesignSize = (
        294
        69)
      object Label1: TLabel
        Left = 244
        Top = 34
        Width = 40
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #1605#1606#1591#1602#1607':'
      end
      object cmb_mantage: TComboBox
        Left = 15
        Top = 30
        Width = 158
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 0
        Text = #1605#1606#1591#1602#1607'1'
        OnChange = cmb_mantageChange
        Items.Strings = (
          #1605#1606#1591#1602#1607'1'
          #1605#1606#1591#1602#1607'2'
          #1605#1606#1591#1602#1607'3'
          #1605#1606#1591#1602#1607'4'
          #1605#1606#1591#1602#1607'5'
          #1605#1606#1591#1602#1607'6'
          #1605#1606#1591#1602#1607'7'
          #1605#1606#1591#1602#1607'8'
          #1605#1606#1591#1602#1607'9')
      end
    end
    object GroupBox_sherkat_hafar: TGroupBox
      Left = 176
      Top = 31
      Width = 294
      Height = 69
      TabOrder = 3
      DesignSize = (
        294
        69)
      object Label7: TLabel
        Left = 207
        Top = 31
        Width = 70
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #1588#1585#1705#1578' '#1581#1601#1575#1585':'
      end
      object cmb_sherkathafar: TComboBox
        Left = 14
        Top = 27
        Width = 158
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 0
        Text = #1570#1576
        OnChange = cmb_sherkathafarChange
        Items.Strings = (
          #1570#1576
          #1576#1585#1602
          #1711#1575#1586
          #1601#1575#1590#1604#1575#1576
          #1605#1582#1575#1576#1585#1575#1578
          #1605#1578#1601#1585#1602#1607)
      end
    end
    object Button2: TButton
      Left = 176
      Top = 119
      Width = 293
      Height = 25
      Caption = #1605#1588#1575#1607#1583#1607' '#1580#1605#1593' '#1591#1608#1604#1607#1575#1610' '#1581#1601#1575#1585#1610' '#1607#1585' '#1588#1585#1705#1578
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object suiDBGrid_tarikh: TsuiDBGrid
    Left = 1
    Top = 173
    Width = 1245
    Height = 550
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSourcetarikh_sabt
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
    TabOrder = 1
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
        FieldName = 'Hafari_Shomare_darkhast'
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578' '#1581#1601#1575#1585#1610
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Hafari_Tarikh_Sabt'
        Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1581#1601#1575#1585#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hafari_Mantaghe'
        Title.Caption = #1605#1606#1591#1602#1607' '#1581#1601#1575#1585#1610
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Khesarat_sherkat_hafar'
        Title.Caption = #1588#1585#1705#1578' '#1581#1601#1575#1585
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Khesarat_Shoro'
        Title.Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1581#1601#1575#1585#1610
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Khesarat_Payan'
        Title.Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1581#1601#1575#1585#1610
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hafari_Khiaban'
        Title.Caption = #1582#1610#1575#1576#1575#1606
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hafari_Koche'
        Title.Caption = #1705#1608#1670#1607
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hafari_NameSherkat'
        Title.Caption = #1606#1575#1605' '#1662#1610#1605#1575#1606#1705#1575#1585
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_Jadid_Tol'
        Title.Caption = #1591#1608#1604' '#1570#1587#1601#1575#1604#1578' '#1580#1583#1610#1583
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_Jadid_Arz'
        Title.Caption = #1593#1585#1590' '#1570#1587#1601#1575#1604#1578' '#1580#1583#1610#1583
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_PiadeRo_Tol'
        Title.Caption = #1591#1608#1604' '#1662#1610#1575#1583#1607' '#1585#1608
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_PiadeRo_Arz'
        Title.Caption = #1593#1585#1590' '#1662#1610#1575#1583#1607' '#1585#1608
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_Khaki_Tol'
        Title.Caption = #1591#1608#1604' '#1582#1575#1705#1610
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_Khaki_Arz'
        Title.Caption = #1593#1585#1590' '#1582#1575#1705#1610
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_gadim_Tol'
        Title.Caption = #1591#1608#1604' '#1570#1587#1601#1575#1604#1578' '#1602#1583#1610#1605
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NoeHafari_Asfalt_gadim_Arz'
        Title.Caption = #1593#1585#1590' '#1570#1587#1601#1575#1604#1578' '#1602#1583#1610#1605
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Khesarat_Mablagh_Khesarat'
        Title.Caption = #1605#1576#1604#1594' '#1705#1604' '#1582#1587#1575#1585#1578
        Width = 85
        Visible = True
      end>
  end
  object DataSourcetarikh_sabt: TDataSource
    DataSet = maduDB.ADOQuery_goz_tarikh_sabt
    Left = 72
    Top = 208
  end
end
