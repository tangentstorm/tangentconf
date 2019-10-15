; set up packages.
; things seem to fall apart if I try to do this in the org file.
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)


(setq mjw-cfg-root
      (if (eq system-type 'windows-nt)
	  "d:/ver/tangentconf/emacs/"
	"~/t/emacs/"))

(require 'org)
(org-babel-load-file (concat mjw-cfg-root "config.org") 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
