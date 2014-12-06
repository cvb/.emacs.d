(cd "~/.emacs.d")

(let ((path (shell-command-to-string ". ~/.profile; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
        (append
         (split-string-and-unquote path ":")
         exec-path)))

;; CUSTOM FILE
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file 'noerror)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(setq package-check-signature nil)
(setq package-enable-at-startup nil)

(package-initialize)
;; [Facultative] Only if you have installed async.
(add-to-list 'load-path "~/.emacs.d/emacs-async")

(add-to-list 'load-path "~/.emacs.d/helm")
(require 'helm-config)

(add-to-list 'load-path "~/.emacs.d/projectile")
(require 'projectile)
(require 'helm-projectile)
(projectile-global-mode)

(load-file "init/utils.el")

(load-file "init/keys.el")

(load-file "init/customs.el")

(when (eq system-type 'darwin)
  (load-file "init/darwin.el"))

(load-file "init/scratch.el")

(load-file "init/org.el")

;; (load-file "init/ido.el")

(load-file "init/python.el")

(load-file "init/ruby.el")

(load-file "init/scala.el")

(cd "~/")

