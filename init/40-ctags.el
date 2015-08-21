;; -*- coding:utf-8-unix; -*-
;; ctags.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ctags
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ctags nil t)
(setq tags-revert-without-query t)
;; command line for ctags if in the path, need not fullpath
;; if use etags, comment out
;; (setq ctags-command "ctags -e -R ")
;; if not use anything-exuberant-ctags.el, comment out
(setq ctags-command "ctags -R --fields=\"+afikKlmnsSzt\" ")
(global-set-key (kbd "<f5>") 'ctags-create-or-update-tags-table)
