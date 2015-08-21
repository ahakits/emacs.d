;; -*- coding:utf-8-unix; -*-
;; sql-mode.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sql-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(autoload 'sql-mode "sql" "SQL Edit mode" t)

(eval-after-load "sql"
  '(progn
     (load-library "sql-indent")
     (load-library "sql-complete")
     (load-library "sql-transform")
     ))

;; default database
(setq sql-user "spg4_dev")
(setq sql-database "spg4")

(add-hook 'sql-mode-hook
          (function (lambda ()
                      (setq sql-indent-offset 4)
                      (setq sql-indent-maybe-tab t)
                      )))

