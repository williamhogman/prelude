(setq python-shell-interpreter "/usr/local/bin/python3")
(setq flycheck-python-flake8-executable "/usr/local/bin/python3")
(setq flycheck-python-pycompile-executable "/usr/local/bin/python3")
(setq flycheck-python-pylint-executable "/usr/local/bin/python3")

(prelude-require-packages '(ein))

(provide 'python)
