#!/bin/sh 
     
# यह स्क्रिप्ट GitHub Actions और Termux दोनों के लिए काम करती है। 
# यह सुनिश्चित करती है कि Gradle Wrapper JAR मौजूद है और एक्जीक्यूटेबल है। 
     
# Check if the script itself is executable, make it so if not 
if [ ! -x "$0" ]; then 
    chmod +x "$0" 
fi 
     
# Ensure the wrapper JAR is executable 
if [ -f "gradle/wrapper/gradle-wrapper.jar" ]; then 
    chmod +x gradle/wrapper/gradle-wrapper.jar 
fi 
     
# Execute the wrapper JAR 
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@" 

