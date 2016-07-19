(require 'dropdown-list)

(yas/global-mode 1)

(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")
(setq yas/prompt-functions '(yas/ido-prompt 
			     yas/dropdown-prompt
			     yas/completing-prompt))


