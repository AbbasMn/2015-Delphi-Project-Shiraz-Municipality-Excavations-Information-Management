unit unt_Group_Tolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, DB, StdCtrls;

type
  Tfrm_Group_Tolha = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    lblTarikh: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Group_Tolha: Tfrm_Group_Tolha;

implementation

uses untmadulDB;

{$R *.dfm}

procedure Tfrm_Group_Tolha.FormShow(Sender: TObject);
begin

 //maduDB.ADOQuery_Merge.SQL.Text:='select sherkat,sum(Asfalt_Jadid) as Asfalt_Jadid ,sum(PiadeRo_Tol) as PiadeRo,sum(Asfalt_Khaki)'+
 //' as Asfalt_Khaki,sum(Asfalt_gadim) as Asfalt_gadim  from '+

 {maduDB.ADOQuery_Merge.SQL.Text:=' (select  T_Khesarat.Khesarat_sherkat_hafar   as sherkat,T_Khesarat.Khesarat_Shomare_darkhast_Hafari,'+
 'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Tol       as  Asfalt_Jadid,T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Tol  as  PiadeRo,'+
 'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Tol       as   Asfalt_Khaki,T_Noe_Hafari.NoeHafari_Asfalt_gadim_Tol   as  Asfalt_gadim'+

 ' from   T_Noe_Hafari,T_Khesarat where '+


 ' T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari = T_Khesarat.Khesarat_Shomare_darkhast_Hafari)';


  //' group by sherkat' ;

  maduDB.ADOQuery_Merge.Open;}


 maduDB.ADOQuery_Merge.SQL.Text:='delete from T_Group_Sherkat_Hafar_Tol_Hafari'+
 '    insert into T_Group_Sherkat_Hafar_Tol_Hafari'+
 '(Group_sherkat_hafar,Group_Shomare_darkhast_Hafari,Group_Asfalt_Jadid_Tol,Group_Asfalt_PiadeRo_Tol,Group_Asfalt_Khaki_Tol,Group_Asfalt_gadim_Tol)'+

 ' select  T_Khesarat.Khesarat_sherkat_hafar,T_Khesarat.Khesarat_Shomare_darkhast_Hafari,'+
 'T_Noe_Hafari.NoeHafari_Asfalt_Jadid_Tol,T_Noe_Hafari.NoeHafari_Asfalt_PiadeRo_Tol,'+
 'T_Noe_Hafari.NoeHafari_Asfalt_Khaki_Tol,T_Noe_Hafari.NoeHafari_Asfalt_gadim_Tol';


 if(frm_Group_Tolha.lblTarikh.Caption<>'')then
   maduDB.ADOQuery_Merge.SQL.Text:=maduDB.ADOQuery_Merge.SQL.Text+' from   T_Noe_Hafari,T_Khesarat,T_Hafari where '
 else
   maduDB.ADOQuery_Merge.SQL.Text:=maduDB.ADOQuery_Merge.SQL.Text+' from   T_Noe_Hafari,T_Khesarat where ';



 maduDB.ADOQuery_Merge.SQL.Text:=maduDB.ADOQuery_Merge.SQL.Text+' (T_Noe_Hafari.NoeHafari_Shomare_darkhast_Hafari = T_Khesarat.Khesarat_Shomare_darkhast_Hafari)';

  if(frm_Group_Tolha.lblTarikh.Caption<>'')then 
  begin
    maduDB.ADOQuery_Merge.SQL.Text:=maduDB.ADOQuery_Merge.SQL.Text+' and T_Hafari.Hafari_Tarikh_Sabt like '+QuotedStr(lblTarikh.Caption+'%')+' and (T_Khesarat.Khesarat_Shomare_darkhast_Hafari=T_Hafari.Hafari_Shomare_darkhast)';
  end;

  maduDB.ADOQuery_Merge.ExecSQL;




  maduDB.Group_Sherkat_Hafar_Tol_Hafari.SQL.Text:='select '+
  'Group_sherkat_hafar,sum(Group_Asfalt_Jadid_Tol) as Asfalt_Jadid ,'+
  'sum(Group_Asfalt_PiadeRo_Tol) as PiadeRo,sum(Group_Asfalt_Khaki_Tol) as Asfalt_Khaki,'+
  'sum(Group_Asfalt_gadim_Tol) as Asfalt_gadim from T_Group_Sherkat_Hafar_Tol_Hafari  group by Group_sherkat_hafar';
  maduDB.Group_Sherkat_Hafar_Tol_Hafari.Open;
end;

end.
