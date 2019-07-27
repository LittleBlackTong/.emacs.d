;;smartparens
(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(setq ring-bell-function 'ignore)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(("lbt" "LittleBlackTong")))

(setq make-backup-files nil)
(setq auto-save-default nil)

(global-auto-revert-mode t)

(require 'recentf)
(recentf-mode 1)

(setq recentf-max-menu-items 25)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(require 'popwin)
(popwin-mode t)

;;swiper config
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;;(require 'hungry-delete-mode)
(global-hungry-delete-mode)

(provide 'init-better-default)
