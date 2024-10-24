# Assuming each job handles 10 toys if the total number is 1000 and there are 100 jobs
toy_start=$(( $1 * 10 ))
# toy_end=$(( $toy_start + 99 ))

combine ../Datacard_mu_differential.root --algo saturated -t 10 -M GoodnessOfFit -m 125.38 --freezeParameters MH -s $toy_start --toysFrequentist -n .goodnessOfFit_toys${1}
mv higgsCombine.goodnessOfFit_toys$1.GoodnessOfFit.mH125.38.$(toy_start).root /eos/home-c/chpan/finalfit/CMSSW_10_2_13/src/flashggFinalFit/Combine/gof_Njets/
