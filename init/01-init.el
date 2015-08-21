;; -*- coding:utf-8-unix; -*-
;; init.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; if emacs version > 24, add  package-archives
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

;; settings for coding
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8-unix)

;; buffer-menu
(global-set-key "\C-x\C-b" 'buffer-menu)

;; completion ignore case
(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; auto revert
(global-auto-revert-mode t)
