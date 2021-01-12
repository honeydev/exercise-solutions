(defn find-multiplicity [base-number number]
  (defn iteration [acc counter]
    ; (print acc counter)
    (if (not= (rem acc base-number) 0)
      counter
      (iteration (/ acc base-number) (inc counter))))
  (iteration number 0))

(defn make-pair [a b] 
  (fn [] (int (* (Math/pow 2 a) (Math/pow 3 b)))))

(defn car [pair] (find-multiplicity 2 (pair)))
(defn cdr [pair] (find-multiplicity 3 (pair)))

(def p (make-pair 2 4))

(println (find-multiplicity 2 (p)))
(println (car p))
(println (cdr p))
