;;Modified from https://github.com/rmm5t/

(add-to-list 'load-path "~/.emacs.d/vendor")

;(setq custom-file "~/.emacs.d/nw/custom.el")
;(load custom-file 'noerror)

(load "nw/cedet")
(load "nw/defuns")
(load "nw/flymake")
(load "nw/ido")
(load "nw/indent")
(load "nw/smart-semicolon")

(vendor 'ergoemacs)
(vendor 'ido-better-flex)
(vendor 'yasnippet)

;;Needs to load last
(load "nw/bindings")
