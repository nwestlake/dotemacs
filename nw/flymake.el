(defface flymake-errline '((t (:background "#330000" :overline "red" :underline "red"))) nil)
(defface flymake-warnline '((t (:background "#333300" :overline "yellow" :underline "yellow"))) nil)


;;Python
(when (load "flymake" t)
     (defun flymake-pyflakes-init ()
       (let* ((temp-file (flymake-init-create-temp-buffer-copy
			  'flymake-create-temp-inplace))
      (local-file (file-relative-name
	       temp-file
	       (file-name-directory buffer-file-name))))
	 (list "pyflakes" (list local-file))))

     (add-to-list 'flymake-allowed-file-name-masks
	  '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)

(defun my-flymake-show-help ()
  (when (get-char-property (point) 'flymake-overlay)
   (let ((help (get-char-property (point) 'help-echo)))
    (if help (message "%s" help)))))

(add-hook 'post-command-hook 'my-flymake-show-help)
