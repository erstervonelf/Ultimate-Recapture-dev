JAR_PATH="/home/deck/Desktop/server/forge-1.7.10-10.13.4.1614-1.7.10-universal.jar"
MEMORY=${1:-10G}
java -Xmx$MEMORY -jar "$JAR_PATH"
