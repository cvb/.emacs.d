(defun comment-or-uncomment-region-or-line ()
  "Like comment-or-uncomment-region, but if there's no mark \(that means no
region\) apply comment-or-uncomment to the current line"
  (interactive)
  (if (not mark-active)
      (comment-or-uncomment-region
        (line-beginning-position) (line-end-position))
      (if (< (point) (mark))
          (comment-or-uncomment-region (point) (mark))
        (comment-or-uncomment-region (mark) (point)))))


(require 'ace-jump-mode)
(defun kill-end-or-whole (char)
  (cond ((equal char "e") (kill-line))
        ((equal char "d") (kill-whole-line))
        (t (message "should be e or d"))))

(defun kill-end-or-whole-int ()
  (interactive)
  (kill-end-or-whole (read-key-sequence "e or d")))

(defun prevnewline-and-indent (arg)
 (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (indent-according-to-mode))
