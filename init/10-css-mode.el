;; -*- coding:utf-8-unix; -*-
;; css-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; cssm-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun css-mode-hooks ()
  "css-mode hooks"
  ;; use C style indent
  (setq cssm-indent-function #'cssm-c-style-indenter)
  ;; indent level 2
  (setq cssm-indent-level 2)
  ;; not use indent tabs
  (setq-default indent-tabs-mode nil)
  ;; insert newline before closing bracket
  (setq cssm-newline-before-closing-bracket t))
(add-hook 'css-mode-hook 'css-mode-hooks)
