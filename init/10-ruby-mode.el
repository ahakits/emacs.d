;; -*- coding:utf-8-unix; -*-
;; ruby-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'ruby-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode)))

;; settings indent for ruby-mode
(setq ruby-indent-leverl 2 ; indent level default:2
      ruby-deep-indent-paren-style nil ; indent when new indent
      ruby-indent-tabs-mode nil) ; TAB mode default:nil

;; auto insert paren
(require 'ruby-electric nil t)
(setq ruby-electric-expand-delimiters-list nil)

;; highlight line end
(when (require 'ruby-block nil t)
  (setq ruby-block-highlight-toggle t))

;; rbenv
(require 'rbenv nil t)
(global-rbenv-mode)
(setq rbenv-installation-dir "~/.anyenv/envs/rbenv")

;; rspec
(autoload 'rspec-mode "rspeck-mode")
(add-hook 'ruby-mode-hook 'rspec-mode)

;; rubocop
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode t)))
;; pry
(require 'inf-ruby nil t)
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)

;; robe
(add-hook 'ruby-mode-hook 'robe-mode)
(autoload 'robe-mode "robe" "Code navigation, documentation lookup and completion for Ruby" t nil)
(autoload 'ac-robe-setup "ac-robe" "auto-complete robe" nil nil)
(add-hook 'robe-mode-hook 'ac-robe-setup)
