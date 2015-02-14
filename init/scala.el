(require 'ensime)
(require 's)
(require 'cl-lib)


(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(eval-after-load 'ensime-mode
  (lambda ()
    (ensime-ac-disable)
    (define-key ensime-mode-map (kbd "C-c <tab>") 'helm-scala-ensime-ac)))


(defvar current-scala-compl nil)

(defun insert-compl (cand)
  (let ((pref (plist-get current-scala-compl :prefix)))
    (insert (s-chop-prefix pref cand))
    (setq current-scala-compl nil)))

(defclass helm-scala-ac-source (helm-source-sync)
  ((init              :initform 'set-compl)
   (candidates        :initform 'get-completions)
   (keymap            :initform
     (let ((map (make-sparse-keymap)))
       (set-keymap-parent map helm-map)
       (define-key map (kbd "<RET>")
         '(lambda () (interactive)
            (helm-quit-and-execute-action 'insert-compl)))
       map))))


(defun set-compl ()
  (setq current-scala-compl (ensime-rpc-completions-at-point 100 t)))

(defun get-completions ()
  (mapcar 'prepare-completion (plist-get current-scala-compl :completions)))

(defun prepare-completion (c)
  (let ((is-callable (plist-get c :is-callable))
         (to-insert   (plist-get c :to-insert))
         (name        (plist-get c :name))
         (type-sig (ensime-ac-brief-type-sig (plist-get c :type-sig))))
    (cons (format "%s :: %s" name type-sig)
          (or to-insert name))))

(setq scala-ac-source (helm-make-source "scala ac" 'helm-scala-ac-source))

(defun helm-scala-ensime-ac ()
  (interactive)
  (with-helm-completion-sep-window
   (helm :sources 'scala-ac-source
         :buffer "*Helm scala ac*")))

(defun split-vert (buffer &rest _args)
  (with-selected-window (selected-window)
    (set-window-buffer (split-window) buffer)))

(defmacro with-helm-completion-sep-window (&rest body)
  "Show helm candidates in separate window, based on with-helm-show-completion"
  `(progn (with-helm-temp-hook 'helm-after-initialize-hook
            (with-helm-buffer
              (set (make-local-variable 'helm-display-function)
                   'split-vert)))
          ,@body))

(defun guide-key/scala-mode ()
  (guide-key/add-local-guide-key-sequence "C-c C-v")
  (guide-key/add-local-guide-key-sequence "C-c C-b"))
(add-hook 'scala-mode-hook 'guide-key/scala-mode)
