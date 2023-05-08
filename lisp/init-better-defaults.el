;; minibuffer action 和自适应 context menu
(use-package embark
  :ensure t

  :bind
  (("C-." . embark-act)         ;; pick some comfortable binding
   ("C-;" . embark-dwim)        ;; good alternative: M-.
   ("C-h B" . embark-bindings)) ;; alternative for `describe-bindings'

  :init

  ;; Optionally replace the key help with a completing-read interface
  (setq prefix-help-command #'embark-prefix-help-command)

  ;; Show the Embark target at point via Eldoc.  You may adjust the Eldoc
  ;; strategy, if you want to see the documentation from multiple providers.
  (add-hook 'eldoc-documentation-functions #'embark-eldoc-first-target)
  ;; (setq eldoc-documentation-strategy #'eldoc-documentation-compose-eagerly)

  :config

  ;; Hide the mode line of the Embark live/completions buffers
  (add-to-list 'display-buffer-alist
               '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
                 nil
                 (window-parameters (mode-line-format . none)))))

(use-package embark-consult
  :ensure t ; only need to install it, embark loads it after consult if found
  :hook
  (embark-collect-mode . consult-preview-at-point-mode))



(use-package marginalia
  :ensure t
  :config
  (marginalia-mode))


(fset 'yes-or-no-p 'y-or-n-p)


;;modeline上显示我的所有的按键和执行的命令
;;(package-install 'keycast)
;;(keycast-mode t)

(use-package keycast
  :ensure t
  :config
  (keycast-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))


(package-install 'company)
;; 开启全局自动补全
(global-company-mode 1)


;;add hack init.el keyboard
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 快捷键更改初始化文件
(global-set-key (kbd "<f2>") 'open-my-init-file)


;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)


;;关闭备份文件
(setq make-backup-files nil)

;; 开启最近文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)


(provide 'init-better-defaults)
