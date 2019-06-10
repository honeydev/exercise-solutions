(defn sum [term a next b]
    (defn iter [a result]
        (if (term a b)
            result
            (iter (next a) (+ a result))
        ))
        (iter a 0 ))


(print (sum (fn [a b] (> a b)) 2 inc 10))