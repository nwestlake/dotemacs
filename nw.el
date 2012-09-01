;;Modified from https://github.com/rmm5t/

(add-to-list 'load-path "~/.emacs.d/vendor")

;(setq custom-file "~/.emacs.d/nw/custom.el")
;(load custom-file 'noerror)

(load "nw/defuns")
(load "nw/indent")

(vendor 'ido)


(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "gb") ; UK
;(load-file "~/.emacs.d/ergoemacs/site-lisp/site-start.el")

;; load ErgoEmacs keybinding
(load "~/.emacs.d/ergoemacs-keybindings-5.3.9/ergoemacs-mode")

;; turn on minor mode ergoemacs-mode
(ergoemacs-mode 1)

(global-set-key "\C-b" 'ido-switch-buffer)
(global-set-key (kbd "\C-y") 'ido-find-file)
(global-set-key "\C-x b" 'switch-to-buffer)
(global-set-key "\M-m" 'other-window)
(global-set-key [(meta right)] 'next-buffer)
(global-set-key [(meta left)] 'previous-buffer)

(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "<f7>") 'next-error)
(global-set-key (kbd "<f6>") 'previous-error)
(global-set-key "\C-l" 'goto-line)
(global-set-key "\M-b" 'yank)

(global-set-key "\C-k" 'flyspell-auto-correct-word)

;;YASNIPPET
(add-to-list 'load-path 
	     "~/.emacs.d/plugins/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")
(setq yas/prompt-functions '(yas/x-prompt yas/dropdown-prompt))

;; CEDET

;; Enable EDE (Project Management) features
;;(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")

(semantic-mode 1)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)


;;FLYMAKE
(require 'flymake)


(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-j" 'semantic-ia-fast-jump)
  (local-set-key "\C-t" 'semantic-mrub-switch-tags)
  (local-set-key "\C-p" 'semantic-analyze-proto-impl-toggle)
  (local-set-key "\C-r" 'semantic-symref)
  (local-set-key "." 'semantic-complete-self-insert)
  (local-set-key ">" 'semantic-complete-self-insert)
  (local-set-key "\M-0" 'semantic-tag-folding-show-block)
  (local-set-key "\M-9" 'semantic-tag-folding-fold-block)

  )
(add-hook 'c-mode-common-hook 'my-cedet-hook)


;(global-semantic-idle-scheduler-mode 1) ;The idle scheduler with automatically reparse buffers in idle time.

;; Mercurial
(require 'mercurial)


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(LaTeX-command "pdflatex"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

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

