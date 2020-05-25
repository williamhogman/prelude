;;; packages.el --- Loads of bunch of packages
;;; Commentary:
;;; License:
;;; Code:

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))



(prelude-require-packages '(
                            solarized-theme
                            fish-mode ;; fish shell script editing
                                      ;; mode
                            paradox ;; Better package manager
                            helm-dash ;; Dash for helm
                            company-anaconda
                            helm-projectile
                            solarized-theme

                            bbdb
                            notmuch
                            ))
