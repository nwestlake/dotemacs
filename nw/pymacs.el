(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

;; Load ropemacs
(pymacs-load "ropemacs" "rope-")

(ac-ropemacs-initialize)
(add-hook 'python-mode-hook
      (lambda ()
    (add-to-list 'ac-sources 'ac-source-ropemacs)))
