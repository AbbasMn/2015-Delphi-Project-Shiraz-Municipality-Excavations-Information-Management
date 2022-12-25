unit untmadulDB;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TmaduDB = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery_noe_hafari: TADOQuery;
    ADOQuery_khesarat: TADOQuery;
    ADOQuery_nezarat: TADOQuery;
    ADOQuery_Hafari: TADOQuery;
    ADOQuery_nezarat2: TADOQuery;
    ADOQuery_nezarat3: TADOQuery;
    ADOQuery_nezaratNezarat_ID: TAutoIncField;
    ADOQuery_nezaratNezarat_Vasiate_Bazsazi: TMemoField;
    ADOQuery_nezaratNezarat_Vahede_Nezarat: TWideStringField;
    ADOQuery_nezaratNezarat_Shakhse_Control_Konande: TWideStringField;
    ADOQuery_nezaratNezarat_Shomare_darkhast: TWideStringField;
    ADOQuery_nezaratNezarat_Zayeat: TWideStringField;
    ADOQuery_nezaratNezarat_Payane_Hafari: TWideStringField;
    ADOQuery_nezaratNezarat_Makhlote_Rizi: TWideStringField;
    ADOQuery_nezaratNezarat_Ghargh_Abi: TWideStringField;
    ADOQuery_nezaratNezarat_Tarakom_Kamiat: TWideStringField;
    ADOQuery_nezaratNezarat_Ghir_Pashi: TWideStringField;
    ADOQuery_nezaratNezarat_Asfalt: TWideStringField;
    ADOQuery_nezaratNezarat_Tarikh: TWideStringField;
    ADOQuery_nezarat3Nezarat_ID: TAutoIncField;
    ADOQuery_nezarat3Nezarat_Vasiate_Bazsazi: TMemoField;
    ADOQuery_nezarat3Nezarat_Vahede_Nezarat: TWideStringField;
    ADOQuery_nezarat3Nezarat_Shakhse_Control_Konande: TWideStringField;
    ADOQuery_nezarat3Nezarat_Shomare_darkhast: TWideStringField;
    ADOQuery_nezarat3Nezarat_Zayeat: TWideStringField;
    ADOQuery_nezarat3Nezarat_Payane_Hafari: TWideStringField;
    ADOQuery_nezarat3Nezarat_Makhlote_Rizi: TWideStringField;
    ADOQuery_nezarat3Nezarat_Ghargh_Abi: TWideStringField;
    ADOQuery_nezarat3Nezarat_Tarakom_Kamiat: TWideStringField;
    ADOQuery_nezarat3Nezarat_Ghir_Pashi: TWideStringField;
    ADOQuery_nezarat3Nezarat_Asfalt: TWideStringField;
    ADOQuery_nezarat3Nezarat_Tarikh: TWideStringField;
    ADOQuery1Hafari_ID: TAutoIncField;
    ADOQuery1Hafari_Shahr: TWideStringField;
    ADOQuery1Hafari_Mantaghe: TWideStringField;
    ADOQuery1Hafari_Khiaban: TWideStringField;
    ADOQuery1Hafari_Koche: TWideStringField;
    ADOQuery1Hafari_Shomare_darkhast: TWideStringField;
    ADOQuery1Hafari_NameSherkat: TWideStringField;
    ADOQuery1Hafari_Tozihat: TMemoField;
    ADOQuery1Hafari_Tarikh_Sabt: TWideStringField;
    ADOQuery_HafariHafari_ID: TAutoIncField;
    ADOQuery_HafariHafari_Shahr: TWideStringField;
    ADOQuery_HafariHafari_Mantaghe: TWideStringField;
    ADOQuery_HafariHafari_Khiaban: TWideStringField;
    ADOQuery_HafariHafari_Koche: TWideStringField;
    ADOQuery_HafariHafari_Shomare_darkhast: TWideStringField;
    ADOQuery_HafariHafari_NameSherkat: TWideStringField;
    ADOQuery_HafariHafari_Tozihat: TMemoField;
    ADOQuery_HafariHafari_Tarikh_Sabt: TWideStringField;
    ADOQuery_goz_tarikh_sabt: TADOQuery;
    ADOQuery_noe_hafariNoeHafari_ID: TAutoIncField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_Jadid_Tol: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_Jadid_Arz: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_PiadeRo_Tol: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_PiadeRo_Arz: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_Khaki_Tol: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_Khaki_Arz: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Shomare_darkhast_Hafari: TWideStringField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_gadim_Tol: TFloatField;
    ADOQuery_noe_hafariNoeHafari_Asfalt_gadim_Arz: TFloatField;
    ADOQuery_goz_tarikh_sabtHafari_Shomare_darkhast: TWideStringField;
    ADOQuery_goz_tarikh_sabtHafari_Khiaban: TWideStringField;
    ADOQuery_goz_tarikh_sabtHafari_Koche: TWideStringField;
    ADOQuery_goz_tarikh_sabtHafari_Mantaghe: TWideStringField;
    ADOQuery_goz_tarikh_sabtHafari_Tarikh_Sabt: TWideStringField;
    ADOQuery_goz_tarikh_sabtHafari_NameSherkat: TWideStringField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_Jadid_Tol: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_Jadid_Arz: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_PiadeRo_Tol: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_PiadeRo_Arz: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_Khaki_Tol: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_Khaki_Arz: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_gadim_Tol: TFloatField;
    ADOQuery_goz_tarikh_sabtNoeHafari_Asfalt_gadim_Arz: TFloatField;
    ADOQuery_goz_tarikh_sabtKhesarat_Mablagh_Khesarat: TBCDField;
    ADOQuery_goz_tarikh_sabtKhesarat_Shoro: TWideStringField;
    ADOQuery_goz_tarikh_sabtKhesarat_Payan: TWideStringField;
    ADOQuery_goz_tarikh_sabtKhesarat_sherkat_hafar: TWideStringField;
    ADOQuery_khesaratKhesarat_ID: TAutoIncField;
    ADOQuery_khesaratKhesarat_Taeede_Aval: TWideStringField;
    ADOQuery_khesaratKhesarat_Taeede_Dovom: TWideStringField;
    ADOQuery_khesaratKhesarat_Mablagh_Khesarat: TBCDField;
    ADOQuery_khesaratKhesarat_Pardakht_Naghdi: TBCDField;
    ADOQuery_khesaratKhesarat_Pardakht_Fimabein: TBCDField;
    ADOQuery_khesaratKhesarat_Shomare_fish_Naghdi: TIntegerField;
    ADOQuery_khesaratKhesarat_Sherkate_Fimabein: TWideStringField;
    ADOQuery_khesaratKhesarat_Shomare_Mojavez_Hafari: TWideStringField;
    ADOQuery_khesaratKhesarat_Shomare_darkhast_Hafari: TWideStringField;
    ADOQuery_khesaratKhesarat_sherkat_hafar: TWideStringField;
    ADOQuery_khesaratKhesarat_Shoro: TWideStringField;
    ADOQuery_khesaratKhesarat_Payan: TWideStringField;
    ADOQuery_Merge: TADOQuery;
    ADOQuery_MergeGroup_Shomare_darkhast_Hafari: TWideStringField;
    ADOQuery_MergeGroup_Asfalt_Jadid_Tol: TFloatField;
    ADOQuery_MergeGroup_Asfalt_PiadeRo_Tol: TFloatField;
    ADOQuery_MergeGroup_Asfalt_Khaki_Tol: TFloatField;
    ADOQuery_MergeGroup_Asfalt_gadim_Tol: TFloatField;
    ADOQuery_MergeGroup_sherkat_hafar: TWideStringField;
    Group_Sherkat_Hafar_Tol_Hafari: TADOQuery;
    Group_Sherkat_Hafar_Tol_HafariGroup_sherkat_hafar: TWideStringField;
    Group_Sherkat_Hafar_Tol_HafariAsfalt_Jadid: TFloatField;
    Group_Sherkat_Hafar_Tol_HafariPiadeRo: TFloatField;
    Group_Sherkat_Hafar_Tol_HafariAsfalt_Khaki: TFloatField;
    Group_Sherkat_Hafar_Tol_HafariAsfalt_gadim: TFloatField;
    ADOQuery_goz_tarikh_sabtKhesarat_Shomare_Mojavez_Hafari: TWideStringField;
    procedure ADOQuery_nezaratAfterScroll(DataSet: TDataSet);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  maduDB: TmaduDB;

implementation

uses unt_nezart, unt_NoeHafar, untMain;

{$R *.dfm}

procedure TmaduDB.ADOQuery_nezaratAfterScroll(DataSet: TDataSet);
begin
  frm_nezart.check;
end;



procedure TmaduDB.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  if (frm_NoeHafari.Showing)then
    frm_NoeHafari.show_current_record;

  if (frm_main.Showing)then
    frm_main.show_curent_record;
end;

end.
