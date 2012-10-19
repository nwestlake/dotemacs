;;Modified from https://github.com/rmm5t/
(add-to-list 'load-path "~/.emacs.d/vendor")

;(setq custom-file "~/.emacs.d/nw/custom.el")
;(load custom-file 'noerror)

(load "nw/cedet")
(load "nw/defuns")
(load "nw/flymake")
(load "nw/global")
(load "nw/ido")
(load "nw/indent")
(load "nw/latex")
(load "nw/smart-semicolon")

(vendor 'auto-complete)
(vendor 'ergoemacs)
(vendor 'ido-better-flex)
(vendor 'jump-char)
(vendor 'pymacs)
(vendor 'python-mode)
(vendor 'yasnippet)

;;Needs to load last
(load "nw/bindings")
