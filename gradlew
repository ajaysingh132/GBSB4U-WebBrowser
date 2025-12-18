#!/bin/sh 
set -e 
 
# Gradle Wrapper Script - Auto-generates if missing 
# यह स्क्रिप्ट सुनिश्चित करती है कि gradlew script और jar सही जगह पर हों। 
# यह सिर्फ एक placeholder है; असली jar gradlew wrapper कमांड से आएगा। 
 
SCRIPT_DIR=$(dirname "$0") 
cd "$SCRIPT_DIR" 
 
# यदि gradlew jar मौजूद नहीं है, तो Gradle Wrapper कमांड चलाकर इसे generate करें। 
# यह GitHub Actions में ./gradlew wrapper --gradle-version 8.6 कमांड द्वारा किया जाएगा। 
# इस gradlew स्क्रिप्ट का मुख्य उद्देश्य gradlew wrapper कमांड को चलाना है। 
 
# ensure the wrapper jar is executable 
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then 
  chmod +x gradle/wrapper/gradle-wrapper.jar 
fi 
 
# execute the wrapper 
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@" 


