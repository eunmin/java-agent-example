#!/bin/bash
cd example-app
./build.sh
cd ..
cd agent-clj
lein uberjar
cd ..
java -javaagent:./agent-clj/target/agent-clj-0.1.0-SNAPSHOT-standalone.jar -jar ./example-app/App.jar 
