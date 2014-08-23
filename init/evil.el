(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
      "c" 'ace-jump-char-mode
      "w" 'ace-jump-word-mode
      "l" 'ace-jump-line-mode)

(eval-after-load "magit"
    (evil-leader/set-key "g" 'magit-status))

(eval-after-load "git-gutter-mode"
  (evil-leader/set-key
    "s" 'git-gutter:stage-hunk
    "n" 'git-gutter:next-hunk
    "p" 'git-gutter:previous-hunk))

(evil-leader/set-key
    "k" 'kill-buffer
    "t" 'transpose-chars
    "T" 'transpose-words)

(evil-leader/set-key
    "f" 'find-file
    "w" 'evil-normal-and-save)

(eval-after-load "helm"
  (evil-leader/set-key
      "b" 'helm-mini
      "x" 'helm-M-x))

(defun evil-normal-and-save ()
  (interactive)
  (evil-normal-state)
  (save-buffer))

(evil-mode 1)

(evilnc-default-hotkeys)

(define-key evil-normal-state-map (kbd "k") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "l") 'evil-previous-visual-line)
(define-key evil-normal-state-map (kbd "j") 'evil-backward-char)
(define-key evil-normal-state-map (kbd ";") 'evil-forward-char)

(define-key evil-visual-state-map (kbd "k") 'evil-next-visual-line)
(define-key evil-visual-state-map (kbd "l") 'evil-previous-visual-line)
(define-key evil-visual-state-map (kbd "j") 'evil-backward-char)
(define-key evil-visual-state-map (kbd ";") 'evil-forward-char)

(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global "jk" 'evil-normal-state)
(key-chord-define-global "kj" 'evil-normal-state)

(require 'evil-matchit)
(global-evil-matchit-mode 1)
(setq evil-want-fine-undo t)
(setq evil-want-visual-char-semi-exclusive t)

(evil-define-key 'normal magit-mode-map "s" 'magit-stage-item)
(evil-define-key 'normal magit-mode-map "u" 'magit-unstage-item)
(evil-define-key 'normal magit-mode-map "<tab>" 'magit-toggle-section)
(evil-set-initial-state 'magit-mode 'normal)
