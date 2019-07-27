;;clojure config
;;(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'clojure-mode-hook 'subword-mode)

(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(provide 'init-clojure)
