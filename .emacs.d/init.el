(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setq backup-by-copying t)

;; (require 'which-key)
(add-hook 'after-init-hook 'which-key-mode)

;; (require 'paren)
(setq show-paren-delay 0)
(add-hook 'after-init-hook 'show-paren-mode)

;; (require 'elec-pair)
(add-hook 'after-init-hook 'electric-pair-mode)

;; (require 'yasnippet)
(add-hook 'after-init-hook 'yas-global-mode)

;; (require 'company)
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)
(add-hook 'after-init-hook 'global-company-mode)

;; (require 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)

;; (require 'flyspell)
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)

(setq projectile-project-search-path '("~/repos"))
(add-hook 'after-init-hook 'projectile-mode)
(with-eval-after-load 'projectile
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map))

;; (require 'lsp-mode)
(setq lsp-idle-delay 0.1)
(add-hook 'lsp-mode-hook 'lsp-enable-which-key-integration)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'csharp-mode-hook 'lsp)
(add-hook 'python-mode-hook 'lsp)
;; (require 'lsp-haskell)
(add-hook 'haskell-mode-hook 'lsp)
(add-hook 'haskell-literate-mode-hook 'lsp)
(add-hook 'java-mode-hook 'lsp)

;; (require 'pdf-view)
(pdf-loader-install)
(add-hook 'pdf-view-mode-hook 'pdf-view-themed-minor-mode)

;; (require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'latex-mode-hook 'turn-on-reftex)
;; (require 'tex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq TeX-view-program-selection '((output-pdf "PDF Tools")))
(setq TeX-electric-math '("\\(" . "\\)"))
(setq TeX-electric-sub-and-superscript t)
(add-hook 'TeX-after-compilation-finished-functions
	  'TeX-revert-document-buffer)
(add-hook 'TeX-mode-hook 'prettify-symbols-mode)
;; (require 'latex)
(setq LaTeX-electric-left-right-brace t)
(add-hook 'LaTeX-mode-hook 'turn-on-auto-fill)

(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
