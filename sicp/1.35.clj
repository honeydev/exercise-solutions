(def tolerance 0.00001)

(defn fixed-point [f first-guess]
  (defn close-enough? [v1 v2]
    ; (print v1 v2)
    (< (Math/abs (- v1 v2)) tolerance))
  (defn trys [guess]
    (let [next-step (f guess)]
      ; (print next-step)
      (if (close-enough? guess next-step)
        next-step
        (trys next-step))))
  (trys first-guess))

 
(print (fixed-point (fn [x] (+ 1 (/ 1 x))) 1.0))