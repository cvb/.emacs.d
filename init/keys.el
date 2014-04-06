(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
(global-set-key (kbd "C-z") 'advertised-undo)
(global-set-key (kbd "C-;") 'comment-or-uncomment-region-or-line)
(global-set-key (kbd "M-l") 'goto-line)

(global-set-key (kbd "C-c C-g s") 'magit-status)

(set-register ?l '(file . "~/.org/plan.org"))
(set-register ?p '(file . "~/.org/passes.org.gpg"))
