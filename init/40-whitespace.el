;; -*- coding:utf-8-unix; -*-
;; whitespace.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; whitespace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'whitespace)
(global-whitespace-mode 1)
(setq whitespace-style '(face
                         trailing
                         spaces
                         space-mark
                         tab-mark
                         ))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

;; face only Fullwidth space
(setq whitespace-space-regexp "\\(\u3000+\\)")

(set-face-attribute 'whitespace-trailing nil
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background nil
                    :underline nil)
(set-face-attribute 'whitespace-space nil
                    :weight 'bold)

(setq whitespace-action '(auto-cleanup))
