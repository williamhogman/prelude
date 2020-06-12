;;; web-client-side.el --- Configuration for webclient-side stuff
;;; Commentary:
;;; Configuration for webclient-side stuff
;;; Code:

(require 'web-mode)

(add-hook 'js2-mode-hook #'setup-tide-mode)
;; configure javascript-tide checker to run after your default javascript checke

;;(flycheck-add-next-checker 'javascript-tide 'javascript-eslint 'append)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "jsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; configure jsx-tide checker to run after your default jsx checker
(flycheck-add-mode 'javascript-eslint 'web-mode)
;;(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)


(provide 'web-client-side)

;;; web-client-side.el ends here
