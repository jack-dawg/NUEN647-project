# P = [m_dot, Tsteam, alpha_s, cooling];
# 10%, 5%, 1%, and 0.5% stdev
Phigh=(0.0672	0.0576	0.0528	0.0504	0.04896	0.04848	0.048384	0.04824	0.048048	0.0480048)
Plow=(0.0288	0.0384	0.0432	0.0456	0.04704	0.04752	0.047616	0.04776	0.047952	0.0479952)


# nominal case
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=0.048 Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=2e4 Outputs/file_base=nominal
#
# High 40
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[0]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_40
# Low 40
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[0]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_40
# High 20
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[1]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_20
# Low 20
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[1]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_20
#
# High 10
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[2]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_10
# Low 10
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[2]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_10
# High 5
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[3]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_5
# Low 5
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[3]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_5

# High 2
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[4]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_2
# Low 2
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[4]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_2



# High 1
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[5]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_1
# Low 1
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[5]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_1
# High 0.8
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[6]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_0.8
# Low 0.8
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[6]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_0.8
# High 0.5
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[7]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_0.5
# Low 0.5
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[7]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_0.5

# High 0.1
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[8]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_0.1
# Low 0.1
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[8]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_0.1
# High 0.01
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Phigh[9]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_high_0.01
# Low 0.01
../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${Plow[9]} Components/vapor_inlet/T=403.15 Components/wet_well_stratified/alpha_s=20 Components/wet_well_stratified/cooling_rate=20000 Outputs/file_base=m_low_0.01


# 1.329851e+05
