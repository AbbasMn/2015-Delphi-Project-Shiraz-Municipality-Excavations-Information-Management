unit unt_NoeHafar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls, DBCtrls;

type
  Tfrm_NoeHafari = class(TForm)
    GroupBox1: TGroupBox;
    l_fishvarizi: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    l_hesabfimabin: TLabel;
    cmb_taeedkonnade: TComboBox;
    cmb_nahve_pardakht: TComboBox;
    Button1: TButton;
    edt_tol_asfalt_jadid: TEdit;
    edt_fishvarizi: TEdit;
    Button2: TButton;
    ch_asfalat_jadid: TCheckBox;
    l_tol_asfalt_jadid: TLabel;
    l_arz_asfalt_jadid: TLabel;
    edt_arz_asfalt_jadid: TEdit;
    edt_arz_asfalt_gadim: TEdit;
    l_arz_asfalt_gadim: TLabel;
    edt_tol_asfalt_gadim: TEdit;
    l_tol_asfalt_gadim: TLabel;
    ch_asfalt_gadim: TCheckBox;
    ch_piade_ro: TCheckBox;
    l_tol_piade_ro: TLabel;
    edt_tol_piade_ro: TEdit;
    l_arz_piade_ro: TLabel;
    edt_arz_piade_ro: TEdit;
    l_tol_khaki: TLabel;
    edt_tol_khaki: TEdit;
    l_arz_khaki: TLabel;
    edt_arz_khaki: TEdit;
    ch_khaki: TCheckBox;
    l_tarefe_asfalt_jadid: TLabel;
    l_tarefe_asfalt_gadim: TLabel;
    l_tarefe_piade_ro: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    l_khesarat_asfalt_jadid: TLabel;
    l_khesarat_asfalt_gadim: TLabel;
    l_khesarat_piadero: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    l_kol_khesatrat: TLabel;
    cmb_sherkathafar: TComboBox;
    cmb_hesabfimabin: TComboBox;
    edt_shomare_mojavez: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Button3: TButton;
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    Label11: TLabel;
    edt_shomare_darkhast_hafari: TEdit;
    l_shomare_darkhast: TDBText;
    l_peymankar: TDBText;
    Button4: TButton;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edt_shoro_roz: TEdit;
    edt_payan_roz: TEdit;
    edt_shoro_mah: TEdit;
    edt_payan_mah: TEdit;
    edt_shoro_sal: TEdit;
    edt_payan_sal: TEdit;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure ch_asfalat_jadidClick(Sender: TObject);
    procedure ch_asfalt_gadimClick(Sender: TObject);
    procedure ch_piade_roClick(Sender: TObject);
    procedure ch_khakiClick(Sender: TObject);
    procedure edt_tol_asfalt_jadidExit(Sender: TObject);
    procedure edt_tol_asfalt_gadimExit(Sender: TObject);
    procedure edt_tol_piade_roExit(Sender: TObject);
    procedure edt_tol_khakiExit(Sender: TObject);
    procedure edt_tol_asfalt_jadidChange(Sender: TObject);
    procedure edt_arz_asfalt_jadidChange(Sender: TObject);
    procedure edt_tol_asfalt_gadimChange(Sender: TObject);
    procedure edt_arz_asfalt_gadimChange(Sender: TObject);
    procedure edt_tol_piade_roChange(Sender: TObject);
    procedure edt_arz_piade_roChange(Sender: TObject);
    function mohasebe_kol_khesarat:real;
    procedure edt_tol_asfalt_jadidKeyPress(Sender: TObject; var Key: Char);
    procedure edt_arz_asfalt_jadidKeyPress(Sender: TObject; var Key: Char);
    procedure edt_tol_asfalt_gadimKeyPress(Sender: TObject; var Key: Char);
    procedure edt_arz_asfalt_gadimKeyPress(Sender: TObject; var Key: Char);
    procedure edt_tol_piade_roKeyPress(Sender: TObject; var Key: Char);
    procedure edt_arz_piade_roKeyPress(Sender: TObject; var Key: Char);
    procedure edt_tol_khakiKeyPress(Sender: TObject; var Key: Char);
    procedure edt_arz_khakiKeyPress(Sender: TObject; var Key: Char);
    procedure cmb_nahve_pardakhtChange(Sender: TObject);
    procedure clear_form;
    procedure Button2Click(Sender: TObject);
    procedure edt_shomare_darkhast_hafariKeyPress(Sender: TObject;
      var Key: Char);
    procedure edt_shomare_darkhast_hafariChange(Sender: TObject);
    procedure insert_noe_hafari;
    procedure Button1Click(Sender: TObject);
    procedure insert_khesarat;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure show_current_record;
    procedure cmb_sherkathafarChange(Sender: TObject);
    procedure edt_shomare_mojavezKeyPress(Sender: TObject; var Key: Char);
    procedure update;
    procedure Button5Click(Sender: TObject);
    procedure cmb_hesabfimabinChange(Sender: TObject);
    procedure edt_shoro_rozExit(Sender: TObject);
    procedure edt_shoro_mahExit(Sender: TObject);
    procedure edt_shoro_salExit(Sender: TObject);
    procedure edt_payan_salExit(Sender: TObject);
    procedure edt_payan_mahExit(Sender: TObject);
    procedure edt_payan_rozExit(Sender: TObject);
    procedure edt_shoro_rozKeyPress(Sender: TObject; var Key: Char);
    procedure edt_shoro_mahKeyPress(Sender: TObject; var Key: Char);
    procedure edt_shoro_salKeyPress(Sender: TObject; var Key: Char);
    procedure edt_payan_rozKeyPress(Sender: TObject; var Key: Char);
    procedure edt_payan_mahKeyPress(Sender: TObject; var Key: Char);
    procedure edt_payan_salKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    sh_mojavez_feli:string;
  end;

var
  frm_NoeHafari: Tfrm_NoeHafari;

implementation

uses untmadulDB, unt_print_hazine_khesarat, unt_print_mojavez_hafari;

{$R *.dfm}
procedure Tfrm_NoeHafari.update;
var tarikh_pay,tarikh_sho,asf_jadid_tol,asf_jadid_arz,asf_gadim_tol,asf_gadim_arz,piade_ro_tol,piade_ro_arz,khaki_tol,khaki_arz:string;
    flag:boolean;


    sherkate_Fimabein:string;
    pardakht_Fimabein,pardakht_Naghdi,shomare_fish_Naghdi:real;
