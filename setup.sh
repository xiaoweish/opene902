#!/bin/bash

export TOOL_EXTENSION=/path/to/t-head/toolchain/xuantie-900-gcc-elf-newlib-x86_64-V2.8.1/bin
echo 'Toolchain path($TOOL_EXTENSION):'
echo "    $TOOL_EXTENSION"

module purge
module load vcs verdi

export REPO_TOP=`git rev-parse --show-toplevel`
alias go='cd $REPO_TOP'

mkdir $REPO_TOP/smart_run/work

chmod 755 $REPO_TOP/smart_run/tests/bin/Srec2vmem

export CODE_BASE_PATH=$REPO_TOP/E902_RTL_FACTORY

echo "Example command: make runcase CASE=hello_world DUMP=on SIM=vcs"
