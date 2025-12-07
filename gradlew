#!/usr/bin/env sh
set -e

# Minimal JVM config
DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"

# Resolve script location
APP_HOME=$(cd "$(dirname "$0")" && pwd)

# Load wrapper JAR
CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# Run Gradle Wrapper
exec java $DEFAULT_JVM_OPTS -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
