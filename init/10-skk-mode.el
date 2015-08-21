;; -*- coding:utf-8-unix; -*-
;; skk-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SKK mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; load skk
(setq skk-preload t)
;; lisp-interaction-mode
(add-hook 'lisp-interaction-mode-hook
          '(lambda()
             (progn
               (eval-expression (skk-mode) nil))))
;; find-file hook
(add-hook 'find-file-hooks
          '(lambda()
             (progn
               (eval-expression (skk-mode) nil))
             (skk-latin-mode-on)))
;; skk-mode cursor color
(setq skk-cursor-hiragana-color "pink")
;; context-skk
(add-hook 'skk-load-hook
          (lambda()
            (require 'context-skk)))
