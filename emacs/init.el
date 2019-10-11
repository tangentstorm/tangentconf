
; (package-initialize)

; customize should load/save interactive variables from here:
(setq custom-file "d:/ver/tangentconf/emacs/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))

(require 'org)
(org-babel-load-file "d:/ver/tangentconf/emacs/config.org" 1)
