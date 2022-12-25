program Hafari;

uses
  Forms,
  untMain in 'untMain.pas' {frm_main},
  untmadulDB in 'untmadulDB.pas' {maduDB: TDataModule},
  unt_NoeHafar in 'unt_NoeHafar.pas' {frm_NoeHafari},
  unt_nezart in 'unt_nezart.pas' {frm_nezart},
  unt_print_hazine_khesarat in 'unt_print_hazine_khesarat.pas' {frm_print_hazine_khesarat},
  unt_temp in 'unt_temp.pas' {frm_temp},
  unt_print_mojavez_hafari in 'unt_print_mojavez_hafari.pas' {frm_print_mojavez_hafari},
  Taghvim in 'Taghvim.pas' {_taghvim},
  unt_Group_Tolha in 'unt_Group_Tolha.pas' {frm_Group_Tolha},
  unt_gozareshat in 'unt_gozareshat.pas' {frm_gozareshat},
  unt_pint_factor_roz in 'unt_pint_factor_roz.pas' {frm_pint_factor_roz};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_nezart, frm_nezart);
  Application.CreateForm(Tfrm_print_hazine_khesarat, frm_print_hazine_khesarat);
  Application.CreateForm(Tfrm_temp, frm_temp);
  Application.CreateForm(Tfrm_print_mojavez_hafari, frm_print_mojavez_hafari);
  Application.CreateForm(Tfrm_NoeHafari, frm_NoeHafari);
  Application.CreateForm(TmaduDB, maduDB);
  Application.CreateForm(T_taghvim, _taghvim);
  Application.CreateForm(Tfrm_Group_Tolha, frm_Group_Tolha);
  Application.CreateForm(Tfrm_gozareshat, frm_gozareshat);
  Application.CreateForm(Tfrm_pint_factor_roz, frm_pint_factor_roz);
  Application.Run;
end.
