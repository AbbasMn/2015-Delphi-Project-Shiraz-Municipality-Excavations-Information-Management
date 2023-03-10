unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, SUIDBCtrls, ExtCtrls;

type
  Tfrm_main = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cmb_mantage: TComboBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_khiaban: TEdit;
    edt_koche: TEdit;
    mem_tozihat_address: TMemo;
    cmb_shahr: TComboBox;
    Button1: TButton;
    edt_shomare_darkhast_hafari: TEdit;
    DataSource1: TDataSource;
    Label14: TLabel;
    edt_nameSherkat: TEdit;
    Button2: TButton;
    suiDBGrid1: TsuiDBGrid;
    egettarikh: TEdit;
    Button5: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    procedure insert_hafari;
    procedure clearForm;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function check:boolean;
    procedure Button3Click(Sender: TObject);
    procedure edt_shoro_rozKeyPress(Sender: TObject; var Key: Char);
    procedure edt_shoro_mahKeyPress(Sender: TObject; var Key: Char);
    procedure edt_shoro_salKeyPress(Sender: TObject; var Key: Char);
    procedure edt_payan_rozKeyPress(Sender: TObject; var Key: Char);
    procedure edt_payan_mahKeyPress(Sender: TObject; var Key: Char);
    procedure edt_payan_salKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    function gettarikh:boolean;
    procedure Button5Click(Sender: TObject);
    procedure update;
    procedure show_curent_record;
    procedure Button6Click(Sender: TObject);
    function bug_tarikh:boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

uses   untmadulDB, unt_NoeHafar, unt_nezart, Taghvim, unt_gozareshat;

{$R *.dfm}


function Tfrm_main.bug_tarikh:boolean;
var s:String;
begin
  s:=Egettarikh.Text;
  bug_tarikh:=false;

  if (s[1]+s[2]+s[3]+s[4]>='1392')and(s[6]+s[7]>='12') then
  begin
     MessageBox(Handle,'????? ????? ??????? ?? ??? ????? ','copy right !',MB_OK or MB_ICONEXCLAMATION );
     bug_tarikh:=true;
  end;
end;


procedure Tfrm_main.show_curent_record;
begin
  edt_shomare_darkhast_hafari.Text:=maduDB.ADOQuery1Hafari_Shomare_darkhast.AsString;
  cmb_shahr.ItemIndex:=cmb_shahr.Items.IndexOf(maduDB.ADOQuery1Hafari_Shahr.AsString);
  cmb_mantage.ItemIndex:=cmb_mantage.Items.IndexOf(maduDB.ADOQuery1Hafari_Mantaghe.AsString);

  edt_khiaban.Text:=maduDB.ADOQuery1Hafari_Khiaban.AsString;
  edt_koche.Text:=maduDB.ADOQuery1Hafari_Koche.AsString;
  mem_tozihat_address.Text:=maduDB.ADOQuery1Hafari_Tozihat.AsString;
  edt_nameSherkat.Text:=maduDB.ADOQuery1Hafari_NameSherkat.AsString;
end;

procedure Tfrm_main.update;
var tarikh_sho,tarikh_pay,sh_darkhast_feli,sh_darkhast_jadid:string;
begin
  sh_darkhast_feli:=maduDB.ADOQuery1Hafari_Shomare_darkhast.AsString;

  maduDB.ADOQuery_Hafari.SQL.Text:='select * from T_Hafari where Hafari_Shomare_darkhast='+QuotedStr(edt_shomare_darkhast_hafari.Text)+
                                                                 ' and  Hafari_Shomare_darkhast<>'+QuotedStr(sh_darkhast_feli);
  maduDB.ADOQuery_Hafari.Open;

  if (maduDB.ADOQuery_Hafari.RecordCount>0) then
    MessageBox(Handle,'????? ??????? ????? ???? ??? ???','???? !',MB_OK+MB_ICONEXCLAMATION)
  else
  begin
    sh_darkhast_jadid:=trim(edt_shomare_darkhast_hafari.Text);
    maduDB.ADOQuery1.SQL.Text:='update T_Hafari  set Hafari_NameSherkat='+QuotedStr(edt_nameSherkat.Text)+
                                                    ',Hafari_Shomare_darkhast='+QuotedStr(trim(edt_shomare_darkhast_hafari.Text))+
                                                    ',Hafari_Shahr='+QuotedStr(cmb_shahr.Text)+
                                                    ',Hafari_Mantaghe='+QuotedStr(cmb_mantage.Text)+
                                                    ',Hafari_Khiaban='+QuotedStr(edt_khiaban.Text)+
                                                    ',Hafari_Koche='+QuotedStr(edt_koche.Text)+
                                                    ',Hafari_Tozihat='+QuotedStr(mem_tozihat_address.Text)+
                                                    '  where  Hafari_Shomare_darkhast='+QuotedStr(sh_darkhast_feli);
    maduDB.ADOQuery1.ExecSQL;


     maduDB.ADOQuery1.SQL.Text:='select * from T_Hafari order by Hafari_Shomare_darkhast';
     maduDB.ADOQuery1.Open;


     maduDB.ADOQuery1.Locate('Hafari_Shomare_darkhast',sh_darkhast_jadid,[loPartialKey]);
     MessageBox(Handle,'??????? ????? ??.','???? !',MB_OK+MB_ICONINFORMATION);
  end;
