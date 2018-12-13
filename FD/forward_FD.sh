# P = [m_dot, Tsteam, alpha_s, cooling];
# 10%, 5%, 1%, and 0.5% stdev
# P10=(0.0528000000000000	443.465000000000	0.0396000000000000	0.0110000000000000	4.47480000000000	4.40000000000000	22	22000)
# P5=(0.0504000000000000	423.307500000000	0.0378000000000000	0.0105000000000000	4.27140000000000	4.20000000000000	21	21000)
# P1=(0.0484800000000000	407.181500000000	0.0363600000000000	0.0101000000000000	4.10868000000000	4.04000000000000	20.2000000000000	20200)
# P05=(0.0482400000000000	405.165750000000	0.0361800000000000	0.0100500000000000	4.08834000000000	4.02000000000000	20.1000000000000	20100)
P10=(0.0576000000000000	483.780000000000	0.0432000000000000	0.0120000000000000	4.88160000000000	4.80000000000000	24	24000)
P5=(0.0552000000000000	463.622500000000	0.0414000000000000	0.0115000000000000	4.67820000000000	4.60000000000000	23	23000)
P1=(0.0547200000000000	459.591000000000	0.0410400000000000	0.0114000000000000	4.63752000000000	4.56000000000000	22.8000000000000	22800)
P05=(0.0537600000000000	451.528000000000	0.0403200000000000	0.0112000000000000	4.55616000000000	4.48000000000000	22.4000000000000	22400)

# nominal case
../../relap-7-opt -i test.i Outputs/file_base=nominal
#
# High 10
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P10[0]} Outputs/file_base=m10
../../relap-7-opt -i test.i Components/vapor_inlet/T=${P10[1]} Outputs/file_base=T10
../../relap-7-opt -i test.i Components/steam_pipe/A=${P10[2]} Outputs/file_base=Ast10
../../relap-7-opt -i test.i Components/steam_pipe/f=${P10[3]} Outputs/file_base=f10
../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P10[4]} Outputs/file_base=Aw10
../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P10[5]} Outputs/file_base=Lt10
../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P10[6]} Outputs/file_base=alpha10
../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P10[7]} Outputs/file_base=cooling10

# High 5
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P5[0]} Outputs/file_base=m5
../../relap-7-opt -i test.i Components/vapor_inlet/T=${P5[1]} Outputs/file_base=T5
../../relap-7-opt -i test.i Components/steam_pipe/A=${P5[2]} Outputs/file_base=Ast5
../../relap-7-opt -i test.i Components/steam_pipe/f=${P5[3]} Outputs/file_base=f5
../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P5[4]} Outputs/file_base=Aw5
../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P5[5]} Outputs/file_base=Lt5
../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P5[6]} Outputs/file_base=alpha5
../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P5[7]} Outputs/file_base=cooling5

# High 1
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P1[0]} Outputs/file_base=m1
../../relap-7-opt -i test.i Components/vapor_inlet/T=${P1[1]} Outputs/file_base=T1
../../relap-7-opt -i test.i Components/steam_pipe/A=${P1[2]} Outputs/file_base=Ast1
../../relap-7-opt -i test.i Components/steam_pipe/f=${P1[3]} Outputs/file_base=f1
../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P1[4]} Outputs/file_base=Aw1
../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P1[5]} Outputs/file_base=Lt1
../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P1[6]} Outputs/file_base=alpha1
../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P1[7]} Outputs/file_base=cooling1

# High 0.5
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${P05[0]} Outputs/file_base=m05
../../relap-7-opt -i test.i Components/vapor_inlet/T=${P05[1]} Outputs/file_base=T05
../../relap-7-opt -i test.i Components/steam_pipe/A=${P05[2]} Outputs/file_base=Ast05
../../relap-7-opt -i test.i Components/steam_pipe/f=${P05[3]} Outputs/file_base=f05
../../relap-7-opt -i test.i Components/wet_well_stratified/Ac=${P05[4]} Outputs/file_base=Aw05
../../relap-7-opt -i test.i Components/wet_well_stratified/Lt=${P05[5]} Outputs/file_base=Lt05
../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${P05[6]} Outputs/file_base=alpha05
../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${P05[7]} Outputs/file_base=cooling05


# ../../relap-7-opt -i test.i Components/steam_pipe/A=${P05[2]} Outputs/file_base=long

# ../../relap-7-opt -i test.i Components/steam_pipe/A=0.0363600000000000 Outputs/file_base=Ast1
# ../../relap-7-opt -i test.i Components/steam_pipe/A=0.03636 Outputs/file_base=Ast1
#
# ../../relap-7-opt -i test.i Components/steam_pipe/A=0.0361800000000000 Outputs/file_base=Ast1
# ../../relap-7-opt -i test.i Components/steam_pipe/A=0.03618 Outputs/file_base=Ast1
