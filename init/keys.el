;(require 'key-chord)
;(key-chord-mode 1)

(defvar my-keys-mm (make-keymap) "my-keys-minor-mode keymap.")

(defun k (key def)
  (define-key my-keys-mm key def))

(k "\C-w" 'backward-kill-word)

(k (kbd "C-c C-k") '(lambda ()
                      (interactive)
                      (if (use-region-p)
                          (kill-region (point) (mark))
                        (kill-whole-line))))

(k (kbd "C-z") 'undo)
(k (kbd "C-'") 'comment-or-uncomment-region-or-line)
(k (kbd "M-l") 'goto-line)

(k (kbd "C-c C-g s") 'magit-status)

(set-register ?l '(file . "~/.org/plan.org"))
(set-register ?p '(file . "~/.org/passes.org.gpg"))
(set-register ?t '(file . "~/.org/thoughts.org"))
(set-register ?h '(file . "~/.org/history.org"))

(k (kbd "C-x b") 'helm-mini)

(k "\M-=" 'zoom-frm-in)
(k "\M--" 'zoom-frm-out)

(k (kbd "M-x") 'helm-M-x)

(k (kbd "M-`") 'other-window)

(k (kbd "s-SPC") 'just-one-space)

(eval-after-load 'clojure-mode
  '(define-key clojure-mode-map (kbd "RET") 'paredit-newline))

;; (eval-after-load 'visual-line-mode
;;   '(define-key clojure-mode-map (kbd "C-k") 'kill-line))

;(require 'helm-projectile)
;(key-chord-define-global "bb" 'helm-mini)
;; (key-chord-define-global "de" 'kill-line)
;; (key-chord-define-global "dd" 'kill-whole-line)

;(key-chord-define outline-mode-map "nn" 'outline-next-visible-heading)
;(key-chord-define outline-mode-map "pp" 'outline-previous-visible-heading)

(k (kbd "C-S-c C-S-c") 'mc/edit-lines)

(k (kbd "C->") 'mc/mark-next-like-this)
(k (kbd "C-<") 'mc/mark-previous-like-this)
(k (kbd "C-c C-<") 'mc/mark-all-like-this)

(k (kbd "C-S-t") 'mc/mark-sgml-tag-pair)

(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile)



(k (kbd "C-j") 'backward-char)
(k (kbd "C-k") 'next-line)
(k (kbd "C-l") 'previous-line)
(k (kbd "C-;") 'forward-char)

(k (kbd "C-M-;") 'forward-word)
(k (kbd "C-M-j") 'backward-word)

(k (kbd "C-M-k") 'scroll-up-command)
(k (kbd "C-M-l") 'scroll-down-command)


(k (kbd "C-o") 'newline-and-indent)
(k (kbd "C-S-o") 'prevnewline-and-indent)

(require 'ace-jump-mode)
(k (kbd "C-c w") 'ace-jump-word-mode)
(k (kbd "C-c e") 'ace-jump-char-mode)
(k (kbd "C-c r") 'ace-jump-line-mode)

(k (kbd "C-/") 'repeat)

(k (kbd "C-x C-f") 'helm-find-files)

(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" my-keys-mm)

(my-keys-minor-mode 1)

;; keep my minore mode at firt place, so no one can rewrite it's bindings
(defadvice load (after give-my-keybindings-priority)
  "Try to ensure that my keybindings always have priority."
  (if (not (eq (car (car minor-mode-map-alist)) 'my-keys-minor-mode))
      (let ((mykeys (assq 'my-keys-minor-mode minor-mode-map-alist)))
        (assq-delete-all 'my-keys-minor-mode minor-mode-map-alist)
        (add-to-list 'minor-mode-map-alist mykeys))))
(ad-activate 'load)

;; rebind tab to run persistent action
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;; make TAB works in terminal
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
;; list actions using C-z
(define-key helm-map (kbd "C-z")  'helm-select-action)

(define-key helm-map (kbd "C-k") 'helm-next-line)
(define-key helm-map (kbd "C-l") 'helm-previous-line)
(define-key helm-find-files-map (kbd "C-k") 'helm-next-line)
(define-key helm-find-files-map (kbd "C-l") 'helm-previous-line)

;; expand helm selection if it is dir or open in case of regular file
(defun expand-dir-or-open ()
  (interactive)
  (if (file-directory-p (helm-get-selection))
      (helm-execute-persistent-action)
    (helm-maybe-exit-minibuffer)))
(define-key helm-find-files-map (kbd "<RET>") 'expand-dir-or-open)
