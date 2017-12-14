(ns core)

(defn hello
  ([] (hello "world!"))
  ([x] (.log js/console (str "hello " x))))

(def database
  {:users [{:firstname "Magnus" :lastname "Pym"}
           {:firstname "Jack" :lastname "Brotherhood"}]})

(->> (:users database)
     (map :firstname)
     (map hello))
