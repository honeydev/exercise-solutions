(defn filtered-accumulate [combainer filter null-value term a next b]
  (if (term a b)
    a
    (combainer 
     (filter a b null-value) 
     (filtered-accumulate combainer filter null-value term (next a) next b))))

(defn sum-combainer [a b]
  (+ a b))
1.33.clj
(defn product-combainer [a b] (* a b))
(defn term [a b] (= a b))


(defn prime-two? [a b null-value]
  (defn iter [i]
    (cond
      (and (= (rem a i) 0) (= (rem b i) 0)) false
      (or (= i a) (= i b)) true
      :else (iter (inc i))))

  (if (iter 2) a null-value))
    

(print (filtered-accumulate product-combainer prime-two? 1 term 1 inc 7))