end;


function Tfrm_main.gettarikh:boolean;
begin

  _taghvim.Label1.Caption:='bbbbb';
  _Taghvim.ShowModal;

if _taghvim._str_date<>'' then
begin
   egettarikh.Text:=_taghvim._str_date;
   {frm_main.L_tarikh.Caption:=Frm_login.Egettarikh.Text;
   frm_main.L_roze_hafte.Caption:=_Taghvim.roz_hafte; }
  gettarikh :=True;

  //if bug_tarikh then
  //  begin
  //    if frm_main.Showing then
  //      frm_main.Close;
  //    close;
  //  end
end;

end;

function Tfrm_main.check;
begin
  check:=true;
  if(trim(edt_shomare_darkhast_hafari.Text)='')then
  begin
    MessageBox(Handle,'????? ??????? ????? ???? ???? ???','???? !',MB_OK+MB_ICONEXCLAMATION);
    edt_shomare_darkhast_hafari.SetFocus;
    check:=false;
    Exit;
  end;
end;

procedure Tfrm_main.clearForm;
begin
  edt_khiaban.Clear;
  edt_koche.Clear;
  edt_shomare_darkhast_hafari.Clear;
  mem_tozihat_address.Clear;

  edt_nameSherkat.Clear;
end;

procedure Tfrm_main.insert_hafari;
var tarikh_sho,tarikh_pay:string;
begin
  maduDB.ADOQuery1.SQL.Text:='select * from T_Hafari where Hafari_Shomare_darkhast='+QuotedStr(edt_shomare_darkhast_hafari.Text);
  maduDB.ADOQuery1.Open;

  if (maduDB.ADOQuery1.RecordCount>0) then
  begin
     maduDB.ADOQuery1.SQL.Text:='select * from T_Hafari order by Hafari_Shomare_darkhast';
     maduDB.ADOQuery1.Open;  
    MessageBox(Handle,'????? ??????? ????? ???? ??? ???','???? !',MB_OK+MB_ICONEXCLAMATION);
  end
  else
  begin

    maduDB.ADOQuery1.SQL.Text:='insert into T_Hafari(Hafari_Tarikh_Sabt,Hafari_NameSherkat,Hafari_Shomare_darkhast,Hafari_Shahr,Hafari_Mantaghe,Hafari_Khiaban,Hafari_Koche,Hafari_Tozihat) '+
                                              ' values('+QuotedStr(egettarikh.Text)+
                                                       ','+QuotedStr(edt_nameSherkat.Text)+
                                                       ','+QuotedStr(trim(edt_shomare_darkhast_hafari.Text))+','+QuotedStr(cmb_shahr.Text)+','+QuotedStr(cmb_mantage.Text)+
                                                       ','+QuotedStr(edt_khiaban.Text)+','+QuotedStr(edt_koche.Text)+
                                                       ','+QuotedStr(mem_tozihat_address.Text)+')';
    maduDB.ADOQuery1.ExecSQL;

     maduDB.ADOQuery1.SQL.Text:='select * from T_Hafari order by Hafari_Shomare_darkhast';
     maduDB.ADOQuery1.Open;

    MessageBox(Handle,'??????? ????? ??.','???? !',MB_OK+MB_ICONINFORMATION);
  end;
end;


procedure Tfrm_main.Button1Click(Sender: TObject);
begin
  if check then
  begin
    insert_hafari;
    //clearForm;
    edt_shomare_darkhast_hafari.SetFocus;
  end;
end;

procedure Tfrm_main.Button2Click(Sender: TObject);
begin
  clearForm;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin

  egettarikh.Clear;
  edt_shomare_darkhast_hafari.SetFocus;
 while(egettarikh.Text='')do
  gettarikh;

    if bug_tarikh then
    begin
      if frm_main.Showing then
        frm_main.Close;
      close;
    end;  

     maduDB.ADOQuery1.SQL.Text:='select * from T_Hafari order by Hafari_Tarikh_Sabt desc,Hafari_Shomare_darkhast';
     maduDB.ADOQuery1.Open;
end;

procedure Tfrm_main.Button3Click(Sender: TObject);
begin
  frm_NoeHafari.ShowModal;
end;

procedure Tfrm_main.edt_shoro_rozKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_main.edt_shoro_mahKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_main.edt_shoro_salKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_main.edt_payan_rozKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_main.edt_payan_mahKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_main.edt_payan_salKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in['0'..'9',#8]) then
        key:=#0;
end;

procedure Tfrm_main.Button4Click(Sender: TObject);
begin
  frm_nezart.ShowModal;
end;

procedure Tfrm_main.Button5Click(Sender: TObject);
begin
  frm_gozareshat.ShowModal;
end;

procedure Tfrm_main.Button6Click(Sender: TObject);
begin
  if check then
    update;
end;

end.
