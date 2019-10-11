(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list (quote ("/sw/share/info/")))
 '(column-number-mode t)
 '(delphi-case-label-indent 2)
 '(delphi-compound-block-indent 0)
 '(delphi-indent-level 2)
 '(ede-project-directories (quote ("/Users/michal/r/old/pascal.cvs/units")))
 '(ediff-highlight-all-diffs nil)
 '(ediff-shell "C:\\Program Files\\Git\\git-bash.exe")
 '(ediff-use-faces nil)
 '(global-hl-line-mode t)
 '(global-whitespace-mode nil)
 '(global-whitespace-newline-mode t)
 '(haskell-mode-hook (quote (turn-on-haskell-indent)))
 '(inhibit-startup-screen t)
 '(initial-scratch-message ";; -- scratch --
")
 '(ispell-program-name "/usr/local/bin/hunspell")
 '(j-command "/home/michal/j701/bin/jconsole")
 '(j-console-cmd "/home/michal/j701/bin/jconsole")
 '(j-path "/home/michal/j701/")
 '(js-indent-level 2)
 '(menu-bar-mode nil)
 '(opascal-case-label-indent 2)
 '(opascal-compound-block-indent 0)
 '(opascal-indent-level 2)
 '(org-agenda-files
   (quote
    ("~/o/todo.org" "~/r/features.org" "~/b/ref/retro-trail.org")))
 '(org-babel-load-languages
   (quote
    ((emacs-lisp . t)
     (python . t)
     (maxima . t)
     (haskell . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-entities-ascii-explanatory t)
 '(org-entities-user (quote (("jstar" "*:" nil "*:" "*:" "*:" "*:"))))
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars t)
 '(org-highlight-latex-and-related (quote (latex script entities)))
 '(org-html-head
   "<link rel=\"stylesheet\" type=\"text/css\" href=\"/etc/style.css\">")
 '(org-html-head-include-default-style nil)
 '(org-html-postamble nil)
 '(org-html-style
   "<link rel=\"stylesheet\" type=\"text/css\" href=\"etc/style.css\">")
 '(org-html-style-include-default nil)
 '(org-html-use-infojs (quote when-configured))
 '(org-htmlize-output-type (quote css))
 '(org-id-method (quote org))
 '(org-indent-boundary-char 124)
 '(org-indent-indentation-per-level 2)
 '(org-link-frame-setup
   (quote
    ((vm . vm-visit-folder-other-frame)
     (vm-imap . vm-visit-imap-folder-other-frame)
     (gnus . org-gnus-no-new-news)
     (file . find-file)
     (wl . wl-other-frame))))
 '(org-pretty-entities t)
 '(org-return-follows-link t)
 '(org-show-hierarchy-above (quote ((default . t))))
 '(org-src-fontify-natively t)
 '(org-src-lang-modes
   (quote
    (("ocaml" . tuareg)
     ("elisp" . emacs-lisp)
     ("ditaa" . artist)
     ("asymptote" . asy)
     ("dot" . fundamental)
     ("sqlite" . sql)
     ("calc" . fundamental)
     ("C" . c)
     ("cpp" . c++)
     ("C++" . c++)
     ("screen" . shell-script))))
 '(org-src-tab-acts-natively t)
 '(org-startup-folded t)
 '(org-startup-indented t)
 '(org-structure-template-alist
   (quote
    (("s" "#+begin_src ?

#+end_src" "<src lang=\"?\">

</src>")
     ("e" "#+begin_example
?
#+end_example" "<example>
?
</example>")
     ("q" "#+begin_quote
?
#+end_quote" "<quote>
?
</quote>")
     ("v" "#+begin_verse
?
#+end_verse" "<verse>
?
</verse>")
     ("c" "#+begin_center
?
#+end_center" "<center>
?
</center>")
     ("l" "#+begin_latex
?
#+end_latex" "<literal style=\"latex\">
?
</literal>")
     ("L" "#+latex: " "<literal style=\"latex\">?</literal>")
     ("h" "#+begin_html
?
#+end_html" "<literal style=\"html\">
?
</literal>")
     ("H" "#+html: " "<literal style=\"html\">?</literal>")
     ("a" "#+begin_ascii
?
#+end_ascii")
     ("a" "#+ascii: ")
     ("i" "#+index: ?" "#+index: ?")
     ("i" "#+include: %file ?" "<include file=%file markup=\"?\">"))))
 '(org-tags-column 64)
 '(org-use-property-inheritance t)
 '(org-use-speed-commands t)
 '(package-selected-packages
   (quote
    (go-autocomplete go-complete go-direx go-guru go-mode j-mode magit coffee-mode cargo flycheck-rust lsp-mode lsp-rust ob-rust racer rustic rust-mode caml scala-mode sml-mode opencl-mode cuda-mode historian win-switch)))
 '(pascal-indent-level 2 t)
 '(python-python-command "python")
 '(racer-cmd "c:/Users/michal/.cargo/bin/racer")
 '(rst-level-face-max 0)
 '(rust-indent-offset 2)
 '(save-place t nil (saveplace))
 '(save-place-mode t nil (saveplace))
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-right-side nil)
 '(tool-bar-mode nil)
 '(vc-follow-symlinks t)
 '(whitespace-action (quote (cleanup)))
 '(whitespace-display-mappings
   (quote
    ((space-mark 32
		 [46])
     (space-mark 160
		 [95])
     (space-mark 2208
		 [95])
     (space-mark 2336
		 [95])
     (space-mark 3616
		 [95])
     (space-mark 3872
		 [95])
     (newline-mark 10
		   [10])
     (tab-mark 9
	       [9]))))
 '(whitespace-line-column 64)
 '(whitespace-style
   (quote
    (face trailing tabs newline empty space-after-tab space-before-tab)))
 '(win-switch-delete-window-keys (quote ("x")))
 '(win-switch-down-keys (quote ("t")))
 '(win-switch-enlarge-horizontally-keys (quote ("N")))
 '(win-switch-enlarge-vertically-keys (quote ("C")))
 '(win-switch-idle-time 1.5)
 '(win-switch-left-keys (quote ("h")))
 '(win-switch-right-keys (quote ("n")))
 '(win-switch-shrink-horizontally-keys (quote ("H")))
 '(win-switch-shrink-vertically-keys (quote ("T")))
 '(win-switch-split-horizontally-keys (quote ("|")))
 '(win-switch-split-vertically-keys (quote ("-")))
 '(win-switch-up-keys (quote ("c"))))




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#112" :foreground "#ddd" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 123 :width normal :foundry "outline" :family "Consolas" :antialias "subpixel"))))
 '(button ((((supports :underline t)) (:foreground "dark cyan" :underline t))))
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt))))
 '(custom-button-unraised ((t (:inherit underline :foreground "dark cyan"))))
 '(custom-group-tag ((((min-colors 88) (class color) (background light)) (:inherit variable-pitch :foreground "cornflower blue" :weight bold :height 1.2))))
 '(custom-state ((((class color) (background light)) (:foreground "green"))))
 '(custom-variable-tag ((((min-colors 88) (class color) (background light)) (:foreground "cornflower blue" :weight bold))))
 '(ediff-current-diff-A ((nil (:inverse-video t))))
 '(ediff-current-diff-Ancestor ((((class color) (min-colors 16)) (:background "navy" :foreground "gold"))))
 '(ediff-current-diff-B ((nil (:inverse-video t))))
 '(ediff-current-diff-C ((((class color) (min-colors 16)) (:background "navy" :foreground "gold"))))
 '(ediff-even-diff-A ((((class color) (min-colors 16)) (:background "#444" :foreground "#aaa"))))
 '(ediff-even-diff-Ancestor ((((class color) (min-colors 16)) (:inherit ediff-even-diff-A))))
 '(ediff-even-diff-B ((((class color) (min-colors 16)) (:inherit ediff-even-diff-A))))
 '(ediff-even-diff-C ((((class color) (min-colors 16)) (:inherit ediff-even-diff-A))))
 '(ediff-fine-diff-A ((((class color) (min-colors 16)) (:background "blue" :foreground "white"))))
 '(ediff-fine-diff-Ancestor ((((class color) (min-colors 16)) (:inherit ediff-fine-diff-A))))
 '(ediff-fine-diff-B ((((class color) (min-colors 16)) (:inherit ediff-fine-diff-A))))
 '(ediff-fine-diff-C ((((class color) (min-colors 16)) (:inherit ediff-fine-diff-A))))
 '(ediff-odd-diff-A ((((class color) (min-colors 16)) (:background "#666" :foreground "#000"))))
 '(ediff-odd-diff-Ancestor ((((class color) (min-colors 16)) (:inherit ediff-odd-diff-A))))
 '(ediff-odd-diff-B ((((class color) (min-colors 16)) (:inherit ediff-odd-diff-A))))
 '(ediff-odd-diff-C ((((class color) (min-colors 16)) (:inherit ediff-odd-diff-A))))
 '(escape-glyph ((t (:background "red" :foreground "black"))))
 '(font-lock-builtin-face ((((class color) (min-colors 8)) (:foreground "magenta" :weight bold))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((nil (:foreground "#66f"))))
 '(font-lock-constant-face ((t (:foreground "#ffaf00"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "forest green"))))
 '(font-lock-function-name-face ((((class color) (min-colors 8)) (:foreground "white" :weight bold))))
 '(font-lock-keyword-face ((nil (:foreground "cyan"))))
 '(font-lock-preprocessor-face ((t (:foreground "firebrick1"))))
 '(font-lock-string-face ((nil (:foreground "green"))))
 '(font-lock-type-face ((t (:foreground "deep pink"))))
 '(fringe ((((class color) (background light)) (:background "#999" :foreground "#333"))))
 '(hi-yellow ((((min-colors 88)) (:background "gold" :foreground "black"))))
 '(highlight ((t (:background "color-235"))))
 '(hl-line ((t (:background "#333"))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:background "magenta3" :foreground "black"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "tomato" :foreground "black"))))
 '(italic ((t (:foreground "gold" :slant italic))))
 '(j-adverb-face ((t (:foreground "brightred"))))
 '(j-conjunction-face ((t (:foreground "#ff5f00"))))
 '(j-other-face ((t (:foreground "#666"))))
 '(j-verb-face ((t (:foreground "#ffaf00"))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "#303" :foreground "black"))))
 '(ledger-font-payee-pending-face ((t (:foreground "brightwhite" :weight normal))))
 '(ledger-font-payee-uncleared-face ((t (:foreground "brightwhite" :weight bold))))
 '(ledger-font-posting-date-face ((t (:foreground "color-141"))))
 '(link ((((class color) (min-colors 88) (background light)) (:foreground "cyan" :underline t))))
 '(linum ((t (:inherit (shadow default) :inverse-video t))))
 '(menu ((((type tty)) (:background "#999" :foreground "#333"))))
 '(minibuffer-prompt ((t (:foreground "cornflower blue"))))
 '(mode-line ((((class color) (min-colors 88)) (:background "#999" :foreground "#333"))))
 '(mode-line-buffer-id ((t (:background "black" :foreground "green" :weight bold))))
 '(mode-line-inactive ((default (:inherit mode-line)) (((class color) (min-colors 88) (background light)) (:background "#333" :foreground "black"))))
 '(nial-transformer-face ((t (:foreground "yellow"))))
 '(org-block ((t (:inherit shadow :foreground "green"))))
 '(org-block-background ((t (:background "black"))))
 '(org-block-begin-line ((t (:inherit org-meta-line))) t)
 '(org-block-end-line ((t (:inherit org-meta-line))) t)
 '(org-code ((t (:foreground "green"))))
 '(org-document-info ((((class color) (background light)) (:foreground "#003366"))))
 '(org-document-title ((nil (:foreground "brightmagenta"))))
 '(org-done ((nil (:foreground "green"))))
 '(org-ellipsis ((((class color grayscale) (background light dark)) (:foreground "cyan"))))
 '(org-hide ((t (:background "black" :foreground "#333"))))
 '(org-indent ((t (:background "black" :foreground "#333"))) t)
 '(org-latex-and-related ((t (:background "color-17" :foreground "brightyellow"))))
 '(org-link ((t (:inherit link :foreground "dark cyan"))))
 '(org-meta-line ((t (:background "     black" :foreground "#6666ff"))))
 '(org-special-keyword ((t (:foreground "#777"))))
 '(org-table ((((class color) (min-colors 8) (background light)) (:foreground "yellow"))))
 '(org-tag ((t (:background "black" :foreground "magenta" :weight bold))))
 '(org-todo ((t (:foreground "red" :weight bold))))
 '(org-verbatim ((t (:foreground "gold"))))
 '(outline-1 ((t (:foreground "brightwhite" :weight bold))))
 '(outline-2 ((t (:foreground "color-254" :weight bold))))
 '(outline-3 ((t (:foreground "color-252" :weight ultra-bold))))
 '(outline-4 ((t (:foreground "color-250" :weight bold))))
 '(outline-5 ((t (:foreground "color-248" :weight bold))))
 '(outline-6 ((t (:foreground "color-246" :weight bold))))
 '(outline-7 ((t (:foreground "color-244" :weight bold))))
 '(outline-8 ((t (:foreground "color-242" :weight bold))))
 '(region ((((class color) (min-colors 88) (background light)) (:background "#333" :foreground "gray"))))
 '(rst-level-1-face ((t (:background "#000" :foreground "#0f0"))) t)
 '(rst-level-2-face ((t (:background "#000" :foreground "#0c0"))) t)
 '(rst-level-3-face ((t (:background "#000" :foreground "#090"))) t)
 '(rst-level-4-face ((t (:background "#000" :foreground "#060"))) t)
 '(rst-level-5-face ((t (:background "#000" :foreground "#030"))) t)
 '(rust-builtin-formatting-macro-face ((t (:foreground "orchid"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "gray" :foreground "#333"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background dark)) (:foreground "#444"))))
 '(stringtemplate-font-lock-marker-face ((nil (:foreground "red" :weight bold))))
 '(stringtemplate-font-lock-template-face ((t (:foreground "cyan" :weight bold))))
 '(superscript ((t (:foreground "tomato" :height tex-suscript-height))))
 '(tool-bar ((default (:background "#333" :foreground "black" :box (:line-width 1 :style released-button))) (nil nil)))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1" :foreground "black"))))
 '(whitespace-empty ((t (:background "color-235" :foreground "firebrick"))))
 '(whitespace-indentation ((t (:background "color-235" :foreground "firebrick"))))
 '(whitespace-line ((t (:foreground "magenta" :underline "red"))))
 '(whitespace-newline ((t (:foreground "#333" :weight normal))))
 '(whitespace-space ((t nil)))
 '(whitespace-tab ((((class color) (background light)) (:background "red" :foreground "black"))))
 '(whitespace-trailing ((t (:background "#444" :foreground "black" :weight bold))))
 '(widget-field ((((type tty)) (:background "magenta" :foreground "black")))))
