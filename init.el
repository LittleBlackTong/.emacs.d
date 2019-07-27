;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;;add hack init.el keyboard
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;add require
(require 'init-packages)
(require 'init-ui)
(require 'init-better-default)
(require 'init-keybindings)
;;(require 'init-clojure)

;;exec config
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;load custom
(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

(global-company-mode t)
;;(delete-selection-mode t)

;;clojure config
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)








