;; -*- coding:utf-8-unix; -*-
;; perl-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; perl-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; alias perl-mode to cperl-mode
(defalias 'perl-mode 'cperl-mode)
;; settings indet for cperl-mode
(setq cperl-indent-level 4 ; indent level 4
      cperl-continued-statement-offset 4 ; offset continued statement
      cperl-brace-offset -4 ; brace offset
      cperl-label-offsennt -4 ; laberl offset
      cperl-indent-parens-as-block t ; indent parens as block
      cperl-close-paren-offset -4 ; close paren offset
      cperl-tab-always-indent t ; indet TAB
      cperl-highlight-variables-indiscriminately t)
