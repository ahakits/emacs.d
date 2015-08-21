;; -*- coding:utf-8-unix; -*-
;; interface.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Interface
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; settings for x-window
(when window-system
  ;; permeate background
  (set-frame-parameter nil 'alpha 85)
  ;; fullscreen
  ;;(set-frame-parameter nil 'fullscreen 'maximized)
  ;; not display toolbar
  (tool-bar-mode -1)
  ;; not display scrollbar
  (set-scroll-bar-mode nil)
  ;; set ascii font
  ;;(set-face-attribute 'default nil
  ;;		      :family "Ricty")
  ;; set japanese font
  ;;(set-fontset-font nil 'japanese-jisx0208
  ;;		    (font-spec :family "Ricty"))
  )

;; set file name coding system  OSX
(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq local-coding-system 'utf-8-hfs))

;; not display menubar
(menu-bar-mode -1)

;; paren highlight
(setq show-paren-delay 0) ;default 0.125
(show-paren-mode 1) ;enable

;; display column
(column-number-mode t)

;; dispalay file-size
(size-indication-mode t)

;; display file path at title
(setq frame-title-format "%f")

;; set default indent
(setq-default indent-tabs-mode nil)

;; TAB width
(setq-default tab-width 4)

;; ignore ring-bell
(setq ring-bell-function 'ignore)

;; split window
(split-window-horizontally)

;; not display startup-message
(setq inhibit-startup-message t)

;; not display ediff controll panel to another frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; uniquify buffer name
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
