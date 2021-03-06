;;; init-clojure-cider.el --- Cider support for clojure -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'init-clojure)

(when (maybe-require-package 'cider)
  (setq nrepl-popup-stacktraces nil)

  (after-load 'cider
    (add-hook 'cider-repl-mode-hook 'subword-mode)
    (add-hook 'cider-repl-mode-hook 'paredit-mode)
    (add-hook 'cider-repl-mode-hook 'company-mode)
    (add-hook 'cider-repl-mode-hook 'cider-company-enable-fuzzy-completion)
    (add-hook 'cider-mode-hook 'company-mode)
    (add-hook 'cider-mode-hook 'cider-company-enable-fuzzy-completion)

    ;; nrepl isn't based on comint
    (add-hook 'cider-repl-mode-hook 'sanityinc/no-trailing-whitespace))

  (require-package 'flycheck-clojure)
  (after-load 'clojure-mode
    (after-load 'cider
      (after-load 'flycheck
        (flycheck-clojure-setup)))))


(provide 'init-clojure-cider)
;;; init-clojure-cider.el ends here
