#stdev=0.01
COUNTER=0
# m=()
# T=()
# q=()
# alpha=()
m=(0.0443428566999937	0.0448749167246335	0.0453222053731713	0.0457274009596579	0.0461068956716845	0.0464692728880544	0.0468198414666373	0.0471622812860092	0.0474993862325747	0.0478334572046010	0.0481665427953991	0.0485006137674253	0.0488377187139908	0.0491801585333627	0.0495307271119456	0.0498931043283155	0.0502725990403421	0.0506777946268287	0.0511250832753666	0.0516571433000063)
T=(372.433805804218	376.902555781999	380.659314504042	384.062535351793	387.249895625825	390.293486767065	393.237897651559	396.114035426138	398.945365826302	401.751214000726	404.548785999274	407.354634173698	410.185964573862	413.062102348441	416.006513232935	419.050104374175	422.237464648207	425.640685495958	429.397444218001	433.866194195782)
q=(18476.1902916640	18697.8819685973	18884.2522388214	19053.0837331908	19211.2065298685	19362.1970366893	19508.2672777655	19650.9505358372	19791.4109302395	19930.6071685837	20069.3928314163	20208.5890697606	20349.0494641628	20491.7327222345	20637.8029633107	20788.7934701315	20946.9162668092	21115.7477611786	21302.1180314027	21523.8097083360)
alpha=(18.4761902916640	18.6978819685973	18.8842522388214	19.0530837331908	19.2112065298685	19.3621970366893	19.5082672777655	19.6509505358372	19.7914109302395	19.9306071685837	20.0693928314163	20.2085890697606	20.3490494641628	20.4917327222345	20.6378029633107	20.7887934701315	20.9469162668092	21.1157477611786	21.3021180314027	21.5238097083360)

for i in {0..19}
do
  ../../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${m[i]} Outputs/file_base=m$i -j20
  ../../../relap-7-opt -i test.i Components/vapor_inlet/T=${T[i]} Outputs/file_base=T$i -j20
  ../../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${alpha[i]} Outputs/file_base=alpha$i -j20
  ../../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${q[i]} Outputs/file_base=q$i -j20
done

../../../relap-7-opt -i test.i Outputs/file_base=nominal -j20