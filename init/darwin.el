(setq ns-use-srgb-colorspace t)

;; use command as meta
(setq mac-command-modifier 'meta)

(quail-define-package
 "russian-mac" "Russian" "RU" nil
 "ЙЦУКЕН Russian Mac layout"
 nil t t t t nil nil nil nil nil t)

;; >< 1! 2" 3№ 4% 5: 6, 7. 8; 9( 0) -_ =+
;;     Й  Ц  У  К  Е  Н  Г  Ш  Щ  З  Х  Ъ
;;      Ф  Ы  В  А  П  Р  О  Л  Д  Ж  Э  Ё
;;   ][  Я  Ч  С  М  И  Т  Ь  Б  Ю  /?

(quail-define-rules
   ; row 1
   ("§" ?>)
   ; row 2
   ("q" ?й) ("w" ?ц) ("e" ?у) ("r" ?к) ("t" ?е) ("y" ?н) ("u" ?г) ("i" ?ш)
   ("o" ?щ) ("p" ?з) ("[" ?х) ("]" ?ъ)
   ; row 3
   ("a" ?ф) ("s" ?ы) ("d" ?в) ("f" ?а) ("g" ?п) ("h" ?р) ("j" ?о) ("k" ?л)
   ("l" ?д) (";" ?ж) ("'" ?э) ("\\" ?ё)
   ; row 4
   ("`" ?\]) ("z" ?я) ("x" ?ч) ("c" ?с) ("v" ?м) ("b" ?и) ("n" ?т) ("m" ?ь)
   ("," ?б) ("." ?ю)
   ; Shift row 1
   ("±" ?<) ("@" ?\") ("#" ?№) ("$" ?%) ("%" ?:) ("^" ?,) ("&" ?.)
   ("*" ?\;)
   ; Shift row 2
   ("Q" ?Й) ("W" ?Ц) ("E" ?У) ("R" ?К) ("T" ?Е) ("Y" ?Н) ("U" ?Г) ("I" ?Ш)
   ("O" ?Щ) ("P" ?З) ("{" ?Х) ("}" ?Ъ)
   ; Shift row 3
   ("A" ?Ф) ("S" ?Ы) ("D" ?В) ("F" ?А) ("G" ?П) ("H" ?Р) ("J" ?О) ("K" ?Л)
   ("L" ?Д) (":" ?Ж) ("\"" ?Э) ("|" ?Ё)
   ; Shift row 4
   ("~" ?\[) ("Z" ?Я) ("X" ?Ч) ("C" ?С) ("V" ?М) ("B" ?И) ("N" ?Т) ("M" ?Ь)
   ("<" ?Б) (">" ?Ю))

(set-input-method 'russian-mac)

(set-fontset-font "fontset-default"
                  'unicode
                  '("Monaco" . "iso10646-1"))

(defun output-to-growl (title msg)
  (let ((fname (make-temp-file "/tmp/growlXXXXXX"))
        (setq coding-system-for-write 'utf-16))
    (with-temp-file fname
      (insert (format "tell application id \"com.Growl.GrowlHelperApp\"
                         notify with name \"Emacs Notification\" ¬
                         title «data utxt%s» as Unicode text ¬
                         description «data utxt%s» as Unicode text ¬
                         application name \"Emacs\"
                       end tell"
                      (osd-text-to-utf-16-hex title)
                      (osd-text-to-utf-16-hex msg))))
    (shell-command (format "osascript %s" fname))
    (delete-file fname)))

(defun osd-text-to-utf-16-hex (text)
  (let* ((utext (encode-coding-string text 'utf-16))
         (ltext (string-to-list utext)))
    (apply #'concat
           (mapcar (lambda (x) (format "%02x" x)) ltext))))

(setq org-show-notification-handler
  '(lambda (notification)
     (output-to-growl "Org-mode" notification)))

