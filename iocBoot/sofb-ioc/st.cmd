#!../../bin/linux-x86_64/sofb-ioc

< iocBoot/sofb-ioc/envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/sofb-ioc.dbd"
sofb_ioc_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/sofb.db")
dbLoadRecords("db/delta.db", "CORRECTOR_COUNT=64,BPM_COUNT=96,RF_BUFF_LEN=100")

cd "${TOP}/iocBoot/${IOC}"
iocInit
