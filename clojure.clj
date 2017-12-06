(ns core
  (:require
    [clojure.tools.logging :as log])
  (:import
    (java.util UUID)))

(defn inc-twice
  "Increment twice."
  [x]
  {:pre [(number? x)]
   :post [(number? %)]}
  (inc (inc x)))

(defmacro with-log
  [& body]
  `(let [res# (do ~@body)]
     (log/info "Result: %s" res#)
     res#))

(def alphabet
  (->> (range (int \a), (inc (int \z)))
       (map #(char %))))

(defn dash? [x] (re-matches #"-" x))

(defn uuid
  []
  (.toString (UUID/randomUUID)))
