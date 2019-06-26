;; RONEN'S EMACS CONFIG
;; -----------------------
;; Last change: 26/06/2019

;; Add MELPA
(require 'package)
(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

;; Do not check package signatures
(setq package-check-signature nil)

;; Initialize all packages
(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; function-args
;; (require 'function-args)
;; (fa-config-default)
;; (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(org-agenda-files (quote ("~/Documents/test.org")))
 '(package-selected-packages
   (quote
    (org-bullets projectile helm-projectile helm-make helm beacon function-args use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Load the spacemacs-dark theme
(load-theme 'spacemacs-dark t)

;; Load the actual config file
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
