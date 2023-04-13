# ! /bin/bash

mpirun -np 16 pw.x < gr.scf.in > gr.scf.out
mpirun -np 16 pw.x < gr.nscf.in > gr.nscf.out
wannier90.x -pp gr
mpirun -np 16 pw2wannier90.x < gr.pw2wan.in > gr.pw2wan.out
mpirun -np 16 wannier90.x gr
