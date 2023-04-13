# ! /bin/bash

mpirun -np 16 pw.x < gr.scf.in > gr.scf.out
mpirun -np 16 pw.x < gr.nscfband.in > gr.nscfband.out
mpirun -np 16 bands.x < gr.band.in > gr.band.out

echo 'job done!'

