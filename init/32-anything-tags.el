;; -*- coding:utf-8-unix; -*-
;; anything-tags.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything tags
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; make command for use TAGS fromAnything
(when (require 'anything-exuberant-ctags nil t)
  ;; define source for anything-for-tags
  (setq anything-for-tags
        (list anything-c-source-imenu
              ;; if use etags, comment out
              ;; anyhing-c-source-etags-select
              anything-c-source-exuberant-ctags-select
              ))
  ;; define anything-for-tags
  (defun anything-for-tags ()
    "Preconfigured 'anything' for anything-for-tags."
    (interactive)
    (anything anything-for-tags
              (thing-at-point 'symbol)
              nil nil nil "*anything for tags*"))
  ;; bind to "M-t" for anything-for-tags
  (define-key global-map (kbd "M-t") 'anything-for-tags))
