;; -*- coding:utf-8-unix; -*-
;; tramp.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tramp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'tramp)
(setq tramp-default-method "ssh")
;;(setq tramp-shell-prompt-pattern "^[ $]+")
;; not make backup files when using TRAMP
(add-to-list 'backup-directory-alist
             (cons tramp-file-name-regexp nil))
;;(add-to-list 'tramp-default-proxies-alist
;;                  '("host" "user" "proxy"))
