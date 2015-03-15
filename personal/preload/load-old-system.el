;; If C_HOME hasn't been set give it a resonable default
(if (not (getenv "C_HOME"))
    (setenv "C_HOME" (concat (getenv "HOME") "/.customize/")))

;; Load from .customize
(add-to-list
 'load-path
 (concat (getenv "C_HOME") "emacs")
 )
(require 'init)
