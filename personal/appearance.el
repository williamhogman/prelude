;;; appearance.el --- Make emacs pretty
;;; Commentary:
;;; Configures the looks of my emacs installation
;;; Code:


(setq default-frame-alist '((font . "Menlo-18")))

(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name
                (concat user-emacs-directory "auto-save")) t)))


(setq initial-scratch-message
      (concat ";; Hacky time" user-login-name "\n"))

;; No scrollbars ever
(scroll-bar-mode -1)

;; Configure smart-mode line to make it prettier
(prelude-require-package 'smart-mode-line)

(setq sml/theme nil
      sml/shorten-directory t
      sml/name-width 32
      sml/shorten-modes t
      sml/use-projectile-p 'before-prefixes
      sml/projectile-replacement-format "%s/"
      )
;;(add-to-list 'sml/replacer-regexp-list '("^~/code/" "c|") t)
;; (add-to-list 'sml/replacer-regexp-list '("^~/org/" "o|") t)
(sml/setup)

(setq frame-title-format
      '(" E - " (:eval (if (buffer-file-name)
                               (abbreviate-file-name (buffer-file-name))
                             "%b"))))
