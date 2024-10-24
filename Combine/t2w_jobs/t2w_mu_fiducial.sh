#!/bin/bash

cd /eos/user/c/chpan/finalfit/CMSSW_10_2_13/src/flashggFinalFit/Combine

eval `scramv1 runtime -sh`

text2workspace.py Datacard.txt -o Datacard_mu_fiducial.root -m 125 higgsMassRange=122,128 -P HiggsAnalysis.CombinedLimit.PhysicsModel:multiSignalModel --PO "map=.*/ggH_in.*:r_ggH_in[1,0,2]" --PO "map=.*/ttH_in.*:r_ttH_in[1,0,2]" --PO "map=.*/qqH_in.*:r_VBF_in[1,0,2]" --PO "map=.*/vH_in.*:r_VH_in[1,0,2]"