;; -*- coding:utf-8-unix; -*-
;; popwin.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; popwin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'popwin)
(popwin-mode 1)

;; anything
(setq anything-samewindow nil)
(push '("*anything*" :height 60) popwin:special-display-config)
(push '("*anything moccur*" :height 40) popwin:special-display-config)
(push '("*anything kill-ring*" :height 40) popwin:special-display-config)

;; Completions
(push '("*Completions*" :height 40) popwin:special-display-config)
