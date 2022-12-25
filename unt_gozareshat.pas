unit unt_gozareshat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls;

type
  Tfrm_gozareshat = class(TForm)
    GroupBox4: TGroupBox;
    RadioGroup1: TRadioGroup;
    grp_tarikh: TGroupBox;
    Label8: TLabel;
    edt_tarikh_roz: TEdit;
    Label10: TLabel;
    edt_tarikh_mah: TEdit;
    Label11: TLabel;
    edt_tarikh_sal: TEdit;
    Button1: TButton;
    DataSourcetarikh_sabt: TDataSource;
    grp_mantaghe: TGroupBox;
    Label1: TLabel;
    cmb_mantage: TComboBox;
    GroupBox_sherkat_hafar: TGroupBox;
    Label7: TLabel;
    cmb_sherkathafar: TComboBox;
    suiDBGrid_tarikh: TsuiDBGrid;
    Button2: TButton;
    GroupBoxSal: TGroupBox;
    Label2: TLabel;
    CmbSal: TComboBox;
    Button3: TButton;

    procedure show_tarikh(tarikh:string;type_:string);
    procedure show_mantaghe;
    procedure Button1Click(Sender: TObject);
    procedure search_type;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_mantageChange(Sender: TObject);
    procedure show_sherkat_hafar;
    procedure Button2Click(Sender: TObject);
    procedure show_sal();
    procedure cmb_sherkathafarChange(Sender: TObject);
    procedure CmbSalChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tarikh,type_:string;
  end;

var
  frm_gozareshat: Tfrm_gozareshat;

implementation

uses untmadulDB, ADODB, unt_Group_Tolha, unt_pint_factor_roz;

{$R *.dfm}
procedure Tfrm_gozareshat.show_sal();
begin
    maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:='select '+
                                               'T_Hafari.Hafari_Shomare_darkhast,'+
                                               'T_Hafari.Hafari_Khiaban,'+
                                                'T_Hafari.Hafari_Koche,'+
'T_Hafari.Hafari_Mantaghe,'+
'T_Hafari.Hafari_Tarikh_Sabt,'+
'T_Hafari.Hafari_NameSherkat,'+

'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Arz,'+

'T_Khesarat.Khesarat_Mablagh_Khesarat,'+
'T_Khesarat.Khesarat_Shoro,'+
'T_Khesarat.Khesarat_Payan,'+
'T_Khesarat.Khesarat_sherkat_hafar,T_Khesarat.Khesarat_Shomare_Mojavez_Hafari'+

'  from T_Hafari,T_Noe_Hafari,T_Khesarat where (T_Hafari.Hafari_Shomare_darkhast=T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari and T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari=T_Khesarat.Khesarat_Shomare_darkhast_Hafari) and ';


  maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:=maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text+' T_Hafari.Hafari_Tarikh_Sabt like '+QuotedStr(CmbSal.Text+'%');



    maduDB.ADOQuery_goz_tarikh_sabt.open;

end;










//////////////////
procedure Tfrm_gozareshat.show_sherkat_hafar;
begin
    maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:='select '+
                                               'T_Hafari.Hafari_Shomare_darkhast,'+
                                               'T_Hafari.Hafari_Khiaban,'+
                                                'T_Hafari.Hafari_Koche,'+
'T_Hafari.Hafari_Mantaghe,'+
'T_Hafari.Hafari_Tarikh_Sabt,'+
'T_Hafari.Hafari_NameSherkat,'+

'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Arz,'+

'T_Khesarat.Khesarat_Mablagh_Khesarat,'+
'T_Khesarat.Khesarat_Shoro,'+
'T_Khesarat.Khesarat_Payan,'+
'T_Khesarat.Khesarat_sherkat_hafar,T_Khesarat.Khesarat_Shomare_Mojavez_Hafari'+

'  from T_Hafari,T_Noe_Hafari,T_Khesarat where T_Khesarat.Khesarat_sherkat_hafar='+QuotedStr(cmb_sherkathafar.Text)+
' and (T_Hafari.Hafari_Shomare_darkhast=T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari and T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari=T_Khesarat.Khesarat_Shomare_darkhast_Hafari)';



    maduDB.ADOQuery_goz_tarikh_sabt.open;

end;

procedure Tfrm_gozareshat.show_mantaghe;
begin
    maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:='select '+
                                               'T_Hafari.Hafari_Shomare_darkhast,'+
                                               'T_Hafari.Hafari_Khiaban,'+
                                                'T_Hafari.Hafari_Koche,'+
'T_Hafari.Hafari_Mantaghe,'+
'T_Hafari.Hafari_Tarikh_Sabt,'+
'T_Hafari.Hafari_NameSherkat,'+

'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Arz,'+

'T_Khesarat.Khesarat_Mablagh_Khesarat,'+
'T_Khesarat.Khesarat_Shoro,'+
'T_Khesarat.Khesarat_Payan,'+
'T_Khesarat.Khesarat_sherkat_hafar,T_Khesarat.Khesarat_Shomare_Mojavez_Hafari'+

