# आपका-रेपो-नाम/gradlew 
#!/bin/sh 
set -e 
 
# यह स्क्रिप्ट सुनिश्चित करती है कि gradlew script और jar सही जगह पर हों। 
# यह सिर्फ एक placeholder है; असली jar gradlew wrapper कमांड से आएगा। 
 
SCRIPT_DIR=$(dirname "$0") 
cd "$SCRIPT_DIR" 
 
# ensure the wrapper jar is executable 
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then 
  chmod +x gradle/wrapper/gradle-wrapper.jar 
fi 
 
# execute the wrapper 
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@" 


