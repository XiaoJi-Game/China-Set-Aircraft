@ECHO OFF
:start
python nml_patcher.py -f "total.pnml" -o "csa.nml" -b 1 -v 1
nmlc csa.nml -o chinasetaircraft.grf
PAUSE