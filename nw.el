;;Modified from https://github.com/rmm5t/

(add-to-list 'load-path "~/.emacs.d/vendor")

;(setq custom-file "~/.emacs.d/nw/custom.el")
;(load custom-file 'noerror)

(load "nw/cedet")
(load "nw/defuns")
(load "nw/flymake")
(load "nw/ido")
(load "nw/indent")

(vendor 'ergoemacs)
(vendor 'yasnippet)


;; SMART-SEMICOLON
(defun smart-semicolon ()
  (interactive)
  (end-of-line)
  (when (not (looking-back ";"))
    (insert ";")))

(add-hook 'c++-mode-hook 'smart-semicolon-c++-mode-hook) 
 
(defun smart-semicolon-c++-mode-hook () 
  (define-key c-mode-map ";" 'smart-semicolon)
  (define-key c++-mode-map ";" 'smart-semicolon))

;;Needs to load last
(load "nw/bindings")
