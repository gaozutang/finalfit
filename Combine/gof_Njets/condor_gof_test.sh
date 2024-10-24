#!/bin/sh
ulimit -s unlimited
set -e
cd /eos/home-c/chpan/finalfit/CMSSW_10_2_13/src
export SCRAM_ARCH=slc7_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
eval `scramv1 runtime -sh`
cd /eos/user/c/chpan/finalfit/CMSSW_10_2_13/src/flashggFinalFit/Combine/gof_Njets

if [ $1 -eq 0 ]; then
  combine ../Datacard_mu_differential.root --algo saturated --freezeParameters MH -t 1000 -M GoodnessOfFit -m 125.38 -s -1 -n .goodnessOfFit_toys
fi

