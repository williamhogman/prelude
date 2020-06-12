;;; init-github.el --- Github integration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(setq magit-repository-directories '(("~/code/" . 2)))
(prelude-require-packages '(yagist bug-reference bug-reference-github github-clone forge github-review))
(add-hook 'prog-mode-hook 'bug-reference-prog-mode)

(provide 'github-cust)
;;; init-github.el ends here
