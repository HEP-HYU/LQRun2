# Genproduction
### cards
The madgraph cards are used to produce the gridpack.
Gridpack is used to make LHE file.

### config
```
* LQ_cmutau_cfg.py *
Initial configuration file for LHE production and Pythia Hadornization.
```
```
* crab_cfg_LQ_($year)($step).py *
Different configuration for each year of run and steps.
Order of steps : LHE-GEN-SIM -> RAW -> AOD -> MINIAOD -> NANOAOD
```
### script
Scripts for establishing work space and cmsRun configuration file output.
