(defn product-rec [term num next]
    
    (if (term num)
        num
     (* num (product-rec term (next num) next))))

(print (product-rec (fn [a] (= a 1)) 6 dec))
(print "\n")
(defn product-iter [term num next]
    (defn iter [num result]
        (if (term num)
            result
            (iter (next num) (* num result))))
    (iter num 1))

(print (product-iter (fn [a] (= a 1)) 6 dec))