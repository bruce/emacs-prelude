;;; javascript.el --- some js defaults

;;; Commentary:
;; JavaScript is fun, provided you don't mind typing.

;;; Code:
(setq-default js-indent-level 2)
(setq-default js2-basic-offset 2)

;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'js2-mode)

;;; javascript.el ends here
