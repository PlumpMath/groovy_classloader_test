echo "Moving class files to /tmp for seperate classloaders..."
## MAKE THE TMP DIRS FOR HOLD THE SEPERATE CLASSES FOR THE CLASS LOADER
mkdir /tmp/cla
mkdir /tmp/clb

## MOVE THE FILES TO THE SEPERATE DIRS
mv ./build/classes/main/LoadA.class /tmp/cla
mv ./build/classes/main/LoadB.class /tmp/clb

echo ""
echo "Running the program..."

## RUN THE MAIN CLASS FROM THE MAIN CLASSLOADER
java -classpath $GROOVY_HOME/lib/groovy-2.4.3.jar:./build/classes/main/ Main