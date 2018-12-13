# P = [m_dot, Tsteam, alpha_s, cooling];
# 10%, 5%, 1%, and 0.5% stdev
P10=(0.0528	443.465	0.0396	0.011	4.4748	4.4	22	22000)
P5=(0.0504	423.3075	0.0378	0.0105	4.2714	4.2	21	21000)
P1=(0.04848	407.1815	0.03636	0.0101	4.10868	4.04	20.2	20200)
P05=(0.04824	405.16575	0.03618	0.01005	4.08834	4.02	20.1	20100)


# nominal case
# ../../relap-7-opt -i test.i Outputs/file_base=nominal
# #
# # High 10
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P10[0]} Outputs/file_base=m10
# ../../relap-7-opt -i test.i Components/vapor_inlet/T=${P10[1]} Outputs/file_base=T10
# ../../relap-7-opt -i test.i Components/steam_pipe/A=${P10[2]} Outputs/file_base=Ast10
# ../../relap-7-opt -i test.i Components/steam_pipe/f=${P10[3]} Outputs/file_base=f10
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P10[4]} Outputs/file_base=Aw10
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P10[5]} Outputs/file_base=Lt10
# ../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P10[6]} Outputs/file_base=alpha10
# ../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P10[7]} Outputs/file_base=cooling10
#
# # High 5
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P5[0]} Outputs/file_base=m5
# ../../relap-7-opt -i test.i Components/vapor_inlet/T=${P5[1]} Outputs/file_base=T5
# ../../relap-7-opt -i test.i Components/steam_pipe/A=${P5[2]} Outputs/file_base=Ast5
# ../../relap-7-opt -i test.i Components/steam_pipe/f=${P5[3]} Outputs/file_base=f5
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P5[4]} Outputs/file_base=Aw5
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P5[5]} Outputs/file_base=Lt5
# ../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P5[6]} Outputs/file_base=alpha5
# ../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P5[7]} Outputs/file_base=cooling5
#
# # High 1
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P1[0]} Outputs/file_base=m1
# ../../relap-7-opt -i test.i Components/vapor_inlet/T=${P1[1]} Outputs/file_base=T1
# ../../relap-7-opt -i test.i Components/steam_pipe/A=${P1[2]} Outputs/file_base=Ast1
# ../../relap-7-opt -i test.i Components/steam_pipe/f=${P1[3]} Outputs/file_base=f1
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P1[4]} Outputs/file_base=Aw1
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P1[5]} Outputs/file_base=Lt1
# ../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P1[6]} Outputs/file_base=alpha1
# ../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P1[7]} Outputs/file_base=cooling1
#
# # High 0.5
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P05[0]} Outputs/file_base=m05
# ../../relap-7-opt -i test.i Components/vapor_inlet/T=${P05[1]} Outputs/file_base=T05
# ../../relap-7-opt -i test.i Components/steam_pipe/A=${P05[2]} Outputs/file_base=Ast05
# ../../relap-7-opt -i test.i Components/steam_pipe/f=${P05[3]} Outputs/file_base=f05
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P05[4]} Outputs/file_base=Aw05
# ../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P05[5]} Outputs/file_base=Lt05
# ../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P05[6]} Outputs/file_base=alpha05
# ../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P05[7]} Outputs/file_base=cooling05

../../relap-7-opt -i test.i Components/steam_pipe/A=${P05[2]} Outputs/file_base=short
