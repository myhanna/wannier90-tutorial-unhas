# ! /bin/bash

mpirun -np 20 pw.x < MoS2soc.scf.in > MoS2soc.scf.out
mpirun -np 20 pw.x < MoS2soc.nscf.in > MoS2soc.nscf.out
wannier90.x -pp MoS2soc
mpirun -np 20 pw2wannier90.x < MoS2soc.pw2wan.in > MoS2soc.pw2wan.out
mpirun -np 20 wannier90.x MoS2soc
