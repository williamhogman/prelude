;;; appearance.el --- Make emacs pretty
;;; Commentary:
;;; Configures the looks of my emacs installation
;;; Code:

(set-default-font "Inconsolata-16")

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
(sml/setup)

(setq frame-title-format
      '(" Emacs - " (:eval (if (buffer-file-name)
                               (abbreviate-file-name (buffer-file-name))
                             "%b"))))
