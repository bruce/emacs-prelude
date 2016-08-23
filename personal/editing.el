;;; editing.el --- basic settings

;;; Commentary:
;; Random settings

;;; Code:
(add-hook 'fundamental-mode-hook
          (lambda () (setq mode-require-final-newline nil)))
(setq-default tab-width 2)

(global-key-binding (kbd "S-<return>") 'indent-new-comment-line)

;;; editing.el ends here
