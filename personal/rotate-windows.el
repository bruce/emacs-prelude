;;; rotate-windows.el --- Rotate windows vertical/horizontal

;;; Commentary:
;; When windows are split vertically or horizontally, sometimes it's
;; nice to rotate them

;;; Code:

(defun rotate-split ()
  (interactive)
  (let ((root (car (window-tree))))
    (if (listp root)
        (let* ((w1 (nth 2 root))
               (w2 (nth 3 root))
               (b1 (window-buffer w1))
               (b2 (window-buffer w2)))
          (cond ((car root)             ; currently vertically split
                 (delete-window w2)
                 (set-window-buffer (split-window-horizontally) b2))
                (t                      ; currently horizontally split
                 (delete-window w1)
                 (set-window-buffer (split-window-vertically) b1))))
      (message "Root window not split"))))

;; Keybindings

(global-set-key (kbd "C-x w") 'rotate-split)

;;; rotate-windows.el ends here
