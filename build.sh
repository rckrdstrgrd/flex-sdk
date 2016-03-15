#!/bin/bash 
while getopts ":t:" opt; do
	case $opt in
    t)
		case $OPTARG in
			mxml)
			/flex_sdk_4.6/bin/mxmlc -o /output/${TARGET}.swf /src/${TARGET}.mxml
			exit 1
 			;;
			as)
			/flex_sdk_4.6/bin/mxmlc -o /output/${TARGET}.swf /src/${TARGET}.as -static-link-runtime-shared-libraries=true -source-path=/src
			exit 1
			;;
		esac
      	;;
    \?)
      	echo "Invalid option: -$OPTARG" >&2
      	exit 1
      	;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
