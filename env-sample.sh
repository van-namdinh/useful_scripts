# -----------------------------------------------------------------------------
# Project name   :
# File name      : env-sample.sh
# Created date   : Th08 24 2018
# Author         : Van-Nam DINH
# Last modified  : Th08 24 2018 10:59
# Guide          :
# -----------------------------------------------------------------------------
#!/bin/bash

export PROJECT_DIR=`pwd`
proj_name=TEST
export PROJECT_NAME=${proj_name}.`date +%Y-%m-%d`
mkdir "${PROJECT_DIR}/${PROJECT_NAME}"
#RTL place
mkdir "${PROJECT_DIR}/${PROJECT_NAME}/rtl"
export RTL_DIR="${PROJECT_DIR}/${PROJECT_NAME}/rtl"
mkdir "${PROJECT_DIR}/${PROJECT_NAME}/tb"
export TB_DIR="${PROJECT_DIR}/${PROJECT_NAME}/tb"

# SIM Place
mkdir "${PROJECT_DIR}/${PROJECT_NAME}/sim"
export SIM_DIR="${PROJECT_DIR}/${PROJECT_NAME}/sim"


# 	SYNOPSYS_HOME=""
# 	MENTOR_HOME=""
# 	MODELSIM_HOME=""
# 	DESIGN_KIT_PATH=""


# 	export DESIGN_NAME=""

#examplenotes:

# 	export DESIGN_NETLIST="${PROJECT_DIR/syn/results/${DESIGN_NAME}.mapped.v"
# 	export DESIGN_VCD_FILE="${PROJECT_DIR/sim/${DESIGN_NAME}.vcd.gz"
# 	export DESIGN_SDF_FILE="${PROJECT_DIR/syn/results/${DESIGN_NAME}.mapped.sdf"
# 	export DESIGN_CONSTRAINT_FILE="${DESIGN_NAME}.mapped.sdc"
SYNOPSYS_HOME="/home/apps/synopsys/"
MENTOR_HOME="/home/apps/mentor/"
source ${SYNOPSYS_HOME}/synopsys.sh
#source ${SYNOPSYS_HOME}/env.sh
source ${MENTOR_HOME}/env.sh

#Return result
echo "
---------------------------------------------------------------
PROJECT PARAMETERS
---------------------------------------------------------------
Project directory 		= 	${PROJECT_DIR}
Project name 			= 	${PROJECT_NAME}
Project rtl DIR 		= 	${RTL_DIR}
Project TB DIR 			= 	${TB_DIR}
Project SIM DIR 		= 	${SIM_DIR}
SYNOPSYS_HOME 			=  	${SYNOPSYS_HOME}
MENTOR_HOME 			= 	${MENTOR_HOME}
---------------------------------------------------------------
"
cd "${PROJECT_DIR}/${PROJECT_NAME}"
