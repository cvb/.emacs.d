(require 'key-chord)
(key-chord-mode 1)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key (kbd "C-z") 'advertised-undo)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "M-l") 'goto-line)

(global-set-key (kbd "C-c C-g s") 'magit-status)

(set-register ?l '(file . "~/.org/plan.org"))
(set-register ?p '(file . "~/.org/passes.org.gpg"))
(set-register ?t '(file . "~/.org/thoughts.org"))
(set-register ?h '(file . "~/.org/history.org"))

(global-set-key (kbd "C-x b") 'helm-mini)

(global-set-key "\M-=" 'zoom-frm-in)
(global-set-key "\M--" 'zoom-frm-out)

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "M-`") 'other-window)

(global-set-key (kbd "s-SPC") 'just-one-space)

(eval-after-load 'clojure-mode
  '(define-key clojure-mode-map (kbd "RET") 'paredit-newline))

(eval-after-load 'visual-line-mode
  '(define-key clojure-mode-map (kbd "C-k") 'kill-line))

(require 'helm-projectile)
;(key-chord-define-global "bb" 'helm-mini)

(key-chord-define outline-mode-map "nn" 'outline-next-visible-heading)
(key-chord-define outline-mode-map "pp" 'outline-previous-visible-heading)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(global-set-key (kbd "C-S-t") 'mc/mark-sgml-tag-pair)

(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile)

(defvar my-keys-mm (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-mm (kbd "C-j") 'backward-char)
(define-key my-keys-mm (kbd "C-k") 'next-line)
(define-key my-keys-mm (kbd "C-l") 'previous-line)
(define-key my-keys-mm (kbd "C-;") 'forward-char)

(define-key my-keys-mm (kbd "C-M-;") 'forward-word)
(define-key my-keys-mm (kbd "C-M-j") 'backward-word)

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
