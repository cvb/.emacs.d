(require 'json)

(setq whitespace-global-modes '(not org-mode))

(defun org-as-json-to-file (&optional path)
  "Export the current Org-mode buffer as JSON to the supplied PATH."
  (interactive "Fwrite to file: ")
  (let ((tree (org-element-parse-buffer)))
    (org-element-map tree
        (append org-element-all-objects org-element-all-elements)
      (lambda (el)
        (org-element-put-property el :parent nil)
        (org-element-put-property el :structure nil)))
    (with-temp-file path
      (insert (json-encode tree)))))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t)))

(defun org-traverse-example ()
  (interactive)
  (let* ((current-level (org-current-level))
         (fn (lambda () (pp (org-current-level)))))
    (org-map-entries
     (lambda () (when (= (org-current-level) (+ current-level 1)) (funcall fn)))
     nil 'tree)))

(setq org-agenda-files '("~/.org/habbits.org"))

(setq org-default-notes-file "~/.org/notes.org")
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file "~/.org/notes.org")
         "* %?\n  %i\n  %a")
        ("w" "Todo" entry (file "~/.org/wannado.org")
         "* TODO %? %^g\n %a")))
