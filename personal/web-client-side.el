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

(provide 'web-client-side)
;;; web-client-side.el ends here
