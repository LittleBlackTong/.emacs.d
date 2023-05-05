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
;;(require 'init-packages)
;;(require 'init-ui)
;;(require 'init-better-default)
;;(require 'init-keybindings)
;;(require 'init-clojure)











