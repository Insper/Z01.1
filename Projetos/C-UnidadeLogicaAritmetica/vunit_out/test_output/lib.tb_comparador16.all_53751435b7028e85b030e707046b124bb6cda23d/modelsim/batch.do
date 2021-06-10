onerror {quit -code 1}
<<<<<<< HEAD
source "/home/borg/Desktop/Z01.1-F-5judeus2ateu/Projetos/C-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_comparador16.all_53751435b7028e85b030e707046b124bb6cda23d/modelsim/common.do"
=======
source "/home/borg/Z01.1-F-5judeus2ateu/Projetos/C-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_comparador16.all_53751435b7028e85b030e707046b124bb6cda23d/modelsim/common.do"
>>>>>>> bf405019323e2521e9df2b0e06099d839c1d6a44
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
