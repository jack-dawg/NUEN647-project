# P = [m_dot, Tsteam, alpha_s, cooling];
# 1% stdev
Phigh=(0.04848	407.1815	20.2	20200)
Plow=(0.04752	399.1185	19.8	19800)

# # nominal case
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=2e4 Outputs/file_base=nominal

# High m
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[0]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high
# # Low m
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[0]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low
# # High T
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=${Phigh[1]} Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=T_high
# # Low T
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=${Plow[1]} Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=T_low
# # High alpha
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=${Phigh[2]} Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=alpha_high
# # Low alpha
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=${Plow[2]} Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=alpha_low
# # High q
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=${Phigh[3]} Outputs/file_base=q_high
# # Low q
# ../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=${Plow[3]} Outputs/file_base=q_low
