#!/bin/bash
javac Main.java
jar cmf manifest.txt App.jar *.class
