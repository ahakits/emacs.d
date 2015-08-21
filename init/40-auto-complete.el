;; -*- coding:utf-8-unix; -*-
;; auto-complete.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
               "~/.emacs.d/el-get/auto-complete/dict/")
  (setq ac-comphist-file "~/.emacs.d/el-get/auto-complete/ac-comphist.dat/")
  (setq ac-use-menu-map t)
  (setq ac-auto-start nil)
  (define-key ac-mode-map (kbd "M-SPC") 'auto-complete)
  (ac-config-default))
