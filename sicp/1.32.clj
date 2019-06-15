(defn accumulate [combainer null-value term a next b]
    (if (term a b)
        null-value
        (combainer a (accumulate combainer null-value term (next a) next b))))

(defn sum-combainer [a b]
    (+ a b))

(defn product-combainer [a b]
    (* a b))

(defn term [a b] (> a b))



(defn accumulate-iter [combainer null-value term a next b]
  (defn iter [a result]
    (if (term a b)
      result
      (iter (next a) (combainer a result))))
  (iter a null-value))

(print (accumulate sum-combainer 0 term 4 inc 7) "\n")
(print (accumulate product-combainer 1 term 4 inc 7) "\n")
(print (accumulate-iter sum-combainer 0 term 4 inc 7) "\n")
(print (accumulate-iter product-combainer 1 term 4 inc 7) "\n")