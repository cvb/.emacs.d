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
 '(elpy-rpc-backend "jedi")
 '(ensime-default-scala-version "2.11.4")
 '(ensime-graphical-tooltips t)
 '(fci-handle-line-move-visual nil)
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
 '(global-whitespace-mode t)
 '(haskell-check-command "/Users/cvb/.cabal/bin/hlint")
 '(haskell-compile-cabal-build-alt-command
   "cd %s && ~/.cabal/bin/cabal clean -s && ~/.cabal/bin/cabal build --ghc-option=-ferror-spans")
 '(haskell-compile-cabal-build-command "cd %s && cabal build --ghc-option=-ferror-spans")
 '(haskell-mode-hook nil t)
 '(haskell-notify-p t)
 '(haskell-process-type (quote cabal-repl))
 '(haskell-program-name "cabal repl")
 '(haskell-stylish-on-save nil)
 '(helm-ack-grep-executable "ack")
 '(helm-buffer-details-flag nil)
 '(helm-mini-default-sources
   (quote
    (helm-source-buffers-list helm-source-recentf helm-source-projectile-files-list helm-source-buffer-not-found)))
 '(helm-mode t)
 '(js-indent-level 2)
 '(org-directory "~/.org")
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-crypt org-docview org-gnus org-habit org-id org-info org-irc org-mhe org-rmail org-w3m)))
 '(org-time-clocksum-format
   (quote
    (:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t)))
 '(org-time-clocksum-use-effort-durations nil)
 '(popwin-mode t)
 '(projectile-generic-command "find . -type f -maxdepth 1 -print0")
 '(projectile-require-project-root nil)
 '(scala-indent:align-parameters nil)
 '(sh-basic-offset 2)
 '(sh-indentation 2)
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
 '(company-preview ((t (\,@bg-green))))
 '(company-preview-common ((t (\,@bg-base02))))
 '(company-scrollbar-bg ((t (\,@bg-base02))))
 '(company-scrollbar-fg ((t (\,@bg-base0))))
 '(company-template-field ((t (\,@fg-base03 (\,@ bg-yellow)))))
 '(company-tooltip ((t (\,@fg-base00 (\,@ bg-base02)))))
 '(company-tooltip-annotation ((t (\,@fg-yellow (\,@ bg-base02)))))
 '(company-tooltip-common ((t (\,@fg-base1 (\,@ bg-base02)))))
 '(company-tooltip-common-selection ((t (\,@fg-base1 (\,@ bg-base02)))))
 '(company-tooltip-mouse ((t (\,@fg-base1 (\,@ bg-base02)))))
 '(company-tooltip-selection ((t (\,@fg-base1 (\,@ bg-base02)))))
 '(compilation-warning ((t (:foreground "DarkOrange3" :inverse-video nil :underline nil :slant normal :weight bold))))
 '(ensime-errline-highlight ((t (:underline (:color "#900000" :style wave)))))
 '(flymake-errline ((t (:background "#042028" :foreground "#960004" :inverse-video t :underline nil :slant normal :weight normal))))
 '(helm-bookmark-w3m ((t (:foreground "orange"))))
 '(helm-ff-directory ((t nil)))
 '(helm-ff-executable ((t (:foreground "#007700"))))
 '(helm-ff-invalid-symlink ((t (:background "#770000" :foreground "#E588AE"))))
 '(helm-ff-prefix ((t (:foreground "yellow"))))
 '(helm-ff-symlink ((t (:foreground "#E588AE"))))
 '(helm-selection ((t (:background "#223b22" :underline t))))
 '(org-clock-overlay ((t (:background "#212521"))))
 '(org-column ((t (:strike-through nil :underline nil :slant normal :weight normal))))
 '(org-todo ((t (:foreground "#aa2020" :inverse-video nil :underline nil :slant normal :weight bold))))
 '(outline-4 ((t (:foreground "#c65007" :inverse-video nil :underline nil :slant normal :weight normal))))
 '(sh-heredoc ((t (:foreground "dark cyan"))))
 '(shm-current-face ((t (:background "#eee8d5"))))
 '(shm-quarantine-face ((t (:background "lemonchiffon"))))
 '(table-cell ((t (:background "#042028" :foreground "#81908f" :inverse-video nil :underline nil :slant normal :weight normal))))
 '(web-mode-html-attr-name-face ((t (:foreground "#aaaaaa"))))
 '(web-mode-symbol-face ((t (:foreground "#999944"))))
 '(whitespace-indentation ((t (:foreground "#2a4852"))))
 '(whitespace-space ((t (:inherit whitespace-indentation))))
 '(whitespace-tab ((t (:inherit whitespace-indentation)))))


