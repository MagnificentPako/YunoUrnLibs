(import lua/math (random randomseed))
(import lua/os (clock))

(randomseed (clock))

(defmacro λ (&args) `(lambda ,@args))
(defmacro dλ (&args) `(defun ,@args))

(dλ repeat (v x)
  (with (l '())
    (for i 1 x 1
      (push-cdr! l v))
    l))

(dλ take-random (x)
    (nth x (random 1 (n x))))
