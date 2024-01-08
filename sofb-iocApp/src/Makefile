TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = sofb-ioc
# sofb-ioc.dbd will be created and installed
DBD += sofb-ioc.dbd

# sofb-ioc.dbd will be made up from these files:
sofb-ioc_DBD += base.dbd

# Include dbd files from all support applications:
#sofb-ioc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#sofb-ioc_LIBS += xxx

# sofb-ioc_registerRecordDeviceDriver.cpp derives from sofb-ioc.dbd
sofb-ioc_SRCS += sofb-ioc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
sofb-ioc_SRCS_DEFAULT += sofb-iocMain.cpp
sofb-ioc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#sofb-ioc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
sofb-ioc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

