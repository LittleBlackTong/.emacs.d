(load-theme 'sanityinc-tomorrow-eighties t)

;; off tool bar
;; off scroll bar
;; off splash screen
;; global linum mode
(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-indent-mode t)
(setq inhibit-splash-screen t)
(global-linum-mode 1)

;;(setq cursor-type 'bar)
(setq-default cursor-type 'bar)

;;fullscreen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(global-hl-line-mode 1)

(provide 'init-ui)
