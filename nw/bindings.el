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
