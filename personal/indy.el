;;; indy.el --- Setup indy mode

;;; Commentary:
;; Some settings I like. ¯\_(ツ)_/¯

;;; Code:

(setq indy-rules
      '(
        (all . (
                        ((and (indy--prev 'indy--starts-with "field")
                              (indy--prev 'indy--ends-on ","))
                         (indy--prev-tab 1))
                        ((indy--prev    'indy--ends-on ",")     (indy--prev-tab))
                        ))
        ))

(require 'indy)
