(package-initialize)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; load foreign stuff
(add-to-list 'load-path (concat user-emacs-directory "foreign-elisp"))

;; load own elisp
(add-to-list 'load-path (concat user-emacs-directory "personal-elisp"))
(setq initial-buffer-choice t)
(setq wasa-packages
      '(wasa-ui
        wasa-hooks
        wasa-annoyances
        wasa-defuns
        wasa-tramp
        wasa-pretty-symbols
        wasa-company
        wasa-popwin
        wasa-calendar
        wasa-org
        wasa-ibuffer
        wasa-helm
        wasa-comint
        wasa-flycheck
        helm-smex
        helm-fkeys
        wasa-cc
        wasa-lisp
        wasa-web
        wasa-python
        wasa-auctex
        wasa-smartparens
        wasa-keybinds
        wasa-evil
        wasa-distractions))
(dolist (package-name wasa-packages)
  (require package-name))
