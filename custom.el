(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(flymake-allowed-file-name-masks (quote (("\\.l?hs$" ghc-flymake-init nil ghc-emacs23-larter-hack) ("\\.deletetoactivatel?hs\\'" haskell-flymake-init nil nil) ("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init nil nil) ("\\.xml\\'" flymake-xml-init nil nil) ("\\.html?\\'" flymake-xml-init nil nil) ("\\.cs\\'" flymake-simple-make-init nil nil) ("\\.p[ml]\\'" flymake-perl-init nil nil) ("\\.php[345]?\\'" flymake-php-init nil nil) ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup nil) ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup nil) ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup nil) ("\\.tex\\'" flymake-simple-tex-init nil nil) ("\\.idl\\'" flymake-simple-make-init nil nil))))
 '(global-visual-line-mode nil)
 '(global-whitespace-mode t)
 '(haskell-check-command "/Users/cvb/.cabal/bin/hlint")
 '(haskell-stylish-on-save nil)
 '(helm-buffer-details-flag nil)
 '(helm-mini-default-sources (quote (helm-source-buffers-list helm-source-recentf helm-source-projectile-files-list helm-source-buffer-not-found)))
 '(org-directory "~/.org")
 '(org-time-clocksum-use-effort-durations t)
 '(projectile-generic-command "find . -type f -maxdepth 1 -print0")
 '(projectile-require-project-root nil)
 '(solarized-broken-srgb t)
 '(solarized-contrast (quote high))
 '(whitespace-style (quote (face tabs spaces trailing space-before-tab indentation empty space-after-tab space-mark tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "black" :weight bold))))
 '(compilation-warning ((t (:foreground "OrangeRed4" :inverse-video nil :underline nil :slant normal :weight bold))))
 '(shm-current-face ((t (:background "#eee8d5"))))
 '(shm-quarantine-face ((t (:background "lemonchiffon")))))
