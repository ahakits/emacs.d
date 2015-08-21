;; -*- coding:utf-8-unix; -*-
;; color-moccur.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; color-moccur
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(when (require 'color-moccur nil t)
  ;; bind to "M-o" for occur-by-moccur
  (define-key global-map (kbd "M-o") 'occur-by-moccur)
  ;; AND search split space
  (setq moccur-split-word t)
  ;; exclusion mask
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$")
  ;; use Migemo if environment can use
  (when (and (executable-find "cmigemo")
             (require 'migemo nil t))
    (setq moccur-use-migemo t)))
