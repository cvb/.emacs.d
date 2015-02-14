(require 'helm-config)

;; NO FRILLS
(dolist (mode '(tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
(setq inhibit-startup-screen t)
;; NO JUNK
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      backup-directory-alist `((".*" . ,temporary-file-directory)))

(defalias 'yes-or-no-p 'y-or-n-p)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8-unix)

(setq default-file-name-coding-system 'utf-8-unix)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))
(setq default-sendmail-coding-system 'utf-8-unix)

(column-number-mode)
(line-number-mode)
(show-paren-mode 1)

(setq-default tab-width 2)
;; to setup tabs
(setq c-basic-indent 2)
(setq tab-width 2)
(setq-default indent-tabs-mode nil)

(require 'color-theme)
(color-theme-solarized-dark)

(setq-default fci-rule-column 80)
(setq fci-rule-width 1)
;; (setq fci-rule-color "#073540") ; black
(setq fci-rule-color "#81908f")    ; grey (like comment)

;; (add-hook 'prog-mode-hook 'turn-on-fci-mode)

(set-face-attribute 'default nil :height 140)

(fringe-mode 1)
(setq-default indicate-empty-lines t)
;; ;; (setq line-move-visual nil)

;; (setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

;; ;; (setq-default global-visual-line-mode t)
;; ;; (setq default-truncate-lines nil)


;; (set-variable 'magit-emacsclient-executable "/usr/local/bin/emacsclient")

;; ;; Show the current function name in the header line
;; ;; (which-function-mode)
;; ;; (setq-default header-line-format
;; ;;               '((which-func-mode ("" which-func-format " "))))
;; ;; (setq mode-line-misc-info
;;             ;; We remove Which Function Mode from the mode line, because it's mostly
;;             ;; invisible here anyway.
;;             ;; (assq-delete-all 'which-func-mode mode-line-misc-info))

(require 'window-number)
(window-number-meta-mode 1)
(window-number-mode 1)

(custom-set-variables
 '(ansi-color-for-comint-mode-on t)
 '(ansi-color-names-vector
   ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900"
    "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(ansi-term-color-vector
   [unspecified "#073642" "#dc322f" "#859900"
                "#b58900" "#268bd2" "#d33682"
                "#2aa198" "#eee8d5"]))

;; For ansi-term to also have solarized colors we need to additionally set with setq
;; I don't know why
(setq ansi-color-names-vector
      ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"])
(setq ansi-term-color-vector
      [unspecified "#073642" "#dc322f" "#859900"
                   "#b58900" "#268bd2" "#d33682"
                   "#2aa198" "#eee8d5"])

(add-hook 'clojure-mode-hook    'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'lisp-mode-hook       'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(projectile-global-mode)


(eval-after-load "haskell-mode"
  '(progn
    (define-key haskell-mode-map (kbd "C-x C-d") nil)
    (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
    (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
    (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
    (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
    (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
    (define-key haskell-mode-map (kbd "C-c M-.") nil)
    (define-key haskell-mode-map (kbd "C-c C-d") nil)))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(defvar haskell-mode-hook)
(add-hook 'haskell-mode-hook
          (lambda ()
            (ghc-init)
            (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile)
            (turn-on-hi2)
            ;; (turn-on-haskell-indentation)
            ))

(eval-after-load "ghc-check"
  '(progn
     (setq ghc-display-error 'minibuffer)
     (defun ghc-start-process (name buf)
       (let ((start-file-process name buf ghc-interactive-command
                                 "-b" "\n" "-l"
                                 (pro "-g" "-XFlexibleContexts"
                                      "-g" "-XOverloadedStrings"
                                      "-g" "-XRecordWildCards"
                                      "-g" "-XNamedFieldPuns"
                                      "-g" "-XTupleSections"
                                      "-g" "-XQuasiQuotes"
                                      "-g" "-XLambdaCase")))
         (set-process-filter pro 'ghc-process-filter)
         (set-process-sentinel pro 'ghc-process-sentinel)
         (set-process-query-on-exit-flag pro nil)
         pro))))
(winner-mode 1)


(require 'help-fns+)
