************************************************
// Tom Robinson - Pre Registration Plan TT 17 \\
*************************************************

//cd
cd "/Users/Tom/OneDrive/MPhil/Methods/Experimental Research/Pre-Reg Plan"

//Power curve analysis
power twoproportions .5, test(chi2) diff(0.03,0.05,0.07,0.09,0.11) n(500,1000,1500,2000,2500,3000,4000) nratio(0.2) graph

//ITT - covariates excluded for brevity, per issue
reg Y i.Z if(Issue==1), cl(Participant)
reg Y i.Z if(Issue==2), cl(Participant)
reg Y i.Z if(Issue==3), cl(Participant)
reg Y i.Z if(Issue==4), cl(Participant)
reg Y i.Z if(Issue==5), cl(Participant)
reg Y i.Z if(Issue==6), cl(Participant)
reg Y i.Z if(Issue==7), cl(Participant)
reg Y i.Z if(Issue==8), cl(Participant)

//ITT - cross issue
reg Y i.z i.Issue, cl(Participant)

