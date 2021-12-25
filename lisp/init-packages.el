(setq package-archives '(("melpa"   . "http://melpa.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")
			 ))

(require 'cl) ;;import common lisp

(defvar littleblacktong/packages '(
				   company
				   ac-cider
				   clojure-mode
				   hungry-delete
				   cider
                                   swiper
				   counsel
				   smartparens
				   exec-path-from-shell
				   color-theme-sanityinc-tomorrow
				   popwin
				   switch-window
				 ) "Default packages")

(setq package-selected-packages littleblacktong/packages)

(defun littleblacktong/packages-installed-p ()
  (loop for pkg in littleblacktong/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (littleblacktong/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg littleblacktong/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(provide 'init-packages)
