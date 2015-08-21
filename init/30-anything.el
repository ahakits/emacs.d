;; -*- coding:utf-8-unix; -*-
;; anything.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anything
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (auto-install-batch "anything")
(when (require 'anything nil t)
  (setq
   ;; display delay time .default:0.5
   anything-idledelay 0.3
   ;; display input delay time default:0.1
   anything-input-idle-delay 0.2
   ;; number limit default:50
   anything-candidate-number-limit 100
   ;; quick update
   anything-quick-update t
   ;; shotrcuts use alphabet enable
   anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
    ;; action as root use sudo
    ;; default :"su"
    (setq anything-su-or-sudo "sudo"))

  (add-to-list 'anything-sources 'anything-c-source-emacs-commands)

  (require 'anything-match-plugin nil t)

  (when (and (executable-find "cmigemo")
             (require 'migemo nil t))
    (require 'anything-migemo nil t))

  (when (require 'anything-complete nil t)
    ;; lisp complete symbol set
    (anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
    ;; change describe-bindings to Anything
    (descbinds-anything-install)))
