onerror {quit -code 1}
<<<<<<< HEAD
source "/home/borg/Desktop/Z01.1-F-5judeus2ateu/Projetos/C-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_inversor16.all_cf124a04e75272dadd8625f1aac52b48d9b344c6/modelsim/common.do"
=======
source "/home/borg/Z01.1-F-5judeus2ateu/Projetos/C-UnidadeLogicaAritmetica/vunit_out/test_output/lib.tb_inversor16.all_cf124a04e75272dadd8625f1aac52b48d9b344c6/modelsim/common.do"
>>>>>>> bf405019323e2521e9df2b0e06099d839c1d6a44
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
