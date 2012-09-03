(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "M-m") 'other-window)
(global-set-key [(meta right)] 'next-buffer)
(global-set-key [(meta left)] 'previous-buffer)

(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "<f7>") 'next-error)
(global-set-key (kbd "<f6>") 'previous-error)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "M-b") 'yank)

(global-set-key (kbd "C-k") 'flyspell-auto-correct-word)

(global-set-key (kbd "C-e") 'shell)

(global-set-key (kbd "M-y") 'back-to-indentation)
