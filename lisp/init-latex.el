;;; init-latex.el --- Configurations for LaTeX files
;;; Commentary:
;;; Code:

(require 'latex)
(require-package 'auctex)
(require 'yasnippet)

;; Set environment variables
(setenv "PATH" (concat (getenv "PATH") ":/Library/TeX/texbin"))

(setq-default TeX-engine 'xetex)

;; to use pdfview with auctex
(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
      TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
      TeX-source-correlate-start-server t) ;; not sure if last line is neccessary

;; to have the buffer refresh after compilation
(add-hook 'TeX-after-compilation-finished-functions
          #'TeX-revert-document-buffer)

(add-hook 'LaTeX-mode-hook 'yas-minor-mode)

(provide 'init-latex)
;;; init-latex.el ends here
