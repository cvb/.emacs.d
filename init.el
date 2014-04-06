(cd "~/.emacs.d")

(server-start)

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
