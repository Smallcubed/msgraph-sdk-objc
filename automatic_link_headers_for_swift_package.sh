#!/bin/sh
include_folder_path=MSGraphClientSDK/MSGraphClientSDK/include

#Clean the include folder
find ${include_folder_path} -type l -delete

cd ${include_folder_path}

#equivalent to:  s.public_header_files = "MSGraphClientSDK/MSGraphClientSDK/Authentication/*.h"
find ../Authentication -name "*.h" | sort | uniq | while read header; do
	ln -s "${header}"
done

#equivalent to:  s.public_header_files = "MSGraphClientSDK/MSGraphClientSDK/Common/*.h"
find ../Common -name "*.h" | sort | uniq | while read header; do
	ln -s "${header}"
done

#equivalent to:  s.public_header_files = "MSGraphClientSDK/MSGraphClientSDK/Middleware/*.h"
find ../Middleware -name "*.h" | sort | uniq | while read header; do
	ln -s "${header}"
done

#equivalent to:  s.public_header_files = "MSGraphClientSDK/MSGraphClientSDK/GraphContent/*.h"
find ../GraphContent -name "*.h" | sort | uniq | while read header; do
	ln -s "${header}"
done

#equivalent to:  s.public_header_files = "MSGraphClientSDK/MSGraphClientSDK/HTTPClient/*.h"
find ../HTTPClient -name "*.h" | sort | uniq | while read header; do
	ln -s "${header}"
done

#equivalent to:  s.public_header_files = "MSGraphClientSDK/MSGraphClientSDK/GraphTasks/*.h"
find ../GraphTasks -name "*.h" | sort | uniq | while read header; do
	ln -s "${header}"
done

