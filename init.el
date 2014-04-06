(cd "~/.emacs.d")

(let ((path (shell-command-to-string ". ~/.profile; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
        (append
         (split-string-and-unquote path ":")
         exec-path)))

(load-file "init/el-get.el")

(load-file "init/scratch.el")

(load-file "init/utils.el")

(load-file "init/customs.el")

(when (eq system-type 'darwin)
  (load-file "init/darwin.el"))

(load-file "init/org.el")

(load-file "init/ido.el")


(load-file "init/keys.el")

(cd "~/")
