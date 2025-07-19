# This scripts uploads specific file to a BOX folder using the BOX CLI.
# It checks if the file exists before attempting the upload and reports success or failure.
#!/bin/bash

FILE = "$HOME/<<Insert File Path>>" # /Desktop/Test_DOC/test.csv"
FOLDER_ID = "<<Insert the Destination BOX Folder ID>>" #Base folder: 0

# Start Message
echo "Upload process starting"

# File Existence Check
if [! -f "$FILE"]; then
  echo "[ERROR] File not found: $FILE"
  exit 1
fi
# Upload BOX Command
echo "[INFO] Uploading FILE: $FILE to BOX folder: $FOLDER_ID"
box files:upload "$FILE" --parent-id "$FOLDER_ID"

#Checks
if [$? -eq 0]; then
  echo "[SUCCESS] Files Uploaded."
else
  echo "[ERROR] Upload Failed."
fi
