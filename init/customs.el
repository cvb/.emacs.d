
;; NO FRILLS
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))
(setq inhibit-startup-screen t)
;; NO JUNK
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      backup-directory-alist `((".*" . ,temporary-file-directory)))

;; CUSTOM FILE
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror)

(defalias 'yes-or-no-p 'y-or-n-p)

;; (setq exec-path (append exec-path '("/usr/local/bin")))
;; (setq exec-path (append exec-path '("/Users/cvb/.cabal/bin/")))

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

(color-theme-solarized-light)

(setq-default fci-rule-column 80)
(setq fci-rule-width 1)
;; (setq fci-rule-color "#073540") ; black
(setq fci-rule-color "#81908f")    ; grey (like comment)

(define-globalized-minor-mode global-fci-mode fci-mode
  (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (setq el-get-sources
;;       '((:name sbt-mode
;;                :type git
;;                :url "git://github.com/hvesalai/sbt-mode.git"
;;                )))

(set-face-attribute 'default nil :height 140)

(setq visual-line-fringe-indicators '(left-curly-arrow right-curly-arrow))

(set-variable 'magit-emacsclient-executable "/usr/local/bin/emacsclient")

;; Show the current function name in the header line
(which-function-mode)
(setq-default header-line-format
              '((which-func-mode ("" which-func-format " "))))
(setq mode-line-misc-info
            ;; We remove Which Function Mode from the mode line, because it's mostly
            ;; invisible here anyway.
            (assq-delete-all 'which-func-mode mode-line-misc-info))
