(menu-bar-mode 0)
(tool-bar-mode 0)
;; Use forward slashes for Windows paths!
(add-to-list 'custom-theme-load-path "c:/Users/Eigenaar/AppData/Roaming/.emacs.d/themes/")

;; The 't' at the end tells Emacs to "confirm" the theme automatically
(load-theme 'rasputin-custom t)
(setq inhibit-splash-screen t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-line-numbers-type 'relative)
 '(package-selected-packages '(ample-theme racket-mode)))

(setq racket-program "C:\\Program Files\\Racket\\racket.exe")

(scroll-bar-mode 0)
(global-display-line-numbers-mode)
(set-face-attribute 'default nil :height 150)

(with-eval-after-load 'frame
  (custom-set-faces
   '(region ((t (:background "#fffacd" 
                 :foreground "#000000" 
                 :inverse-video nil 
                 :inherit nil))))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.
;; See `package-archive-priorities` and `package-pinned-packages`.
;; Most users will not need or want to do this.
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
