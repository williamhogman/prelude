;;; web-client-side.el --- Configuration for webclient-side stuff
;;; Commentary:
;;; Configuration for webclient-side stuff
;;; Code:

(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))


(defun will-web-mode-style-hook ()
  "Will's hooks for webmode"
  ;;; Use template engine comments instead of html comments.
  (setq web-mode-comment-style 2)
  (setq web-mode-markup-indent-offset 2))

(add-hook 'web-mode-hook 'will-web-mode-style-hook)

;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

(custom-set-variables '(coffee-tab-width 2)
                      '(js2-basic-offset 2)
                      '(js2-strict-trailing-comma-warning nil)
                      '(js2-strict-trailing-comma-warning nil)
                      '(js2-missing-semi-one-line-override t)
                      '(js2-strict-missing-semi-warning nil))





(provide 'web-client-side)
;;; web-client-side.el ends here
