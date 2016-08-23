;;; yasnippet.el --- load snippets

;;; Commentary:
;; I love not typing as much. ¯\_(ツ)_/¯

;;; Code:

;; Get it!
(prelude-require-packages '(yasnippet
                            elixir-yasnippets))

;; Put it all over the place!
(yas-global-mode 1)

;; More collections of snippets
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets/personal")
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets/ember-yasnippets.el")

;;; yasnippet.el ends here
