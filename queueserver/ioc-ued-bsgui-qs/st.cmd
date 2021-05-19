#!/bin/bash
source /cds/group/pcds/pyps/apps/hutch-python/ued/uedenv

# Why are these set to the wrong numbers in startup somewhere?
export EPICS_CA_SERVER_PORT=5064
export EPICS_CA_REPEATER_PORT=5065

export QS_STARTUP_DIR=/cds/group/pcds/pyps/apps/hutch-python/ued/queueserver/ioc-ued-bsgui-qs

cd "${QS_STARTUP_DIR}"

echo ""
echo "* The working directory for the IOC is: ${PWD}"
echo "* The startup directory is: ${QS_STARTUP_DIR}"

echo ""
echo "* Rebuilding list of plans and devices..."
echo "! Well, not for now. Permissions need to be fixed, and exiting the session hangs."
# qserver-list-plans-devices --startup-dir "${QS_STARTUP_DIR}"

echo ""
echo "* Starting the RE manager..."
start-re-manager --startup-dir "${QS_STARTUP_DIR}"
