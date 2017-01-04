(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key [(meta right)] 'next-buffer)
(global-set-key [(meta left)] 'previous-buffer)

(global-set-key (kbd "<f3>") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "<f4>") 'kmacro-end-or-call-macro)
(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "<f7>") 'next-error)
(global-set-key (kbd "<f6>") 'previous-error)
(global-set-key (kbd "C-l") 'goto-line)

(global-set-key (kbd "C-k") 'flyspell-auto-correct-word)

(global-set-key (kbd "C-e") 'shell)

(global-set-key (kbd "C-t") 'pop-global-mark)

(global-set-key (kbd "M-m") 'jump-char-forward)
(global-set-key (kbd "M-M") 'jump-char-backward)
