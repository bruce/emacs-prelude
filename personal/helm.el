;;; helm.el --- Load helm settings

;;; Commentary:
;; Some settings I like. ¯\_(ツ)_/¯

;;; Code:
(add-to-list 'load-path "~/.emacs.d/non_elpa/helm-find-files-in-project")
(require 'helm-find-files-in-project)

;; rebihnd tab to do persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

;; make TAB works in terminal
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)

;; list actions using C-z
(define-key helm-map (kbd "C-z")  'helm-select-action)

(define-key helm-grep-mode-map (kbd "<return>")  'helm-grep-mode-jump-other-window)
(define-key helm-grep-mode-map (kbd "n")  'helm-grep-mode-jump-other-window-forward)
(define-key helm-grep-mode-map (kbd "p")  'helm-grep-mode-jump-other-window-backward)

(setq

 helm-google-suggest-use-curl-p t

 ;; scroll 4 lines other window using M-<next>/M-<prior>
 helm-scroll-amount 4

 ;; do not display invisible candidates
 helm-quick-update t

 ;; be idle for this many seconds, before updating in delayed sources.
 helm-idle-delay 0.01

 ;; be idle for this many seconds, before updating candidate buffer
 helm-input-idle-delay 0.01

 ;; search for library in `require' and `declare-function' sexp.
 helm-ff-search-library-in-sexp t

 ;; open helm buffer in another window
 ;; helm-split-window-default-side 'other

 ;; open helm buffer inside current window, not occupy whole other window
 ;; helm-split-window-in-side-p

 helm-buffers-favorite-modes (append helm-buffers-favorite-modes
                                     '(picture-mode artist-mode))
 ;; limit the number of displayed canidates
 helm-candidate-number-limit 200

 ;; show all candidates when set to 0
 helm-M-x-requires-pattern 0

 helm-boring-file-regexp-list
 '("\\.git$" "\\.hg$" "\\.svn$" "\\.CVS$" "\\._darcs$" "\\.la$" "\\.o$" "\\.i$") ; do not show these files in helm buffer

 helm-ff-file-name-history-use-recentf t

 ;; move to end or beginning of source when reaching top or bottom of source.
 helm-move-to-line-cycle-in-source t

 ;; Needed in helm-buffers-list
 ido-use-virtual-buffers t

 ;; fuzzy matching buffer names when non--nil useful in helm-mini that lists buffers
 helm-buffers-fuzzy-matching t


 helm-mini-default-sources '(helm-source-buffers-list
                             helm-source-recentf
                             helm-c-source-files-in-project
                             helm-source-buffer-not-found))

;; Save current position to mark ring when jumping to a different place
(add-hook 'helm-goto-line-before-hook 'helm-save-current-pos-to-mark-ring)

;;; end
;;; helm.el ends here