'  from T_Hafari,T_Noe_Hafari,T_Khesarat where T_Hafari.Hafari_Mantaghe='+QuotedStr(cmb_mantage.Text)+
' and (T_Hafari.Hafari_Shomare_darkhast=T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari and T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari=T_Khesarat.Khesarat_Shomare_darkhast_Hafari)';



    maduDB.ADOQuery_goz_tarikh_sabt.open;

end;


procedure Tfrm_gozareshat.search_type;
begin
  if (RadioGroup1.ItemIndex=0)or (RadioGroup1.ItemIndex=1)or (RadioGroup1.ItemIndex=2) then
  begin
    if (RadioGroup1.ItemIndex=0)then
      type_:='sabt'
    else
      if (RadioGroup1.ItemIndex=1)then
        type_:='shoro'
        else
          if (RadioGroup1.ItemIndex=2)then
            type_:='payan';

    tarikh:=trim(edt_tarikh_sal.Text)+'/'+trim(edt_tarikh_mah.Text)+'/'+trim(edt_tarikh_roz.Text);
    show_tarikh(tarikh,type_);
    grp_tarikh.Visible:=true;
    suiDBGrid_tarikh.Visible:=true;
    grp_mantaghe.Visible:=False;
    GroupBox_sherkat_hafar.Visible:=false;
    GroupBoxSal.Visible:=False;
  end;

  if (RadioGroup1.ItemIndex=3)then
  begin
    grp_tarikh.Visible:=false;
    grp_mantaghe.Visible:=true;
    GroupBox_sherkat_hafar.Visible:=false;
    GroupBoxSal.Visible:=False;
    show_mantaghe;    
  end;

  if (RadioGroup1.ItemIndex=4)then
  begin
    grp_tarikh.Visible:=false;
    grp_mantaghe.Visible:=false;
    GroupBox_sherkat_hafar.Visible:=true;
    GroupBoxSal.Visible:=False;
    show_sherkat_hafar;
  end;
  if (RadioGroup1.ItemIndex=6)then
  begin
    grp_tarikh.Visible:=false;
    grp_mantaghe.Visible:=false;
    GroupBox_sherkat_hafar.Visible:=False;
    GroupBoxSal.Visible:=True;
    show_sal;
  end;
end;


procedure Tfrm_gozareshat.show_tarikh(tarikh:string;type_:string);
begin
    maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:='select '+
                                               'T_Hafari.Hafari_Shomare_darkhast,'+
                                               'T_Hafari.Hafari_Khiaban,'+
                                                'T_Hafari.Hafari_Koche,'+
'T_Hafari.Hafari_Mantaghe,'+
'T_Hafari.Hafari_Tarikh_Sabt,'+
'T_Hafari.Hafari_NameSherkat,'+

'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Arz,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Tol,'+
'T_Noe_Hafari.NoeHafari_Asfalt_gadim_Arz,'+

'T_Khesarat.Khesarat_Mablagh_Khesarat,'+
'T_Khesarat.Khesarat_Shoro,'+
'T_Khesarat.Khesarat_Payan,'+
'T_Khesarat.Khesarat_sherkat_hafar,T_Khesarat.Khesarat_Shomare_Mojavez_Hafari'+

'  from T_Hafari,T_Noe_Hafari,T_Khesarat where (T_Hafari.Hafari_Shomare_darkhast=T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari and T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari=T_Khesarat.Khesarat_Shomare_darkhast_Hafari) and ';

if (type_='sabt')then
  maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:=maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text+' T_Hafari.Hafari_Tarikh_Sabt='+QuotedStr(tarikh);

if (type_='shoro')then
  maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:=maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text+' T_Khesarat.Khesarat_Shoro='+QuotedStr(tarikh);

if (type_='payan')then
  maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text:=maduDB.ADOQuery_goz_tarikh_sabt.SQL.Text+' T_Khesarat.Khesarat_Payan='+QuotedStr(tarikh);

    maduDB.ADOQuery_goz_tarikh_sabt.open;

end;


procedure Tfrm_gozareshat.Button1Click(Sender: TObject);
begin
  tarikh:=trim(edt_tarikh_sal.Text)+'/'+trim(edt_tarikh_mah.Text)+'/'+trim(edt_tarikh_roz.Text);
  show_tarikh(tarikh,type_);
end;

procedure Tfrm_gozareshat.RadioGroup1Click(Sender: TObject);
begin
  search_type;
end;

procedure Tfrm_gozareshat.FormShow(Sender: TObject);
begin
  search_type;
end;

procedure Tfrm_gozareshat.cmb_mantageChange(Sender: TObject);
begin
  show_mantaghe;
end;



procedure Tfrm_gozareshat.Button2Click(Sender: TObject);
begin
  if (GroupBoxSal.Visible) then
    frm_Group_Tolha.lblTarikh.Caption:=CmbSal.Text
  else
    frm_Group_Tolha.lblTarikh.Caption:='';

  frm_Group_Tolha.ShowModal;
end;

procedure Tfrm_gozareshat.cmb_sherkathafarChange(Sender: TObject);
begin
show_sherkat_hafar;
end;

procedure Tfrm_gozareshat.CmbSalChange(Sender: TObject);
begin
  show_sal();
end;

procedure Tfrm_gozareshat.Button3Click(Sender: TObject);
begin
  frm_pint_factor_roz.QuickRep1.Preview;
end;

end.
