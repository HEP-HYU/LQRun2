#!/bin/bash
export SCRAM_ARCH=slc6_amd64_gcc700
source /cvmfs/cms.cern.ch/cmsset_default.sh
if [ -r CMSSW_10_2_18/src ] ; then 
    echo release CMSSW_10_2_18 already exists
else
    scram p CMSSW CMSSW_10_2_18
fi
cd CMSSW_10_2_18/src
eval `scram runtime -sh`


scram b
cd ../../
cmsDriver.py step1 --filein file:LQ_2017_mini.root --fileout file:LQ_2017_nano.root --mc --eventcontent NANOAODSIM --datatier NANOAODSIM --conditions 102X_mc2017_realistic_v7 --step NANO --nThreads 2 --era Run2_2017,run2_nanoAOD_94XMiniAODv2 --python_filename LQ_2017_nano__cfg.py --no_exec --customise Configuration/DataProcessing/Utils.addMonitoring -n 10000 || exit $? ; 
