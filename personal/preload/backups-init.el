;;; backups-init.el --- Configures backup files

;;; Commentary:
;; Use as a customization in your .emacs.d

;;; Code:

(setq backup-directory-alist `(("." . "~/.emacs-backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs-auto-saves")))

;;; backups-init.el ends here
