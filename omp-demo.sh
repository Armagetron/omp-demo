#PBS -N "openmp"
#PBS -j oe
#PBS -l feature=mpp2:test
#PBS -l nodes=1:ppn=24
#PBS -l walltime=1:00:00

module load intel/18.0.0.128

export OMP_NUM_THREADS=1
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 1 -cc none ./openmp_1
export OMP_NUM_THREADS=2
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 2 -cc none ./openmp_1
export OMP_NUM_THREADS=3
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 3 -cc none ./openmp_1
export OMP_NUM_THREADS=4
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 4 -cc none ./openmp_1
export OMP_NUM_THREADS=6
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 6 -cc none ./openmp_1
export OMP_NUM_THREADS=12
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 12 -cc none ./openmp_1
export OMP_NUM_THREADS=24
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 24 -cc none ./openmp_1

export OMP_NUM_THREADS=1
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 1 -cc none ./openmp_2
export OMP_NUM_THREADS=4
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 4 -cc none ./openmp_2
export OMP_NUM_THREADS=12
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 12 -cc none ./openmp_2
export OMP_NUM_THREADS=24
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 24 -cc none ./openmp_2

export OMP_NUM_THREADS=1
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 1 -cc none ./openmp_3
export OMP_NUM_THREADS=4
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 4 -cc none ./openmp_3
export OMP_NUM_THREADS=12
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 12 -cc none ./openmp_3
export OMP_NUM_THREADS=24
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 24 -cc none ./openmp_3

export OMP_NUM_THREADS=1
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 1 -cc none ./openmp_4
export OMP_NUM_THREADS=4
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 4 -cc none ./openmp_4
export OMP_NUM_THREADS=12
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 12 -cc none ./openmp_4
export OMP_NUM_THREADS=24
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 24 -cc none ./openmp_4

export OMP_NUM_THREADS=1
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 1 -cc none ./openmp_5
export OMP_NUM_THREADS=2
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 2 -cc none ./openmp_5
export OMP_NUM_THREADS=3
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 3 -cc none ./openmp_5
export OMP_NUM_THREADS=4
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 4 -cc none ./openmp_5
export OMP_NUM_THREADS=6
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 6 -cc none ./openmp_5
export OMP_NUM_THREADS=12
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 12 -cc none ./openmp_5
export OMP_NUM_THREADS=24
aprun --p-state 1900000 -n 1 -N 1 -j 1 -d 24 -cc none ./openmp_5
