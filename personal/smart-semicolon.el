(defun smart-semicolon ()
  (interactive)
  (end-of-line)
  (when (not (looking-back ";"))
    (insert ";")))

(add-hook 'c++-mode-hook 'smart-semicolon-c++-mode-hook)

(defun smart-semicolon-c++-mode-hook ()
  (define-key c-mode-map ";" 'smart-semicolon)
  (define-key c++-mode-map ";" 'smart-semicolon))

(defun smart-semicolon-python ()
  (interactive)
  (end-of-line))

(defun smart-semicolon-python-mode-hook ()
  (define-key python-mode-map ";" 'smart-semicolon)

  (add-hook 'pyhton-mode-hook 'smart-semicolon-python-mode-hook))
