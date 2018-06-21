(ns agent-clj.core
  (:gen-class
   :methods [^:static [premain [String java.lang.instrument.Instrumentation] void]])
  (:import [java.lang.instrument Instrumentation]))

(defn -premain [^String args ^Instrumentation inst]
  (println "start agent-clj premain")
  (println "string size is "(.getObjectSize inst "string")))
