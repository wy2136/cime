#!/usr/bin/env sh -f 
#===============================================================================
# Automatically generated module settings for titan
# DO NOT EDIT THIS FILE DIRECTLY!  Please edit env_mach_specific.xml 
# in your CASEROOT. This file is overwritten every time modules are loaded!
#===============================================================================

.  /opt/modules/default/init/sh
module rm PrgEnv-intel 
module rm PrgEnv-pgi 
module rm PrgEnv-cray 
module rm PrgEnv-gnu 
module rm PrgEnv-pathscale 
module rm intel 
module rm pgi 
module rm cray 
module rm pathscale 
module rm parallel-netcdf 
module rm netcdf 
module rm cmake 
module rm cray-mpich 
module rm cray-mpich2 
module rm cray-libsci 
module rm xt-libsci 
module rm cray-netcdf 
module rm cray-netcdf-hdf5parallel 
module rm cray-parallel-netcdf 
if [ "$COMPILER" = "pgicuda" ]
then
	module load PrgEnv-pgi
	module switch pgi pgi/14.2.0
	module load cray-mpich/7.0.4
	module load cray-libsci/13.0.1
	module load esmf/5.2.0rp2
	module switch atp atp/1.7.5
	module add cudatoolkit
fi
if [ "$COMPILER" = "pgi" ]
then
	module load PrgEnv-pgi
	module switch pgi pgi/14.2.0
	module load cray-mpich/7.0.4
	module load cray-libsci/13.0.1
	module load esmf/5.2.0rp2
fi
if [ "$COMPILER" = "intel" ]
then
	module load PrgEnv-pgi
	module switch intel intel/14.0.2.144
	module load cray-mpich/7.0.4
fi
if [ "$MPILIB" = "mpi-serial" ]
then
	module load cray-netcdf/4.3.0
fi
if [ "$MPILIB" != "mpi-serial" ]
then
	module load cray-netcdf-hdf5parallel/4.3.2
	module load cray-parallel-netcdf/1.5.0
fi
module load subversion 
module load cmake/2.8.11.2 
if [ "$COMPILER" = "pgicuda" ]
then
	export CRAY_CPU_TARGET=istanbul
	export CRAY_CUDA_PROXY=1
fi
if [ "$COMPILER" = "pgi" ]
then
	export CRAY_CPU_TARGET=istanbul
fi
setenv MPICH_ENV_DISPLAY 1
setenv MPICH_VERSION_DISPLAY 1
setenv MPICH_CPUMASK_DPSPLAY 1
setenv MPICH_RANK_REORDER_DISPLAY 1
setenv MPSTKZ 64M
setenv OMP_STACKSIZE 64M
