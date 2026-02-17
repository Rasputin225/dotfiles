(deftheme rasputin-custom
  "Rasputin Custom theme.")

(let ((bg      "#3C3C3C")
      (fg      "#FFFFFF")
      (keyword "#48A4FF")
      (string  "#FF00FF")
      (comment "#C29E1F")
      (const   "#FF80C0")
      (symbol  "#0BC1C1")
      (h-key   "#FF0080")
      (error   "#FF8080")
      (paren   "#0096FF")
      (match   "#C0C0C0"))

  (custom-theme-set-faces
   'rasputin-custom
   `(default ((t (:background ,bg :foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,keyword :weight bold))))
   `(font-lock-string-face ((t (:foreground ,string))))
   `(font-lock-comment-face ((t (:foreground ,comment :slant italic :weight bold))))
   `(font-lock-constant-face ((t (:foreground ,const))))
   `(font-lock-variable-name-face ((t (:foreground ,symbol))))
   `(font-lock-function-name-face ((t (:foreground ,keyword :weight bold))))
   `(font-lock-builtin-face ((t (:foreground ,h-key))))
   `(font-lock-warning-face ((t (:foreground ,error :weight bold))))
   `(show-paren-match ((t (:background ,match :foreground "#000000"))))))

(provide-theme 'rasputin-custom)
