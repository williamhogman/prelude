;;; searching.el --- Configuration for searching stuff
;;; Commentary:
;;; Everything related to finding stuff across the code base.
;;; Code:

(prelude-require-package 'helm-ag)

;;; Settings from prelude-helm-everywhere related to projectile
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(helm-autoresize-mode 1)

(defun projectile-helm-ag ()
  (interactive)
  (helm-ag (projectile-project-root)))

;;(define-key helm-command-map (kbd "s") 'projectile-helm-ag)

;;; searching.el ends here