begin
  flag:=false;

  tarikh_sho:=trim(edt_shoro_sal.Text)+'/'+trim(edt_shoro_mah.Text)+'/'+trim(edt_shoro_roz.Text);
  tarikh_pay:=trim(edt_shoro_sal.Text)+'/'+trim(edt_payan_mah.Text)+'/'+trim(edt_payan_roz.Text);

  if(tarikh_sho='//')then
    tarikh_sho:='';

  if(tarikh_pay='//')then
    tarikh_pay:='';


  if (ch_asfalat_jadid.Checked)then
  begin
    asf_jadid_tol:=trim(edt_tol_asfalt_jadid.Text);
    asf_jadid_arz:=trim(edt_arz_asfalt_jadid.Text);

    if (asf_jadid_tol<>'') and (asf_jadid_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    asf_jadid_tol:='0';
    asf_jadid_arz:='0';
  end;

  if (ch_asfalt_gadim.Checked)then
  begin
    asf_gadim_tol:=trim(edt_tol_asfalt_gadim.Text);
    asf_gadim_arz:=trim(edt_arz_asfalt_gadim.Text);

    if (asf_gadim_tol<>'') and (asf_gadim_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    asf_gadim_tol:='0';
    asf_gadim_arz:='0';
  end;

  if (ch_piade_ro.Checked)then
  begin
    piade_ro_tol:=trim(edt_tol_piade_ro.Text);
    piade_ro_arz:=trim(edt_arz_piade_ro.Text);

    if (piade_ro_tol<>'')and (piade_ro_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    piade_ro_tol:='0';
    piade_ro_arz:='0';
  end;

  if (ch_khaki.Checked)then
  begin
    khaki_tol:=trim(edt_tol_khaki.Text);
    khaki_arz:=trim(edt_arz_khaki.Text);

    if (khaki_tol<>'') and (khaki_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    khaki_tol:='0';
    khaki_arz:='0';
  end;

  {maduDB.ADOQuery_noe_hafari.SQL.Text:='select * from T_Noe_Hafari where NoeHafari_Shomare_darkhast_Hafari='+QuotedStr(l_shomare_darkhast.Caption);
  maduDB.ADOQuery_noe_hafari.Open;

  if maduDB.ADOQuery_noe_hafari.RecordCount>0 then
  begin
    MessageBox(Handle,'??????? ??? ????? ???? ????? ??????? ????? ???? ??? ???','???? !',MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;}

/////////////////////////////////////////////
  if(cmb_nahve_pardakht.Text='????')then
  begin
    {if(trim(edt_fishvarizi.Text)='')then
    begin
      MessageBox(Handle,'????? ??? ???? ?? ???? ??????','???? !',MB_OK+MB_ICONEXCLAMATION);
      edt_fishvarizi.SetFocus;
      Exit;
    end; }
  end
  else
  begin

  end;

  {if(trim(edt_shomare_mojavez.Text)='')then
  begin
      MessageBox(Handle,'????? ???? ????? ?? ???? ??????','???? !',MB_OK+MB_ICONEXCLAMATION);
      edt_shomare_mojavez.SetFocus;
      Exit;
  end; }

  if(cmb_nahve_pardakht.Text='????')then
  begin
    if (l_kol_khesatrat.Caption='')then
      l_kol_khesatrat.Caption:='0';

    pardakht_Naghdi:=StrToFloat(l_kol_khesatrat.Caption);

    if (trim(edt_fishvarizi.Text)<>'') then
      shomare_fish_Naghdi:=StrToFloat(trim(edt_fishvarizi.Text))
    else
      shomare_fish_Naghdi:=0;

    pardakht_Fimabein:=0;
    sherkate_Fimabein:='';
  end
  else
  begin
    pardakht_Naghdi:=0;
    shomare_fish_Naghdi:=0;
    pardakht_Fimabein:=StrToFloat(l_kol_khesatrat.Caption);
    sherkate_Fimabein:=trim(cmb_hesabfimabin.Text);
  end;

//////////////////////////////////////////////

  edt_shomare_mojavez.Text:=trim(edt_shomare_mojavez.Text);
  if (trim(edt_shomare_mojavez.Text)<>'')and(trim(edt_shomare_mojavez.Text)<>'0')then
  begin
    maduDB.ADOQuery_khesarat.SQL.Text:='select * from T_Khesarat where Khesarat_Shomare_Mojavez_Hafari='+QuotedStr(trim(edt_shomare_mojavez.Text));
    maduDB.ADOQuery_khesarat.open;

    if (maduDB.ADOQuery_khesarat.RecordCount>0) and (sh_mojavez_feli<>edt_shomare_mojavez.Text) then
    begin
      MessageBox(Handle,'????? ???? ????? ???? ????? ??????? ????? ???? ??? ???','???? !',MB_OK+MB_ICONEXCLAMATION);
      Exit;
    end;
  end;
                                          //
  if flag then
  begin
    maduDB.ADOQuery_noe_hafari.SQL.Text:='begin tran update T_Noe_Hafari set NoeHafari_Asfalt_Jadid_Tol='+asf_jadid_tol+
                                                                             ',NoeHafari_Asfalt_Jadid_Arz='+asf_jadid_arz+
                                                                             ',NoeHafari_Asfalt_PiadeRo_Tol='+piade_ro_tol+
                                                                             ',NoeHafari_Asfalt_PiadeRo_Arz='+piade_ro_arz+
                                                                             ',NoeHafari_Asfalt_Khaki_Tol='+khaki_tol+
                                                                             ',NoeHafari_Asfalt_Khaki_Arz='+khaki_arz+
                                                                             ',NoeHafari_Asfalt_gadim_Tol='+asf_gadim_tol+
                                                                             ',NoeHafari_Asfalt_gadim_Arz='+asf_gadim_arz+
                                                                             '  where NoeHafari_Shomare_darkhast_Hafari='+QuotedStr(l_shomare_darkhast.Caption)+




                                       '  update T_Khesarat set Khesarat_Shoro='+QuotedStr(tarikh_sho)+
                                                               ',Khesarat_Payan='+QuotedStr(tarikh_pay)+
                                                               ',Khesarat_sherkat_hafar='+QuotedStr(trim(cmb_sherkathafar.Text))+
                                                               ',Khesarat_Sherkate_Fimabein='+QuotedStr(sherkate_Fimabein)+
                                                               ',Khesarat_Mablagh_Khesarat='+l_kol_khesatrat.Caption+
                                                               ',Khesarat_Pardakht_Naghdi='+FloatToStr(pardakht_Naghdi)+
                                                               ',Khesarat_Pardakht_Fimabein='+FloatToStr(pardakht_Fimabein)+
                                                               ',Khesarat_Shomare_fish_Naghdi='+FloatToStr(shomare_fish_Naghdi)+
                                                               ',Khesarat_Taeede_Aval='+QuotedStr(trim(cmb_taeedkonnade.Text))+
                                                               ',Khesarat_Shomare_Mojavez_Hafari='+QuotedStr(trim(edt_shomare_mojavez.Text))+
                                                               '    where  Khesarat_Shomare_darkhast_Hafari='+QuotedStr(l_shomare_darkhast.Caption)+
                                                               '  commit tran';




    maduDB.ADOQuery_noe_hafari.ExecSQL;


    //clear_form;
    MessageBox(Handle,'??????? ?????? ??.','???? !',MB_OK+MB_ICONINFORMATION);
  end
  else
      MessageBox(Handle,'?????? ??? ? ??? ????? ???? ???? ??? ????? ??? ??????? ???? ????','???? !',MB_OK+MB_ICONEXCLAMATION);
end;

////////////////////////////////////////////////////////


procedure Tfrm_NoeHafari.show_current_record;
var date_shoro,date_payan,roz_shoro,mah_shoro,sal_shoro,roz_payan,mah_payan,sal_payan:string;
begin

  maduDB.ADOQuery_noe_hafari.SQL.Text:='select * from T_Noe_Hafari where NoeHafari_Shomare_darkhast_Hafari='+QuotedStr(maduDB.ADOQuery1Hafari_Shomare_darkhast.AsString);
  maduDB.ADOQuery_noe_hafari.Open;

  maduDB.ADOQuery_khesarat.SQL.Text:='select * from T_Khesarat where Khesarat_Shomare_darkhast_Hafari='+QuotedStr(maduDB.ADOQuery1Hafari_Shomare_darkhast.AsString);
  maduDB.ADOQuery_khesarat.Open;



  if (maduDB.ADOQuery_noe_hafari.RecordCount>0) then
  begin
  edt_tol_asfalt_jadid.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_Jadid_Tol.AsString;
  edt_arz_asfalt_jadid.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_Jadid_Arz.AsString;

  edt_tol_asfalt_gadim.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_gadim_Tol.AsString;
  edt_arz_asfalt_gadim.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_gadim_Arz.AsString;

  edt_tol_piade_ro.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_PiadeRo_Tol.AsString;
  edt_arz_piade_ro.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_PiadeRo_Arz.AsString;

  edt_tol_khaki.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_Khaki_Tol.AsString;
  edt_arz_khaki.Text:=maduDB.ADOQuery_noe_hafariNoeHafari_Asfalt_Khaki_Arz.AsString;


  if (edt_tol_asfalt_jadid.Text<>'0')then
    ch_asfalat_jadid.Checked:=true
  else
    ch_asfalat_jadid.Checked:=false;


  if (edt_tol_asfalt_gadim.Text<>'0')then
    ch_asfalt_gadim.Checked:=true
  else
    ch_asfalt_gadim.Checked:=false;


  if (edt_tol_piade_ro.Text<>'0')then
    ch_piade_ro.Checked:=true
  else
    ch_piade_ro.Checked:=false;


  if (edt_tol_khaki.Text<>'0')then
    ch_khaki.Checked:=true
  else
    ch_khaki.Checked:=false;
  end
  else
  begin
    clear_form;
    ch_asfalat_jadid.Checked:=false;
    ch_asfalt_gadim.Checked:=false;
    ch_khaki.Checked:=false;
    ch_piade_ro.Checked:=false;
  end;


  if(maduDB.ADOQuery_khesarat.RecordCount>0)then
  begin
     sh_mojavez_feli:=maduDB.ADOQuery_khesaratKhesarat_Shomare_Mojavez_Hafari.AsString;

     date_shoro:=maduDB.ADOQuery_khesaratKhesarat_Shoro.AsString;
     date_payan:=maduDB.ADOQuery_khesaratKhesarat_Payan.AsString;

    if (date_shoro<>'')then
    begin
      roz_shoro:=date_shoro[9]+date_shoro[10];
      mah_shoro:=date_shoro[6]+date_shoro[7];
      sal_shoro:=date_shoro[1]+date_shoro[2]+date_shoro[3]+date_shoro[4];
    end
    else
    begin
      roz_shoro:='';
      mah_shoro:='';
      sal_shoro:='';
    end;

    edt_shoro_roz.Text:=roz_shoro;
    edt_shoro_mah.Text:=mah_shoro;
    edt_shoro_sal.Text:=sal_shoro;

    if (date_payan<>'')then
    begin
      roz_payan:=date_payan[9]+date_payan[10];
      mah_payan:=date_payan[6]+date_payan[7];
      sal_payan:=date_payan[1]+date_payan[2]+date_payan[3]+date_payan[4];
    end
    else
    begin
      roz_payan:='';
      mah_payan:='';
      sal_payan:='';
    end;

    edt_payan_roz.Text:=roz_payan;
    edt_payan_mah.Text:=mah_payan;
    edt_payan_sal.Text:=sal_payan;



     cmb_sherkathafar.ItemIndex:=cmb_sherkathafar.Items.IndexOf(maduDB.ADOQuery_khesaratKhesarat_sherkat_hafar.AsString);

    if (maduDB.ADOQuery_khesaratKhesarat_Pardakht_Naghdi.AsFloat>0) then
    begin
      cmb_hesabfimabin.ItemIndex:=0;
      cmb_nahve_pardakht.ItemIndex:=cmb_nahve_pardakht.Items.IndexOf('????');

      if(cmb_nahve_pardakht.Text='???? ???????')then
        Button3.Enabled:=false
      else
        Button3.Enabled:=true;

      l_hesabfimabin.Visible:=false;
      cmb_hesabfimabin.Visible:=false;

      l_fishvarizi.Visible:=true;
      edt_fishvarizi.Visible:=true;

      edt_fishvarizi.Text:=maduDB.ADOQuery_khesaratKhesarat_Shomare_fish_Naghdi.AsString;
    end
    else
    begin
      cmb_nahve_pardakht.ItemIndex:=cmb_nahve_pardakht.Items.IndexOf('???? ???????');

      if(cmb_nahve_pardakht.Text='???? ???????')then
        Button3.Enabled:=false
      else
        Button3.Enabled:=true;

      cmb_hesabfimabin.ItemIndex:=cmb_hesabfimabin.Items.IndexOf(maduDB.ADOQuery_khesaratKhesarat_Sherkate_Fimabein.AsString);

      l_hesabfimabin.Visible:=true;
      cmb_hesabfimabin.Visible:=true;

      l_fishvarizi.Visible:=false;
      edt_fishvarizi.Visible:=false;

      edt_fishvarizi.Text:='';
    end;

    cmb_taeedkonnade.ItemIndex:=cmb_taeedkonnade.Items.IndexOf(maduDB.ADOQuery_khesaratKhesarat_Taeede_Aval.AsString);
    edt_shomare_mojavez.Text:=maduDB.ADOQuery_khesaratKhesarat_Shomare_Mojavez_Hafari.AsString;
  end
  else
  begin
    cmb_sherkathafar.ItemIndex:=0;
    cmb_taeedkonnade.ItemIndex:=0;
    cmb_hesabfimabin.ItemIndex:=0;
    edt_shomare_mojavez.Text:='';
    sh_mojavez_feli:='-1';
  end;
end;

procedure Tfrm_NoeHafari.insert_khesarat;
var   sherkate_Fimabein:string;
      pardakht_Fimabein,pardakht_Naghdi,shomare_fish_Naghdi:real;
begin
  if(cmb_nahve_pardakht.Text='????')then
  begin
    {if(trim(edt_fishvarizi.Text)='')then
    begin
      MessageBox(Handle,'????? ??? ???? ?? ???? ??????','???? !',MB_OK+MB_ICONEXCLAMATION);
      edt_fishvarizi.SetFocus;
      Exit;
    end; }
  end
  else
  begin

  end;

  {if(trim(edt_shomare_mojavez.Text)='')then
  begin
      MessageBox(Handle,'????? ???? ????? ?? ???? ??????','???? !',MB_OK+MB_ICONEXCLAMATION);
      edt_shomare_mojavez.SetFocus;
      Exit;
  end; }

  if(cmb_nahve_pardakht.Text='????')then
  begin
    pardakht_Naghdi:=StrToFloat(l_kol_khesatrat.Caption);
    shomare_fish_Naghdi:=StrToFloat(trim(edt_fishvarizi.Text));
    pardakht_Fimabein:=0;
    sherkate_Fimabein:='';
  end
  else
  begin
    pardakht_Naghdi:=0;
    shomare_fish_Naghdi:=0;
    pardakht_Fimabein:=StrToFloat(l_kol_khesatrat.Caption);
    sherkate_Fimabein:=cmb_hesabfimabin.Text;
  end;

  maduDB.ADOQuery_khesarat.SQL.Text:='insert into T_Khesarat(Khesarat_sherkat_hafar,Khesarat_Sherkate_Fimabein,'+
                                                             'Khesarat_Mablagh_Khesarat,Khesarat_Pardakht_Naghdi,'+
                                                             'Khesarat_Pardakht_Fimabein,Khesarat_Shomare_fish_Naghdi,'+
                                                             'Khesarat_Taeede_Aval,Khesarat_Shomare_darkhast_Hafari,Khesarat_Shomare_Mojavez_Hafari)'+
                                                   ' values('+QuotedStr(cmb_sherkathafar.Text)+','+QuotedStr(sherkate_Fimabein)+
                                                   ','+l_kol_khesatrat.Caption+','+FloatToStr(pardakht_Naghdi)+','+FloatToStr(pardakht_Fimabein)+
                                                   ','+FloatToStr(shomare_fish_Naghdi)+','+QuotedStr(cmb_taeedkonnade.Text)+
                                                   ','+QuotedStr(l_shomare_darkhast.Caption)+','+edt_shomare_mojavez.Text+')';
  maduDB.ADOQuery_khesarat.ExecSQL;
end;

procedure Tfrm_NoeHafari.insert_noe_hafari;
var tarikh_pay,tarikh_sho,asf_jadid_tol,asf_jadid_arz,asf_gadim_tol,asf_gadim_arz,piade_ro_tol,piade_ro_arz,khaki_tol,khaki_arz:string;
    flag:boolean;


    sherkate_Fimabein:string;
    pardakht_Fimabein,pardakht_Naghdi,shomare_fish_Naghdi:real;
begin
  flag:=false;

  tarikh_sho:=trim(edt_shoro_sal.Text)+'/'+trim(edt_shoro_mah.Text)+'/'+trim(edt_shoro_roz.Text);
  tarikh_pay:=trim(edt_shoro_sal.Text)+'/'+trim(edt_payan_mah.Text)+'/'+trim(edt_payan_roz.Text);

  if(tarikh_sho='//')then
    tarikh_sho:='';

  if(tarikh_pay='//')then
    tarikh_pay:='';


  if (ch_asfalat_jadid.Checked)then
  begin
    asf_jadid_tol:=trim(edt_tol_asfalt_jadid.Text);
    asf_jadid_arz:=trim(edt_arz_asfalt_jadid.Text);

    if (asf_jadid_tol<>'') and (asf_jadid_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    asf_jadid_tol:='0';
    asf_jadid_arz:='0';
  end;

  if (ch_asfalt_gadim.Checked)then
  begin
    asf_gadim_tol:=trim(edt_tol_asfalt_gadim.Text);
    asf_gadim_arz:=trim(edt_arz_asfalt_gadim.Text);

    if (asf_gadim_tol<>'') and (asf_gadim_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    asf_gadim_tol:='0';
    asf_gadim_arz:='0';
  end;

  if (ch_piade_ro.Checked)then
  begin
    piade_ro_tol:=trim(edt_tol_piade_ro.Text);
    piade_ro_arz:=trim(edt_arz_piade_ro.Text);

    if (piade_ro_tol<>'')and (piade_ro_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    piade_ro_tol:='0';
    piade_ro_arz:='0';
  end;

  if (ch_khaki.Checked)then
  begin
    khaki_tol:=trim(edt_tol_khaki.Text);
    khaki_arz:=trim(edt_arz_khaki.Text);

    if (khaki_tol<>'') and (khaki_arz<>'')then
      flag:=true
    else
      flag:=false;
  end
  else
  begin
    khaki_tol:='0';
    khaki_arz:='0';
  end;

  maduDB.ADOQuery_noe_hafari.SQL.Text:='select * from T_Noe_Hafari where NoeHafari_Shomare_darkhast_Hafari='+QuotedStr(l_shomare_darkhast.Caption);
  maduDB.ADOQuery_noe_hafari.Open;

  if maduDB.ADOQuery_noe_hafari.RecordCount>0 then
  begin
    MessageBox(Handle,'??????? ??? ????? ???? ????? ??????? ????? ???? ??? ???','???? !',MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;

//////////////////////////////////////////////
  if(cmb_nahve_pardakht.Text='????')then
  begin
    {if(trim(edt_fishvarizi.Text)='')then
    begin
      MessageBox(Handle,'????? ??? ???? ?? ???? ??????','???? !',MB_OK+MB_ICONEXCLAMATION);
      edt_fishvarizi.SetFocus;
      Exit;
    end; }
  end
  else
  begin

  end;

  {if(trim(edt_shomare_mojavez.Text)='')then
  begin
      MessageBox(Handle,'????? ???? ????? ?? ???? ??????','???? !',MB_OK+MB_ICONEXCLAMATION);
      edt_shomare_mojavez.SetFocus;
      Exit;
  end; }

  if(cmb_nahve_pardakht.Text='????')then
  begin
    if (l_kol_khesatrat.Caption='')then
      l_kol_khesatrat.Caption:='0';

    pardakht_Naghdi:=StrToFloat(l_kol_khesatrat.Caption);

    if (trim(edt_fishvarizi.Text)<>'') then
      shomare_fish_Naghdi:=StrToFloat(trim(edt_fishvarizi.Text))
    else
      shomare_fish_Naghdi:=0;

    pardakht_Fimabein:=0;
    sherkate_Fimabein:='';
  end
  else
  begin
    pardakht_Naghdi:=0;
    shomare_fish_Naghdi:=0;
    pardakht_Fimabein:=StrToFloat(l_kol_khesatrat.Caption);
    sherkate_Fimabein:=trim(cmb_hesabfimabin.Text);
  end;

//////////////////////////////////////////////
  if (trim(edt_shomare_mojavez.Text)='')then
    edt_shomare_mojavez.Text:='';


  maduDB.ADOQuery_khesarat.SQL.Text:='select * from T_Khesarat where Khesarat_Shomare_Mojavez_Hafari='+QuotedStr(trim(edt_shomare_mojavez.Text));
  maduDB.ADOQuery_khesarat.open;

  if (maduDB.ADOQuery_khesarat.RecordCount>0) and (sh_mojavez_feli<>edt_shomare_mojavez.Text)and(sh_mojavez_feli<>'-1') then
  begin
    MessageBox(Handle,'????? ???? ????? ???? ????? ??????? ????? ???? ??? ???','???? !',MB_OK+MB_ICONEXCLAMATION);
    Exit;
  end;

  if flag then
  begin
    maduDB.ADOQuery_noe_hafari.SQL.Text:='begin tran insert into T_Noe_Hafari(NoeHafari_Asfalt_Jadid_Tol,NoeHafari_Asfalt_Jadid_Arz,'+
                                                                'NoeHafari_Asfalt_PiadeRo_Tol,NoeHafari_Asfalt_PiadeRo_Arz,'+
                                                                'NoeHafari_Asfalt_Khaki_Tol,NoeHafari_Asfalt_Khaki_Arz,'+
                                                                'NoeHafari_Asfalt_gadim_Tol,NoeHafari_Asfalt_gadim_Arz,'+
                                                                'NoeHafari_Shomare_darkhast_Hafari)'+

                                                                ' values('+
                                                                asf_jadid_tol+','+asf_jadid_arz+','+
                                                                piade_ro_tol+','+piade_ro_arz+','+
                                                                khaki_tol+','+khaki_arz+','+
                                                                asf_gadim_tol+','+asf_gadim_arz+','+
                                                                QuotedStr(l_shomare_darkhast.Caption)+
                                                                ')'+
                                       '  insert into T_Khesarat(Khesarat_Shoro,Khesarat_Payan,Khesarat_sherkat_hafar,Khesarat_Sherkate_Fimabein,'+
                                                             'Khesarat_Mablagh_Khesarat,Khesarat_Pardakht_Naghdi,'+
                                                             'Khesarat_Pardakht_Fimabein,Khesarat_Shomare_fish_Naghdi,'+
                                                             'Khesarat_Taeede_Aval,Khesarat_Shomare_darkhast_Hafari,Khesarat_Shomare_Mojavez_Hafari)'+
                                                   ' values('+QuotedStr(tarikh_sho)+','+QuotedStr(tarikh_pay)+
                                                   ','+QuotedStr(trim(cmb_sherkathafar.Text))+','+QuotedStr(sherkate_Fimabein)+
                                                   ','+l_kol_khesatrat.Caption+','+FloatToStr(pardakht_Naghdi)+','+FloatToStr(pardakht_Fimabein)+
                                                   ','+FloatToStr(shomare_fish_Naghdi)+','+QuotedStr(trim(cmb_taeedkonnade.Text))+
                                                   ','+QuotedStr(l_shomare_darkhast.Caption)+','+QuotedStr(trim(edt_shomare_mojavez.Text))+')'+


                                       '   insert into T_Nezarat(Nezarat_Shomare_darkhast) values('+QuotedStr(l_shomare_darkhast.Caption)+')'+
                                                   ' commit tran';


    maduDB.ADOQuery_noe_hafari.ExecSQL;

    {maduDB.ADOQuery_khesarat.SQL.Text:='insert into T_Khesarat(Khesarat_sherkat_hafar,Khesarat_Sherkate_Fimabein,'+
                                                             'Khesarat_Mablagh_Khesarat,Khesarat_Pardakht_Naghdi,'+
                                                             'Khesarat_Pardakht_Fimabein,Khesarat_Shomare_fish_Naghdi,'+
                                                             'Khesarat_Taeede_Aval,Khesarat_Shomare_darkhast_Hafari)'+
                                                   ' values('+QuotedStr(cmb_sherkathafar.Text)+','+QuotedStr(sherkate_Fimabein)+
                                                   ','+l_kol_khesatrat.Caption+','+FloatToStr(pardakht_Naghdi)+','+FloatToStr(pardakht_Fimabein)+
                                                   ','+FloatToStr(shomare_fish_Naghdi)+','+QuotedStr(cmb_taeedkonnade.Text)+
                                                   ','++')';
  maduDB.ADOQuery_khesarat.ExecSQL;}
    clear_form;
    MessageBox(Handle,'??????? ????? ??.','???? !',MB_OK+MB_ICONINFORMATION);
  end
  else
      MessageBox(Handle,'?????? ??? ? ??? ????? ???? ???? ??? ????? ??? ??????? ???? ????','???? !',MB_OK+MB_ICONEXCLAMATION);
end;

procedure Tfrm_NoeHafari.clear_form;
begin
  edt_tol_asfalt_jadid.Clear;
  edt_fishvarizi.Clear;
  edt_arz_asfalt_jadid.Clear;
  edt_arz_asfalt_gadim.Clear;
  edt_tol_asfalt_gadim.Clear;
  edt_tol_piade_ro.Clear;
  edt_arz_piade_ro.Clear;
  edt_tol_khaki.Clear;
  edt_arz_khaki.Clear;
  edt_shomare_mojavez.Clear;
  edt_shoro_roz.Clear;
  edt_payan_roz.Clear;
  edt_shoro_mah.Clear;
  edt_payan_mah.Clear;
  edt_shoro_sal.Clear;
  edt_payan_sal.Clear;  
end;

function Tfrm_NoeHafari.mohasebe_kol_khesarat;
var kh_jadid,kh_gadim,kh_piade_ro:Real;
begin
  if(l_khesarat_asfalt_jadid.Caption='')then
    kh_jadid:=0
  else
    kh_jadid:=StrToFloat(l_khesarat_asfalt_jadid.Caption);

  if(l_khesarat_asfalt_gadim.Caption='')then
    kh_gadim:=0
  else
    kh_gadim:=StrToFloat(l_khesarat_asfalt_gadim.Caption);

  if(l_khesarat_piadero.Caption='')then
    kh_piade_ro:=0
  else
    kh_piade_ro:=StrToFloat(l_khesarat_piadero.Caption);

   mohasebe_kol_khesarat:=kh_jadid+kh_gadim+kh_piade_ro;
end;

procedure Tfrm_NoeHafari.FormShow(Sender: TObject);
begin
   frm_NoeHafari.WindowState:=wsMaximized;

  ch_asfalat_jadid.Checked:=false;
  ch_asfalat_jadidClick(self);

  ch_asfalt_gadim.Checked:=false;
  ch_asfalt_gadimClick(self);

  ch_piade_ro.Checked:=false;
  ch_piade_roClick(self);

  ch_khaki.Checked:=false;
  ch_khakiClick(self);

  l_kol_khesatrat.Caption:='';

  cmb_nahve_pardakhtChange(self);

  maduDB.ADOQuery1.SQL.Text:='select * from T_Hafari order by Hafari_Tarikh_Sabt desc,Hafari_Shomare_darkhast';
  maduDB.ADOQuery1.Open;

  show_current_record;
end;

procedure Tfrm_NoeHafari.ch_asfalat_jadidClick(Sender: TObject);
begin
  if (ch_asfalat_jadid.Checked)then
  begin
    l_tol_asfalt_jadid.Visible:=true;
    l_arz_asfalt_jadid.Visible:=true;
    edt_tol_asfalt_jadid.Visible:=true;
    edt_tol_asfalt_jadid.SetFocus;
    edt_arz_asfalt_jadid.Visible:=True;
    l_tarefe_asfalt_jadid.Visible:=True;
    //edt_tol_asfalt_jadid.Clear;
    //edt_arz_asfalt_jadid.Clear;
    l_khesarat_asfalt_jadid.Caption:='';
  end
  else
  begin
    l_tol_asfalt_jadid.Visible:=false;
    l_arz_asfalt_jadid.Visible:=false;
    edt_tol_asfalt_jadid.Visible:=false;
    edt_arz_asfalt_jadid.Visible:=false;
    l_tarefe_asfalt_jadid.Visible:=false;
    edt_tol_asfalt_jadid.Clear;
    edt_arz_asfalt_jadid.Clear;
    l_khesarat_asfalt_jadid.Caption:='';
  end;
end;



procedure Tfrm_NoeHafari.ch_asfalt_gadimClick(Sender: TObject);
begin
  if (ch_asfalt_gadim.Checked)then
  begin
    l_tol_asfalt_gadim.Visible:=true;
    l_arz_asfalt_gadim.Visible:=true;
    edt_tol_asfalt_gadim.Visible:=true;
    edt_tol_asfalt_gadim.SetFocus;
    edt_arz_asfalt_gadim.Visible:=True;
    l_tarefe_asfalt_gadim.Visible:=True;
    //edt_tol_asfalt_gadim.Clear;
    //edt_arz_asfalt_gadim.Clear;
    l_khesarat_asfalt_gadim.Caption:='';
  end
  else
  begin
    l_tol_asfalt_gadim.Visible:=false;
    l_arz_asfalt_gadim.Visible:=false;
    edt_tol_asfalt_gadim.Visible:=false;
    edt_arz_asfalt_gadim.Visible:=false;
    l_tarefe_asfalt_gadim.Visible:=false;
    //edt_tol_asfalt_gadim.Clear;
    //edt_arz_asfalt_gadim.Clear;
    l_khesarat_asfalt_gadim.Caption:='';
  end;
end;

procedure Tfrm_NoeHafari.ch_piade_roClick(Sender: TObject);
begin
  if (ch_piade_ro.Checked)then
  begin
    l_tol_piade_ro.Visible:=true;
    l_arz_piade_ro.Visible:=true;
    edt_tol_piade_ro.Visible:=true;
    edt_tol_piade_ro.SetFocus;
    edt_arz_piade_ro.Visible:=True;
    l_tarefe_piade_ro.Visible:=True;
    //edt_tol_piade_ro.Clear;
    //edt_arz_piade_ro.Clear;
    l_khesarat_piadero.Caption:='';
  end
  else
  begin
    l_tol_piade_ro.Visible:=false;
    l_arz_piade_ro.Visible:=false;
    edt_tol_piade_ro.Visible:=false;
    edt_arz_piade_ro.Visible:=false;
    l_tarefe_piade_ro.Visible:=false;
    //edt_tol_piade_ro.Clear;
    //edt_arz_piade_ro.Clear;
    l_khesarat_piadero.Caption:='';
  end;
end;

procedure Tfrm_NoeHafari.ch_khakiClick(Sender: TObject);
begin
  if (ch_khaki.Checked)then
  begin
    l_tol_khaki.Visible:=true;
    l_arz_khaki.Visible:=true;
    edt_tol_khaki.Visible:=true;
    edt_tol_khaki.SetFocus;
    edt_arz_khaki.Visible:=True;
    //edt_tol_khaki.Clear;
    //edt_arz_khaki.Clear;
  end
  else
  begin
    l_tol_khaki.Visible:=false;
    l_arz_khaki.Visible:=false;
    edt_tol_khaki.Visible:=false;
    edt_arz_khaki.Visible:=false;
  end;
end;

procedure Tfrm_NoeHafari.edt_tol_asfalt_jadidExit(Sender: TObject);
begin
  //edt_arz_asfalt_jadid.SetFocus;
end;

procedure Tfrm_NoeHafari.edt_tol_asfalt_gadimExit(Sender: TObject);
begin
  //edt_arz_asfalt_gadim.SetFocus;
end;

procedure Tfrm_NoeHafari.edt_tol_piade_roExit(Sender: TObject);
begin
  //edt_arz_piade_ro.SetFocus;
end;

procedure Tfrm_NoeHafari.edt_tol_khakiExit(Sender: TObject);
begin
  //edt_arz_khaki.SetFocus;
end;

procedure Tfrm_NoeHafari.edt_tol_asfalt_jadidChange(Sender: TObject);
begin
  if ((trim(edt_tol_asfalt_jadid.Text)<>'') and (trim(edt_arz_asfalt_jadid.Text)<>'')) then
  begin
    l_khesarat_asfalt_jadid.Caption:=FloatToStr(StrToFloat(edt_tol_asfalt_jadid.Text)*StrToFloat(edt_arz_asfalt_jadid.Text)*StrToFloat((l_tarefe_asfalt_jadid.Caption)));
  end
  else
  begin
    l_khesarat_asfalt_jadid.Caption:='';
  end;
  l_kol_khesatrat.Caption:=FloatToStr(mohasebe_kol_khesarat);
end;

procedure Tfrm_NoeHafari.edt_arz_asfalt_jadidChange(Sender: TObject);
begin
  if ((trim(edt_tol_asfalt_jadid.Text)<>'') and (trim(edt_arz_asfalt_jadid.Text)<>'')) then
  begin
    l_khesarat_asfalt_jadid.Caption:=FloatToStr(StrToFloat(edt_tol_asfalt_jadid.Text)*StrToFloat(edt_arz_asfalt_jadid.Text)*StrToFloat((l_tarefe_asfalt_jadid.Caption)));
  end
  else
  begin
    l_khesarat_asfalt_jadid.Caption:='';
  end;
    l_kol_khesatrat.Caption:=FloatToStr(mohasebe_kol_khesarat);
end;

procedure Tfrm_NoeHafari.edt_tol_asfalt_gadimChange(Sender: TObject);
begin
  if ((trim(edt_tol_asfalt_gadim.Text)<>'') and (trim(edt_arz_asfalt_gadim.Text)<>'')) then
  begin
    l_khesarat_asfalt_gadim.Caption:=FloatToStr(StrToFloat(edt_tol_asfalt_gadim.Text)*(1+StrToFloat(edt_arz_asfalt_gadim.Text))*StrToFloat((l_tarefe_asfalt_gadim.Caption)));
  end
  else
  begin
    l_khesarat_asfalt_gadim.Caption:='';
  end;
  l_kol_khesatrat.Caption:=FloatToStr(mohasebe_kol_khesarat);
end;

procedure Tfrm_NoeHafari.edt_arz_asfalt_gadimChange(Sender: TObject);
begin
  if ((trim(edt_tol_asfalt_gadim.Text)<>'') and (trim(edt_arz_asfalt_gadim.Text)<>'')) then
  begin
    l_khesarat_asfalt_gadim.Caption:=FloatToStr(StrToFloat(edt_tol_asfalt_gadim.Text)*(1+StrToFloat(edt_arz_asfalt_gadim.Text))*StrToFloat((l_tarefe_asfalt_gadim.Caption)));
  end
  else
  begin
    l_khesarat_asfalt_gadim.Caption:='';
  end;
    l_kol_khesatrat.Caption:=FloatToStr(mohasebe_kol_khesarat);
end;

procedure Tfrm_NoeHafari.edt_tol_piade_roChange(Sender: TObject);
begin
  if ((trim(edt_tol_piade_ro.Text)<>'') and (trim(edt_arz_piade_ro.Text)<>'')) then
  begin
    l_khesarat_piadero.Caption:=FloatToStr(StrToFloat(edt_tol_piade_ro.Text)*(1+StrToFloat(edt_arz_piade_ro.Text))*StrToFloat((l_tarefe_piade_ro.Caption)));
  end
  else
  begin
    l_khesarat_piadero.Caption:='';
  end;
  l_kol_khesatrat.Caption:=FloatToStr(mohasebe_kol_khesarat);
end;

procedure Tfrm_NoeHafari.edt_arz_piade_roChange(Sender: TObject);
begin
  if ((trim(edt_tol_piade_ro.Text)<>'') and (trim(edt_arz_piade_ro.Text)<>'')) then
  begin
    l_khesarat_piadero.Caption:=FloatToStr(StrToFloat(edt_tol_piade_ro.Text)*(1+StrToFloat(edt_arz_piade_ro.Text))*StrToFloat((l_tarefe_piade_ro.Caption)));
  end
  else
  begin
    l_khesarat_piadero.Caption:='';
  end;
    l_kol_khesatrat.Caption:=FloatToStr(mohasebe_kol_khesarat);
end;

procedure Tfrm_NoeHafari.edt_tol_asfalt_jadidKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_arz_asfalt_jadidKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_tol_asfalt_gadimKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_arz_asfalt_gadimKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_tol_piade_roKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_arz_piade_roKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_tol_khakiKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_arz_khakiKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.cmb_nahve_pardakhtChange(Sender: TObject);
begin
  if(cmb_sherkathafar.Text='??????')then
     cmb_nahve_pardakht.ItemIndex:=cmb_nahve_pardakht.Items.IndexOf('????');

  if (cmb_nahve_pardakht.Text='????') then
  begin
    l_hesabfimabin.Visible:=false;
    cmb_hesabfimabin.Visible:=false;

    l_fishvarizi.Visible:=true;
    edt_fishvarizi.Visible:=true;
  end
  else
  begin
    l_hesabfimabin.Visible:=true;
    cmb_hesabfimabin.Visible:=true;

    l_fishvarizi.Visible:=false;
    edt_fishvarizi.Visible:=false;
  end;

  if(cmb_nahve_pardakht.Text='???? ???????')then
  begin
    Button3.Enabled:=false;
    cmb_hesabfimabin.ItemIndex:=cmb_hesabfimabin.Items.IndexOf(cmb_sherkathafar.Text);
  end
  else
  begin
    Button3.Enabled:=true;
  end;
end;

procedure Tfrm_NoeHafari.Button2Click(Sender: TObject);
begin
  clear_form;
end;

procedure Tfrm_NoeHafari.edt_shomare_darkhast_hafariKeyPress(
  Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8,'.','/','?'..'?']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_shomare_darkhast_hafariChange(
  Sender: TObject);
begin
  if (edt_shomare_darkhast_hafari.Text<>'') then
    maduDB.ADOQuery1.Locate('Hafari_Shomare_darkhast',trim(edt_shomare_darkhast_hafari.Text),[loPartialKey]);
end;

procedure Tfrm_NoeHafari.Button1Click(Sender: TObject);
begin
  insert_noe_hafari;
end;

procedure Tfrm_NoeHafari.Button3Click(Sender: TObject);
begin
  maduDB.ADOQuery_khesarat.SQL.Text:='select * from T_Khesarat where Khesarat_Shomare_darkhast_Hafari='+QuotedStr(l_shomare_darkhast.Caption);
  maduDB.ADOQuery_khesarat.Open;
  frm_print_hazine_khesarat.QuickRep1.Preview;
end;

procedure Tfrm_NoeHafari.Button4Click(Sender: TObject);
begin
  maduDB.ADOQuery_khesarat.SQL.Text:='select * from T_Khesarat where Khesarat_Shomare_darkhast_Hafari='+QuotedStr(l_shomare_darkhast.Caption);
  maduDB.ADOQuery_khesarat.Open;

  maduDB.ADOQuery_Hafari.SQL.Text:='select * from T_Hafari where Hafari_Shomare_darkhast='+QuotedStr(l_shomare_darkhast.Caption);
  maduDB.ADOQuery_Hafari.Open;

  frm_print_mojavez_hafari.QuickRep1.Preview;
end;

procedure Tfrm_NoeHafari.cmb_sherkathafarChange(Sender: TObject);
begin
  if(cmb_sherkathafar.Text='??????')then
     cmb_nahve_pardakht.ItemIndex:=cmb_nahve_pardakht.Items.IndexOf('????');

  if (cmb_nahve_pardakht.Text='????') then
  begin
    l_hesabfimabin.Visible:=false;
    cmb_hesabfimabin.Visible:=false;

    l_fishvarizi.Visible:=true;
    edt_fishvarizi.Visible:=true;
  end
  else
  begin
    l_hesabfimabin.Visible:=true;
    cmb_hesabfimabin.Visible:=true;

    l_fishvarizi.Visible:=false;
    edt_fishvarizi.Visible:=false;
  end;

  if(cmb_nahve_pardakht.Text='???? ???????')then
    cmb_hesabfimabin.ItemIndex:=cmb_hesabfimabin.Items.IndexOf(cmb_sherkathafar.Text)


end;

procedure Tfrm_NoeHafari.edt_shomare_mojavezKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8,'.','/']) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.Button5Click(Sender: TObject);
var sh_darkhast:string;
begin
  sh_darkhast:=l_shomare_darkhast.Caption;
  update;

  maduDB.ADOQuery1.Locate('Hafari_Shomare_darkhast',trim(l_shomare_darkhast.Caption),[loPartialKey]);
  show_current_record;
end;

procedure Tfrm_NoeHafari.cmb_hesabfimabinChange(Sender: TObject);
begin
  if(cmb_nahve_pardakht.Text='???? ???????')then
    cmb_hesabfimabin.ItemIndex:=cmb_hesabfimabin.Items.IndexOf(cmb_sherkathafar.Text)
end;

procedure Tfrm_NoeHafari.edt_shoro_rozExit(Sender: TObject);
begin
  if (StrLen(pchar(edt_shoro_roz.Text))=1)then
    edt_shoro_roz.Text:='0'+edt_shoro_roz.Text;

  if (StrLen(pchar(edt_shoro_roz.Text))=0)then
    edt_shoro_roz.Text:='00'+edt_shoro_roz.Text;
end;

procedure Tfrm_NoeHafari.edt_shoro_mahExit(Sender: TObject);
begin
  if (StrLen(pchar(edt_shoro_mah.Text))=1)then
    edt_shoro_roz.Text:='0'+edt_shoro_mah.Text;

  if (StrLen(pchar(edt_shoro_mah.Text))=0)then
    edt_shoro_mah.Text:='00'+edt_shoro_mah.Text;
end;

procedure Tfrm_NoeHafari.edt_shoro_salExit(Sender: TObject);
begin
  if (StrLen(pchar(edt_shoro_sal.Text))<4)then
    edt_shoro_sal.Text:='0000';
end;

procedure Tfrm_NoeHafari.edt_payan_salExit(Sender: TObject);
begin
  if (StrLen(pchar(edt_payan_sal.Text))<4)then
    edt_payan_sal.Text:='0000';
end;

procedure Tfrm_NoeHafari.edt_payan_mahExit(Sender: TObject);
begin
  if (StrLen(pchar(edt_payan_mah.Text))=1)then
    edt_payan_roz.Text:='0'+edt_payan_mah.Text;

  if (StrLen(pchar(edt_payan_mah.Text))=0)then
    edt_payan_mah.Text:='00'+edt_payan_mah.Text;
end;

procedure Tfrm_NoeHafari.edt_payan_rozExit(Sender: TObject);
begin
  if (StrLen(pchar(edt_payan_roz.Text))=1)then
    edt_payan_roz.Text:='0'+edt_payan_roz.Text;

  if (StrLen(pchar(edt_payan_roz.Text))=0)then
    edt_payan_roz.Text:='00'+edt_payan_roz.Text;
end;

procedure Tfrm_NoeHafari.edt_shoro_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_shoro_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_shoro_salKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_payan_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_payan_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_NoeHafari.edt_payan_salKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

end.
