create database Renting_alto_CC
use Renting_alto_cc

create table Motos_Naked(
Naked varchar primary key,
Ducati_Streetfighter_V4 varchar,
MV_Agusta_Brutale_1000_RR varchar,
Kawasaki_Z_H2_SE varchar,
KTM_1290_Super_Duke_R_EVO varchar,
Yamaha_MT_07 varchar,
Yamaha_MT_09 varchar,
Yamaha_MT_10 varchar,
Benelli_BN_600_R varchar,
Kawasaki_Z650 varchar,
KTM_690_Duke varchar,
Ducati_Monster_797 varchar,
BMW_F_800_R varchar,
BMW_M1000R varchar
)
create table Motos_SBK(
SBK varchar primary key,
BMW_S1000_RR varchar,
Yamaha_YZF_R1M varchar,
Kawasaki_Ninja_H2_R_Carbon varchar,
Ducati_Panigale_V4_S varchar,
Ducati_SuperleggeraV4 varchar,
Aprilia_RSV4 varchar,
HONDA_CBR_1000_RR_R varchar,
BMW_M_1000_RR varchar,
KAWASAKI_ZX_10_RR varchar,
KAWASAKI_Z_H2 varchar,
KTM_RC8 varchar,
)

create table Motos_Touring(
Touring varchar primary key,
Honda_NC_750 varchar,
Susuki_v_strom_650 varchar,
Susuki_v_strom_1000 varchar,
triumph_tiger_800 varchar,
BMW_1200_GS varchar,
BMW_1250_GS varchar,
BMW_S_1000_XR varchar,
Honda_african_twin varchar,
Ducati_multistrada_1260 varchar,
KTM_1290_Superadventure varchar,
BMW_GS_1300_R varchar,
)
create table Talleres(
Talleres varchar primary key,
Taller_moto_planet_bogota varchar,
Taller_only_wheels_medellin varchar,
Taller_luis_arciniegas_bogota varchar,
Taller_renting_av_las_vegas_medellin varchar,
)

Create table asesores_renting_alto_cc(
Nombre_asesor varchar primary key,
Oficina_numero varchar,
Talleres varchar,
Touring varchar,
Naked varchar,
SBK varchar,
constraint apodo foreign key(Talleres)references Talleres(Talleres),
constraint apodo1 foreign key(Touring)references Motos_Touring(Touring),
constraint apodo2 foreign key(SBK)references Motos_SBK(SBK),
constraint apodo3 foreign key(Naked)references Motos_Naked(Naked)
)