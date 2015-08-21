;; -*- coding:utf-8-unix; -*-
;; anythig-c-moccur.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything-c-moccur
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'anything-c-moccur nil t)
  (setq
   ;; 'anything-idel-delay' for anything-c-moccur
   anything-c-moccur-anything-idel-delay 0.1
   ;; higlight baffer
   lanything-c-moccur-higlight-info-line-flag t
   ;; enable display now
   anything-c-moccur-enable-auto-look-flag t
   ;; enable initial pattern
   anything-c-moccur-enable-initial-pattern t)
  ;; bind to "C-M-o" for anything-c-moccur-occur-by-moccur
  (global-set-key (kbd "C-M-o") 'anything-c-moccur-occur-by-moccur))
