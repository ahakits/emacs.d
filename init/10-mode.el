;; -*- coding:utf-8-unix; -*-
;; mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;--------------------------------------
;; cua-mode
;;--------------------------------------
(cua-mode t) ; cua-mode on
(setq cua-enable-cua-keys nil) ; disable CUA Key bind

;;--------------------------------------
;; emacs-lisp-mode
;;--------------------------------------
;; emacs-lisp-mode-hook
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (when (require 'eldoc nil t)
               (setq eldoc-idle-delay 0.2)
               (setq eldoc-echo-area-use-multiline-p t)
               (turn-on-eldoc-mode))))

;;--------------------------------------
;; shell
;;--------------------------------------
(setq shell-file-name "/bin/bash")
(setq explicit-shell-file-name "/bin/bash")

;;--------------------------------------
;; dired-mode
;;--------------------------------------
(setq ls-lisp-dirs-first t)
(put 'dired-find-alternate-file 'disabled nil)
(add-hook 'dired-mode-hook
          '(lambda ()
             (make-local-variable 'mouse-highlight)
             (setq mouse-highlight nil)
             (local-set-key (kbd "RET") 'dired-find-alternate-file)
             (local-set-key (kbd "C-<return>") 'dired-advertised-find-file)))

;;--------------------------------------
;; linum-mode
;;--------------------------------------
(global-linum-mode t)
(setq linum-format "%4d ")
