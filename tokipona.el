(setq ispell-dictionary-alist
      (append '(
               ("tp"
               "[A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376]"
               "[^A-Za-z\246\254\266\274\306\330\335\336\346\370\375\376]"
               "[-']" t ("-C") "~latin3")
               ("tp-rtf"
				 "[A-Za-z^\\'68]"
				 "[^A-Za-z^\\'68]"
				 "[-'\\]" t ("-C" "-d" "tp") "~rtf")
               ("tp-tex"
                "[A-Za-z^\\]"
                "[^A-Za-z^\\]"
                "[-'`\"]" t ("-C" "-d" "tp") "~tex")
               ("tp-ux"
                "[A-Za-z\\]"
                "[^A-Za-z\\]"
                "[-'`\"]" t ("-C" "-d" "tp") "~cxirkaux")
               ("tp-vx"
                "[A-Za-z\\]"
                "[^A-Za-z\\]"
                "[-'`\"]" t ("-C" "-d" "tp") "~cxirkavx")
              )
              ispell-dictionary-alist)
)
(setq  ispell-menu-map-needed t
       ispell-menu-map nil)
(load "ispell")  ; reload ISPELL 


;(add-hook 'text-mode-hook   ;  to run ispell interactively in text-mode
;          (function 
;           (lambda () 
;             (ispell-minor-mode)
;             )
;           ))
;
;
(global-set-key "\C-ci3" '(lambda () "set Toki Pona dictionary in Latin-3"
                            (interactive) 
                            (ispell-change-dictionary "tp")
                            ))
(global-set-key "\C-ciu" '(lambda () "set Toki Pona dictionary (cxirkaux)"
                            (interactive) 
                            (ispell-change-dictionary "tp-ux")
                            ))
(global-set-key "\C-civ" '(lambda () "set Toki Pona dictionary (cxirkaux)"
                            (interactive) 
                            (ispell-change-dictionary "tp-vx")
                            ))
(global-set-key "\C-ciw" '(lambda () "set Toki Pona dictionary (RTF)"
                            (interactive)
                            (ispell-change-dictionary "tp-rtf")
                            ))
(global-set-key "\C-cia" '(lambda () "set english dictionary"
                            (interactive)
                            (ispell-change-dictionary "english")
                            ))
;for easy switching between English and Toki Pona

;And some other short-cuts:
(global-set-key "\M-#" 'ispell-word)      ; easier to type than \M-$
(global-set-key "\C-cim" 'ispell-message)
(global-set-key "\C-cib" 'ispell-buffer)
(global-set-key "\C-cir" 'ispell-region)
(global-set-key "\C-cic" 'ispell-change-dictionary)

