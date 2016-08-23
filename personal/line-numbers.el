;;; line-numbers.el --- setup line numbering

;;; Commentary:
;; I want line numbers everywhere.

(global-linum-mode 1)

(defadvice linum-update-window (around linum-dynamic activate)
  (let* ((w (length (number-to-string
                     (count-lines (point-min) (point-max)))))
         (linum-format (concat " %" (number-to-string w) "d ")))
    ad-do-it))

;;; Code:
(prelude-require-package 'hlinum)
(hlinum-activate)

(prelude-require-package 'linum-off)

;;; line-numbers.el ends here.
