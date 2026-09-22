(menu-bar-mode 0)
(tool-bar-mode 0)
(column-number-mode 1)
(ido-mode 1)
(ido-everywhere 1)

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
 '(package-selected-packages '(ample-theme helm-smex omnisharp racket-mode smex)))

(setq racket-program "C:\\Program Files\\Racket\\racket.exe")

(scroll-bar-mode 0)
(global-display-line-numbers-mode)
(set-face-attribute 'default nil :height 150)



(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.
;; See `package-archive-priorities` and `package-pinned-packages`.
;; Most users will not need or want to do this.
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
;;automatically use omnnisharpe for c# files

(add-hook 'csharp-mode-hook 'omnisharp-mode)
;;auto complretion for c# mode

(eval-after-load
 'company
 '(add-to-list 'company-backends 'company-omnisharp))

(add-hook 'csharp-mode-hook #'company-mode)
;; add fly check
(add-hook 'csharp-mode-hook #'flycheck-mode)



;; Adding `/path/to/simpc` to load-path so `require` can find it
(add-to-list 'load-path "C:/Users/Eigenaar/AppData/Roaming/.emacs.d/simpc/")
;; (load "C:/Users/Eigenaar/AppData/Roaming/.emacs.d/simpc/simpc-mode.el")

;; Importing simpc-mode
(require 'simpc-mode)
;; Automatically enabling simpc-mode on files with extensions like .h, .c, .cpp, .hpp
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))
;;quick reformat using clang
(load "C:/Users/Eigenaar/AppData/Roaming/.emacs.d/cformat/clang-format.el")
(global-set-key (kbd "C-M-x-tab") 'clang-format-region)


(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
					; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(defun my-compile-cpp ()
  "Compile the current C++ file with g++ using its base name."
  (interactive)
  (let* ((file (file-name-nondirectory buffer-file-name))
         (base (file-name-sans-extension file))
	 (compile-command (format "g++ %s -o %s.exe -std=c++17 -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion -Werror" file base)))
    (compile compile-command)))

;; Bind it to a convenient key, like F5
(global-set-key (kbd "<f5>") 'my-compile-cpp)








