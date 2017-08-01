(defmacro λ (&args) `(lambda ,@args))
(defmacro dλ (&args) `(defun ,@args))

(defun repeat (v x)
  (with (l '())
    (for i 1 x 1
      (push-cdr! l v))
    l))
