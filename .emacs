
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(default-input-method (quote chinese-zozy))
 '(mediawiki-site-alist (quote (("My Private Wiki" "https://localhost/wiki/" "ShouYa" "54c321699" "Main Page"))))
 '(mediawiki-site-default "My Private Wiki")
 '(safe-local-variable-values (quote ((encoding . gbk) (encoding . utf-8)))))


(add-to-list 'load-path "/usr/share/emacs/site-lisp")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(add-to-list 'load-path "/home/cmlr/.emacs.d/")
(add-to-list 'load-path "/home/cmlr/emacs-lisp")


;; Edit Server for Chromium
;(require 'edit-server)
;(edit-server-start)
;; Unfortunately it doesn't work due to unknown reason


;; For Lisp auto-completion
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/cmlr/.emacs.d/ac-dict")
(ac-config-default)

;; For Ruby auto completion
;(setq rsense-home "/home/cmlr/.local")
;(add-to-list 'load-path (concat rsense-home "/etc"))
;(require 'rsense)


;; Haskell mode
(require 'haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)


;; Flex/Bison mode
(provide 'make-regexp)
(autoload 'make-regexp "make-regexp" "Make regular expressions")
(require 'flex-mode)
(require 'bison-mode)


;; Shortcut to goto specified line
(global-set-key (kbd "<f7>") 'goto-line)


;; Set default font as monofur, a beaultiful curly font
(set-default-font "monofur")

;; Display current time in status bar
(display-time)

; Markdown mode
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))


; YAML mode
(autoload 'yaml-mode "yaml-mode.el"
  "Major mode for editing YAML documents" t)
(add-to-list 'auto-mode-alist '("\\.yml" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml" . yaml-mode))


; Twitter Mode
(autoload 'twittering-mode "twittering-mode/twittering-mode.el"
  "Another Twitter Client for EMACS Operating System" t)

; Git-Commit Mode
(require 'magit)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; displaying blank characters
; (require 'blank-mode)
; (global-blank-mode)
(setq-default show-trailing-whitespace t)


;; PHP mode
(autoload 'php-mode "php-mode.el")
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))


;; Color Scheme
(add-to-list 'load-path "/home/cmlr/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-gray30)))



;; Yes/No -> Y/N
(defalias 'yes-or-no-p 'y-or-n-p)

;; Automatically turn fill-mode on for some major modes
(add-hook 'magit-commit-mode-hook 'turn-on-auto-fill)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Set text rather than Lisp to be the default mode
(setq default-major-mode 'text-mode)


;; MediaWiki major mode, a mediawiki browser
(require 'mediawiki)


;; Racc major mode (racc is a parser generator like bison but in Ruby)
(autoload 'racc-mode "racc-mode" "alternate mode for editing racc files" t)
(add-to-list 'auto-mode-alist '("\\.ry$" . racc-mode))

;; Additional Ruby format files
(add-to-list 'auto-mode-alist '("^Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("^Gemfile.lock$" . yaml-mode))
(add-to-list 'auto-mode-alist '("^Rakefile$" . ruby-mode))

;; Custom shortcuts
(defalias 'deltrail 'delete-trailing-whitespace)


;; Interative Do mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Hide Toolbar and Menubar
(tool-bar-mode -1)
(menu-bar-mode -1)


