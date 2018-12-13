# This test simulates the first 40s of the STB-20 experiment from the Poolex facility
[GlobalParams]
  gravity_vector = '0 0 -9.81'
  scaling_factor_1phase = '1 1 1e-5'
[]

[FluidProperties]
  [./eos_vapor]
    type = IAPWS95VaporFluidProperties
  [../]

  [./eos_water]
    type = IAPWS95LiquidFluidProperties
  [../]

  [./eos_nc]
    type = NitrogenFluidProperties
  [../]
[]

[Components]
  [./vapor_inlet]
    type = InletMassFlowRateTemperature
    input = 'steam_pipe:in'
    m_dot = 0.048 # uncertain
    T = 403.15 # uncertain
  [../]
  [./steam_pipe]
    type = Pipe
    fp = eos_vapor
    position = '0 0 4'
    orientation = '0 0 -1'
    D_h = 0.2141
    A = 0.036001717
    f = 0.01
    initial_p = 1.19e5
    initial_vel = 1.36
    initial_T = 403.15
    length = 2.86
    n_elems = 40
  [../]

  [./water_pipe]
    type = Pipe
    fp = eos_water
    position = '-0.1 0 1'
    orientation = '-1 0 0'
    D_h = 0.1
    A = 0.007853982
    f = 0.01
    initial_p = 1.206e5
    initial_vel = 0
    initial_T = 303.15
    length = 1
    n_elems = 20
  [../]
  [./water_outlet]
    type = SolidWall
    input = 'water_pipe:out'
  [../]

  [./gas_pipe]
    type = Pipe
    fp = eos_nc
    position = '0.1 0 3.5'
    orientation = '1 0 0'
    D_h = 0.2
    A = 0.031415927
    f = 0.01
    initial_p = 1.0135e5
    initial_vel = 0
    initial_T = 303.15
    length = 1
    n_elems = 20
  [../]
  [./nc_outlet]
    type = Outlet
    input = 'gas_pipe:out'
    p = 1.0135e5
  [../]

  [./wet_well_stratified]
    type = WetWellStratified
    inputs = 'steam_pipe:out'
    outputs = 'water_pipe:in gas_pipe:in'
    number_of_steam_lines = 1
    fp_water = eos_water
    fp_vapor = eos_vapor
    fp_nc_gas = eos_nc
    z_in = 1.14
    z_out = 1
    Ac = 4.068  # uncertain
    Lt = 4      # 20% change here for 100% change in m_g
    alpha_s = 20 # uncertain
    cooling_rate = 2e4 # uncertain
    K_i = 1.0
    K_ir = 0.5
    K_o = 0.5
    K_or = 1.0
    K_v = 0.5
    K_vr = 1.0
    initial_Lw = 2.95
    initial_p_gas = 101325
    initial_T = 303.15
  [../]
[]

[Postprocessors]
  [./T_cw]
    type = ScalarVariable
    variable = wet_well_stratified:T_cw
    execute_on = 'initial timestep_end'
  [../]
  [./T_hw]
    type = ScalarVariable
    variable = wet_well_stratified:T_hw
    execute_on = 'initial timestep_end'
  [../]
  [./p_cw]
    type = ScalarVariable
    variable = wet_well_stratified:p_cw
    execute_on = 'initial timestep_end'
  [../]
  [./p_hw]
    type = ScalarVariable
    variable = wet_well_stratified:p_hw
    execute_on = 'initial timestep_end'
  [../]
  [./p_gas]
    type = ScalarVariable
    variable = wet_well_stratified:p_g_aux
    execute_on = 'initial timestep_end'
  [../]
  [./m_hw]
    type = ScalarVariable
    variable = wet_well_stratified:m_hw
    execute_on = 'initial timestep_end'
  [../]
  [./m_cw]
    type = ScalarVariable
    variable = wet_well_stratified:m_cw
    execute_on = 'initial timestep_end'
  [../]
  [./m_g]
    type = ScalarVariable
    variable = wet_well_stratified:m_g
    execute_on = 'initial timestep_end'
  [../]
  [./Lw]
    type = ScalarVariable
    variable = wet_well_stratified:Lw
    execute_on = 'initial timestep_end'
  [../]
  [./Li]
    type = ScalarVariable
    variable = wet_well_stratified:Li
    execute_on = 'initial timestep_end'
  [../]
  [./E_hw_wet_well]
    type = ScalarVariable
    variable = wet_well_stratified:e_hw_aux
    execute_on = 'initial timestep_end'
  [../]
[]

[Preconditioning]
  [./pc]
    type = SMP
    full = true
  [../]
[]

[Executioner]
  type = Transient
  scheme = 'bdf2'

  start_time = 0
  end_time = 40
  dt = 1

  solve_type = 'PJFNK'
  line_search = 'basic'
  nl_rel_tol = 1e-7
  nl_abs_tol = 1e-5
  nl_max_its = 20

  l_tol = 1e-3
  l_max_its = 60

  [./Quadrature]
    type = TRAP
    order = FIRST
  [../]
[]

[Outputs]
  csv = true
  show = 'E_hw_wet_well'
  execute_on = 'TIMESTEP_END'
[]
