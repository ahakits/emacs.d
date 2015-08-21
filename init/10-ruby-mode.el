;; -*- coding:utf-8-unix; -*-
;; ruby-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ruby-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ruby-electric.el
;; inf-ruby.el
;; ruby-blocl.el
;; settings indent for ruby-mode
(setq ruby-indent-leverl 4 ; indent level 4 default:2
      ruby-deep-indent-paren-style nil ; indent when new indent
      ;; set indent-tabs-mode when ruby-mode
      ruby-indent-tabs-mode t) ; use TAB default:nil
;; auto insert paren
(require 'ruby-electric nil t)
;; highlight line end
(when (require 'ruby-block nil t)
  (setq ruby-block-highlight-toggle t))
;; use int Interactive Ruby
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")

;; define function for ruby-mode-hook
(defun ruby-mode-hooks ()
  (inf-ruby-keys)
  (ruby-electric-mode t))
;; add hook ruby-mode-hook
(add-hook 'ruby-mode-hook 'ruby-mode-hooks)
