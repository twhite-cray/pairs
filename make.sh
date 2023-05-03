#!/bin/bash
module load rocm
module -t list
set -x
hipcc -ggdb -O --offload-arch=gfx90a -I${CRAY_MPICH_DIR}/include -o pairs pairs.cc -L${CRAY_MPICH_DIR}/lib -lmpi ${PE_MPICH_GTL_DIR_amd_gfx908} ${PE_MPICH_GTL_LIBS_amd_gfx908}
