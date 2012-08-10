#!/bin/bash
if [ $# -gt 1 ]
then
	echo "Not more than one argument."
	exit 1
fi

if [ $# -eq 1 ]
then
	LOCAL_FOLDER=$1
else
	LOCAL_FOLDER=cdma_main
fi

svn co  http://192.168.110.97/svn/android_mtk_cdma_ics_6517/trunk/  ./android_mtk_cdma_ics_6517
svn co  http://192.168.110.97/svn/gionee_apps_cdma_ics_6517/trunk/ ./gionee_apps_cdma_ics_6517

cd android_mtk_cdma_ics_6517

./mk CBE7402A new
