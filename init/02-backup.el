;; -*- coding:utf-8-unix; -*-
;; backup.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; backup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; backup to ~/.emacs.d/backups
(add-to-list 'backup-directory-alist
	     (cons "." "~/.emacs.d/backups/"))
;; chage save directory for save files
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))
;; chage auto save timeout
(setq auto-save-timeout 15)
