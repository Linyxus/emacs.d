;;; init-c++ -- init language c++
;;; Commentary:
;;; Code:

(setq c-default-style "linux"
      c-basic-offset 4)

(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++17")))

(provide 'init-c++)
;;; init-c++.el ends here
