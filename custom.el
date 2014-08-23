(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-for-comint-mode-on t)
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(ansi-term-color-vector
   [unspecified "#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"] t)
 '(clojure-defun-style-default-indent t)
 '(coffee-tab-width 2)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (sanityinc-solarized-dark)))
 '(custom-safe-themes
   (quote
    ("4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default)))
 '(ensime-graphical-tooltips t)
 '(flymake-allowed-file-name-masks
   (quote
    (("\\.l?hs$" ghc-flymake-init nil ghc-emacs23-larter-hack)
     ("\\.deletetoactivatel?hs\\'" haskell-flymake-init nil nil)
     ("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init nil nil)
     ("\\.xml\\'" flymake-xml-init nil nil)
     ("\\.html?\\'" flymake-xml-init nil nil)
     ("\\.cs\\'" flymake-simple-make-init nil nil)
     ("\\.p[ml]\\'" flymake-perl-init nil nil)
     ("\\.php[345]?\\'" flymake-php-init nil nil)
     ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup nil)
     ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup nil)
     ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup nil)
     ("\\.tex\\'" flymake-simple-tex-init nil nil)
     ("\\.idl\\'" flymake-simple-make-init nil nil))))
 '(global-visual-line-mode t)
 '(global-whitespace-mode t)
 '(haskell-check-command "/Users/cvb/.cabal/bin/hlint")
 '(haskell-mode-hook nil)
 '(haskell-notify-p t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-program-name "cabal repl")
 '(haskell-stylish-on-save nil)
 '(helm-ack-grep-executable "ack")
 '(helm-buffer-details-flag nil)
 '(helm-mini-default-sources
   (quote
    (helm-source-buffers-list helm-source-recentf helm-source-projectile-files-list helm-source-buffer-not-found)))
 '(js-indent-level 2)
 '(org-directory "~/.org")
 '(org-time-clocksum-use-effort-durations t)
 '(projectile-generic-command "find . -type f -maxdepth 1 -print0")
 '(projectile-require-project-root nil)
 '(solarized-broken-srgb t)
 '(solarized-contrast (quote high))
 '(visual-line-fringe-indicators (quote (left-curly-arrow right-curly-arrow)))
 '(whitespace-style
   (quote
    (face tabs spaces trailing space-before-tab indentation empty space-after-tab space-mark tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-jump-face-background ((t (:foreground "gray55"))))
 '(bold ((t (:weight bold))))
 '(clojure-test-failure-face ((t (:background "#ffbb99"))))
 '(compilation-warning ((t (:foreground "DarkOrange3" :inverse-video nil :underline nil :slant normal :weight bold))))
 '(flymake-errline ((t (:background "#000000" :foreground "#ffb4ac" :inverse-video t :underline nil :slant normal :weight normal))))
 '(helm-bookmark-w3m ((t (:foreground "orange"))))
 '(shm-current-face ((t (:background "#eee8d5"))))
 '(shm-quarantine-face ((t (:background "lemonchiffon"))))
 '(whitespace-space ((t (:foreground "#1a3842")))))
