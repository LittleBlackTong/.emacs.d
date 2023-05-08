;; 皮肤主题
(package-install 'monokai-theme)
(load-theme 'monokai 1)

;; 所在行高亮
(global-hl-line-mode 1)

;; 关闭工具栏
(tool-bar-mode -1)
;; 关闭滑动控件
(scroll-bar-mode -1)

(electric-indent-mode -1)

(icomplete-mode 1)

(setq inhibit-splash-screen t)
;- turn off tool-bar
;- turn off scroll-bar
;- show linum-mode
;- turn off splash screen
;- save your config
;- define a function to quickly open your config file.N
;; 开启行号
(global-linum-mode t)

;; 更改显示字体大小
(set-face-attribute 'default nil :height 140)

;; 更改光标
(setq-default cursor-type 'bar)
(show-paren-mode t)

(provide 'init-ui)
