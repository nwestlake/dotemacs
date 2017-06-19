;; Enable a backtrace when problems occur
(setq debug-on-error t)

(setq custom-file "~/.emacs.d/personal/custom.el")
(load custom-file 'noerror)

(load "~/.emacs.d/personal/defuns")

;; elpa managed
;; ------------------
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

(package 'auctex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(package 'ergoemacs-mode)
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "us")
(ergoemacs-mode 1)

(package 'flx)
(package 'flx-ido)
(package 'jump-char)
(package 'smex)


;; self managed
;; ------------------

(personal 'aspell)
(personal 'bindings)
(personal 'defuns)
(personal 'global)

;; submodule managed
;; ------------------
(add-to-list 'load-path "~/.emacs.d/vendor/")

(vendor 'auto-complete)
(vendor 'python-mode)
(vendor 'yasnippet)
