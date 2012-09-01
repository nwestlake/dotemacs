(defun smart-semicolon ()
  (interactive)
  (end-of-line)
  (when (not (looking-back ";"))
    (insert ";")))

(add-hook 'c++-mode-hook 'smart-semicolon-c++-mode-hook) 
 
(defun smart-semicolon-c++-mode-hook () 
  (define-key c-mode-map ";" 'smart-semicolon)
  (define-key c++-mode-map ";" 'smart-semicolon))
