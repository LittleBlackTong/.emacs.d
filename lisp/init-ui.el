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

;;show time
(display-time)
(setq display-time-24hr-format t)
;;(setq display-time-day-and-date t)

(mouse-avoidance-mode 'animate)
;;
;; load file path
(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq default-mode-line-format
      (list ""
            'mode-line-modified
            "<"
            "littleblacktong" ;;your name
            "> "
            "%10b"
            '(:eval (when nyan-mode (list (nyan-create))))
            " "
            'default-directory
            " "
            "%[("
            'mode-name
            'minor-mode-list
            "%n"
            'mode-line-process
            ")%]--"
            "Line %l--"
            '(-3 . "%P")
            "-%-"))
(nyan-mode t);;start nyan-mode
(nyan-start-animation);;start dancing

(provide 'init-ui)
