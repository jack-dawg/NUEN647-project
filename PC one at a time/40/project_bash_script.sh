#stdev=0.01
COUNTER=0
# m=()
# T=()
# q=()
# alpha=()
m=(0.0425023786360566	0.0429688509433564	0.0433566929438717	0.0437042378189493	0.0440261085006434	0.0443298413930201	0.0446199655649022	0.0448994767787598	0.0451704932758214	0.0454345893860544	0.0456929821477949	0.0459466434449459	0.0461963713074389	0.0464428374081601	0.0466866199965766	0.0469282275750553	0.0471681165164968	0.0474067046376964	0.0476443820518628	0.0478815202099091	0.0481184797900909	0.0483556179481372	0.0485932953623036	0.0488318834835032	0.0490717724249447	0.0493133800034234	0.0495571625918399	0.0498036286925611	0.0500533565550541	0.0503070178522051	0.0505654106139456	0.0508295067241786	0.0511005232212402	0.0513800344350978	0.0516701586069799	0.0519738914993566	0.0522957621810507	0.0526433070561283	0.0530311490566436	0.0534976213639434)
T=(356.975707231796	360.893588704461	364.151057506705	367.070072431446	369.773450875717	372.324490783251	374.761231614381	377.108834653271	379.385090919738	381.603223145580	383.773453185074	385.903943850624	388.001397762375	390.071456272911	392.118976075414	394.148228060074	396.163045283868	398.166936972652	400.163179671010	402.154893179684	404.145106820316	406.136820328990	408.133063027348	410.136954716132	412.151771939926	414.181023924586	416.228543727089	418.298602237625	420.396056149376	422.526546814926	424.696776854421	426.914909080262	429.191165346729	431.538768385619	433.975509216749	436.526549124283	439.229927568554	442.148942493295	445.406411295539	449.324292768204)
q=(17709.3244316903	17903.6878930651	18065.2887266132	18210.0990912289	18344.2118752681	18470.7672470917	18591.6523187092	18708.1153244832	18821.0388649256	18931.0789108560	19038.7425615812	19144.4347687275	19248.4880447662	19351.1822534000	19452.7583319069	19553.4281562730	19653.3818818737	19752.7935990402	19851.8258549428	19950.6334207955	20049.3665792045	20148.1741450572	20247.2064009598	20346.6181181263	20446.5718437270	20547.2416680931	20648.8177466000	20751.5119552338	20855.5652312726	20961.2574384188	21068.9210891440	21178.9611350744	21291.8846755168	21408.3476812908	21529.2327529083	21655.7881247319	21789.9009087711	21934.7112733868	22096.3121069349	22290.6755683097)
alpha=(17.7093244316903	17.9036878930651	18.0652887266132	18.2100990912289	18.3442118752681	18.4707672470917	18.5916523187092	18.7081153244832	18.8210388649256	18.9310789108560	19.0387425615812	19.1444347687275	19.2484880447662	19.3511822534000	19.4527583319069	19.5534281562730	19.6533818818737	19.7527935990402	19.8518258549428	19.9506334207955	20.0493665792045	20.1481741450572	20.2472064009598	20.3466181181263	20.4465718437270	20.5472416680931	20.6488177466000	20.7515119552338	20.8555652312726	20.9612574384188	21.0689210891440	21.1789611350744	21.2918846755168	21.4083476812908	21.5292327529083	21.6557881247319	21.7899009087711	21.9347112733868	22.0963121069349	22.2906755683097)

for i in {0..39}
do
  ../../../relap-7-opt -i test.i Components/vapor_inlet/m_dot=${m[i]} Outputs/file_base=m$i -j20
  ../../../relap-7-opt -i test.i Components/vapor_inlet/T=${T[i]} Outputs/file_base=T$i -j20
  ../../../relap-7-opt -i test.i Components/wet_well_stratified/alpha_s=${alpha[i]} Outputs/file_base=alpha$i -j20
  ../../../relap-7-opt -i test.i Components/wet_well_stratified/cooling_rate=${q[i]} Outputs/file_base=q$i -j20
done

../../../relap-7-opt -i test.i Outputs/file_base=nominal -j20