(setq org-directory "~/org"
      org-agenda-files '("~/org/agenda.org")
      org-hide-leading-stars t
      org-return-follows-link t
      org-log-done 'time
      org-default-notes-file (concat org-directory "/notes.org")
      org-hide-emphasis-markers t
      org-export-coding-system 'utf-8)

(prelude-require-packages '(grab-mac-link
                            org-cliplink
                            ))

(global-set-key (kbd "C-c c") 'org-capture)

(setq org-capture-templates
      `(("t" "todo" entry (file "")  ; "" => `org-default-notes-file'
         "* NEXT %?\n%U\n" :clock-resume t)
        ("n" "note" entry (file "")
         "* %? :NOTE:\n%U\n%a\n" :clock-resume t)
        ))

(setq org-refile-use-cache nil)

;; Targets include this file and any file contributing to the agenda - up to 5 levels deep
(setq org-refile-targets '((nil :maxlevel . 5) (org-agenda-files :maxlevel . 5)))

;;(define-key org-mode-map (kbd "C-c g") 'org-mac-grab-link)

(provide 'org-cust)
