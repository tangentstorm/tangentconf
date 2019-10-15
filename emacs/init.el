
; (package-initialize)

(setq mjw-cfg-root
      (if (eq system-type 'windows-nt)
	  "d:/ver/tangentconf/emacs/"
	"~/t/emacs/"))


; customize should load/save interactive variables from here:
(setq custom-file (concat mjw-cfg-root "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(require 'org)
(org-babel-load-file (concat mjw-cfg-root "config.org") 1)
