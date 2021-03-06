#!/bin/bash
mv params_lc_resamp/skysim5000_v1.0.0/logs/*.err params_lc_resamp/skysim5000_v1.0.0/logs/old/.
mv params_lc_resamp/skysim5000_v1.0.0/logs/*.out params_lc_resamp/skysim5000_v1.0.0/logs/old/.
qsub -n 1 -t 720 -A LSSTsky -o params_lc_resamp/skysim5000_v1.0.0/logs/0_1_grp1.out -e params_lc_resamp/skysim5000_v1.0.0/logs/0_1_grp1.err  --debuglog=params_lc_resamp/skysim5000_v1.0.0/logs/0_1_grp1.cobalt  ./lc_resample.py params_lc_resamp/skysim5000_v1.0.0/skysim5000_v1.0.0_z_0_1_hp:grp1.param
qsub -n 1 -t 720 -A LSSTsky -o params_lc_resamp/skysim5000_v1.0.0/logs/1_2_grp1.out -e params_lc_resamp/skysim5000_v1.0.0/logs/1_2_grp1.err  --debuglog=params_lc_resamp/skysim5000_v1.0.0/logs/1_2_grp1.cobalt  ./lc_resample.py params_lc_resamp/skysim5000_v1.0.0/skysim5000_v1.0.0_z_1_2_hp:grp1.param
qsub -n 1 -t 720 -A LSSTsky -o params_lc_resamp/skysim5000_v1.0.0/logs/2_3_grp1.out -e params_lc_resamp/skysim5000_v1.0.0/logs/2_3_grp1.err  --debuglog=params_lc_resamp/skysim5000_v1.0.0/logs/2_3_grp1.cobalt  ./lc_resample.py params_lc_resamp/skysim5000_v1.0.0/skysim5000_v1.0.0_z_2_3_hp:grp1.param
