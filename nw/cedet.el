;; Enable EDE (Project Management) features
;;(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")

(semantic-mode 1)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)

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

(defun my-auto-pair-hook ()
  (electric-pair-mode)
  )

(add-hook 'c-mode-common-hook 'my-auto-pair-hook)
