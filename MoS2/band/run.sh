# ! /bin/bash

mpirun -np 20 pw.x < MoS2soc.scf.in > MoS2soc.scf.out
mpirun -np 20 pw.x < MoS2soc.nscfband.in > MoS2soc.nscfband.out
mpirun -np 20 bands.x < MoS2soc.band.in > MoS2soc.band.out

echo 'job done!'

