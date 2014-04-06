(require 'json)

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