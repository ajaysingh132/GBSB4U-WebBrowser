#!/usr/bin/env sh
set -e

DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'

CLASSPATH="$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar"

exec java $DEFAULT_JVM_OPTS -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
