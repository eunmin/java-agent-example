#!/bin/bash
javac Example.java
jar cmf manifest.txt yourAwesomeAgent.jar *.class
