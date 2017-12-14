(ns core
  (:require [core.utils :refer [log dangerous!]]))

(try
  (dangerous!)
  (catch #?(:clj Exception
            :cljs :default) e
    (log e)))
