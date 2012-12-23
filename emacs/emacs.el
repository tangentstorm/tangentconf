;
; ln -s ~/ver/tangentconf/emacs.el ~/.emacs
;
(add-to-list 'load-path "~/ver/tangentconf/emacs/vendor-modes")
(add-to-list 'load-path "~/o/elisp")

(global-visual-line-mode t)
(menu-bar-mode 0)
;(xterm-mouse-mode t)



;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph    
    (defun unfill-paragraph ()
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive)
      (let ((fill-column (point-max)))
        (fill-paragraph nil)))

;(load-library "~/ver/tangentconf/emacs/vendor-modes/pascal.el")
(add-to-list 'auto-mode-alist '("\\.pp\\'" . pascal-mode))


(autoload 'retro-mode "retro-mode.el" "retro mode" t)
(add-to-list 'auto-mode-alist '("\\.rx\\'" . retro-mode))

; http://nex-3.com/posts/45-efficient-window-switching-in-emacs
(defun select-next-window ()
  "Switch to the next window"
  (interactive)
  (select-window (next-window)))

(defun select-previous-window ()
  "Switch to the previous window"
  (interactive)
  (select-window (previous-window)))

(defun terminal-init-screen ()
      "Terminal initialization function for screen-256color."
      (load "term/xterm")
      (xterm-register-default-colors)
      (tty-set-up-initial-frame-faces))




;; Michal's os x .emacs file
;(require 'outdent)
;(require 'textile-mode)
;(require 'css-mode)

;(cua-mode t)

;(autoload 'ses-mode "ses.el" "Spreadsheet mode" t)
;(add-to-list 'auto-mode-alist '("\\.ses$" . ses-mode))


;(require 'ledger)
;(add-to-list 'auto-mode-alist '("\\.led$" . ledger-mode))
;(setq ledger-binary-path "/usr/local/bin/ledger")

;;;;;; FONT LOCK CONFIGURATION ;;;;;;;;;;;;;;;;;;;;

;; (cond ((eq window-system `mac)
;;        (set-frame-size (selected-frame) 80 45)

;;        ;; I like this one better..
;;        (set-background-color "white smoke")
;;        (set-foreground-color "black")
;;        (setq font-lock-face-attributes
;;        ;; Symbol-for-Face Foreground Background Bold Italic Underline
;; 	     '((font-lock-comment-face       "DarkRed")
;; 	       (font-lock-string-face        "DarkGreen")
;; 	       (font-lock-keyword-face       "RoyalBlue")
;; 	       (font-lock-function-name-face "Blue")
;; 	       (font-lock-variable-name-face "Red")
;; 	       (font-lock-type-face          "ForestGreen")
;; 	       (font-lock-reference-face     "Medium Purple")))))

;; Load the font-lock package.
(require 'font-lock)
;; Maximum colors
(setq font-lock-maximum-decoration t)
;; Turn on font-lock in all modes that support it
(global-font-lock-mode t)


;; magical parentheses:
(require 'paren)
(show-paren-mode 1)


;; ruby
;(cons '("\\.rb$" . ruby-mode) auto-mode-alist)
;(setq interpreter-mode-alist
;      (cons '("ruby" . ruby-mode)
;            interpreter-mode-alist))
;(autoload 'ruby-mode "ruby-mode" "Ruby editing mode." t)


;; d
;(setq auto-mode-alist
;      (cons '("\\.d$" . d-mode) auto-mode-alist))
;(autoload 'd-mode "d-mode" "D editing mode." t)



;; python
;(setq auto-mode-alist
;      (cons '("\\.py$" . python-mode) auto-mode-alist))
;(setq auto-mode-alist
;      (cons '("\\.app$" . python-mode) auto-mode-alist))
;(setq interpreter-mode-alist
;      (cons '("python" . python-mode)
;            interpreter-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)

;;;; `Pyrex' mode.

;(add-to-list 'auto-mode-alist '("\\.pyx\\'" . pyrex-mode));
;
;(define-derived-mode pyrex-mode python-mode "Pyrex"
;  (font-lock-add-keywords
;   nil
;   `((,(concat "\\<\\(NULL"
;	       "\\|c\\(def\\|har\\|typedef\\)"
;	       "\\|e\\(num\\|xtern\\)"
;	       "\\|float"
;	       "\\|in\\(clude\\|t\\)"
;	       "\\|object\\|public\\|struct\\|type\\|union\\|void"
;	       "\\)\\>")
;      1 font-lock-keyword-face t))));



;;(load-library "pdb.el")


;; timestamp stuff:
(defun insert-timestamp()
  "Insert the current date and time."
  (interactive "*")
  (insert (format-time-string "[%m%d.%Y %I:%M%p]" (current-time))))

(defun insert-datestamp()
  "Insert the current date in mmdd.yyyy format."
  (interactive "*")
  (insert (format-time-string "%m%d.%Y" (current-time))))


;;;;;;;;;; OUTLINE MODE STUFF ;;;;;;;;;;;;

(add-hook
 'outline-mode-hook
 (defun outline-stuff ()
   "outline mode stuff"
   (interactive)
   (outline-next-visible-heading 1)
   (hide-other)
   (hide-subtree)
   (beginning-of-buffer)))

;;;;;;; associate with *.out ;;;;
(setq auto-mode-alist
      (append
       '(("\\.out$" . outline-mode))
       auto-mode-alist))

; ledger mode outlines:
(add-hook
 'ledger-mode-hook
 (lambda ()
   (outline-minor-mode)
   (setq outline-regexp ";---")))


;; zebra files
(setq auto-mode-alist
      (append
       '(("\\.zb$" . python-mode))
       auto-mode-alist))

;; tab size
(setq default-tab-width 8)

;; allow command.com to work on windows
(setq process-coding-system-alist
      '(("cmdproxy" . (raw-text-dos . raw-text-dos))))

;; column number mode
(column-number-mode t)

;; tool to encourage dialog...

(defun dialog ()
  "talk to yourself"
  (interactive)
  (setq prompts '("A: " "B: "))
  (setq val nil)
  (while (not (equal val "quit"))
    (setq prompt (car prompts))
    (setq val (read-string prompt))
    (apply 'insert prompt val "\n" ())
    (backward-paragraph 1)
    (fill-paragraph "")
    (forward-paragraph 1)
    (insert-string "\n")
    (setq prompts (reverse prompts))))


;; esc-p to strip linefeeds
;; (defun strip-linefeeds ()
;;   "just what it says"
;;   (interactive)
;;   (replace-string "" ""))


;(load "emacs-wiki")
(defun organizer ()
  "michal's organizer"
  (interactive)
  (delete-other-windows)
  (find-file "~/keep/tasklog/2005/01/20050129.log")
  (split-window-vertically)
  (other-window -1)
  (find-file-other-window "~/keep/macjournal.txt"))
;(global-set-key "M o" 'organizer)


;; wordcount
;; http://www.delorie.com/gnu/docs/emacs-lisp-intro/emacs-lisp-intro_167.html

;;; Final version: while
(defun count-words-region (beginning end)
  "Print number of words in the region."
  (interactive "r")
  (message "Counting words in region ... ")

  ;;; 1. Set up appropriate conditions.
  (save-excursion
    (let ((count 0))
      (goto-char beginning)

      ;;; 2. Run the while loop.
      (while (and (< (point) end)
                  (re-search-forward "\\w+\\W*" end t))
        (setq count (1+ count)))

      ;;; 3. Send a message to the user.
      (cond ((zerop count)
             (message
              "The region does NOT have any words."))
            ((= 1 count)
             (message
              "The region has 1 word."))
            (t
             (message
              "The region has %d words." count))))))


(defun state-check ()
  "state check"
  (interactive)
  (insert-string "[Hl: _ Cl: _ Fo: _ Dr: _ Ch: _ Wm: _]"))

(defun journal ()
  "michal's journal"
  (interactive)
  (delete-other-windows)
  (find-file "~/keep/macjournal.txt")
  (end-of-buffer))

;; frame title : set to buffer name
(setq frame-title-format "emacs - %b")
(setq icon-title-format  "emacs - %b")



;; OS X Magic ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(autoload 'css-mode "css-mode")
(setq auto-mode-alist
      (cons '("\\.css\\'" . css-mode) auto-mode-alist))


;(load "~/ver/tangentconf/emacs/vendor-modes/nxml-mode-20041004/rng-auto.el")
(setq auto-mode-alist
      (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode)
	    auto-mode-alist))


;(load-library "multi-mode.el")
(defun trail-mode ()
  (interactive)
  (multi-mode 1
	      'nxml-mode
	      '("<code" python-mode)
	      '("</code>" nxml-mode)))
(setq auto-mode-alist
      (cons '("\\.trail$" . trail-mode) auto-mode-alist))



;; eof ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list (quote ("/sw/share/info/")))
 '(delphi-case-label-indent 2)
 '(delphi-compound-block-indent 0)
 '(delphi-indent-level 2)
 '(ede-project-directories (quote ("/Users/michal/r/old/pascal.cvs/units")))
 '(ediff-highlight-all-diffs nil)
 '(ediff-use-faces nil)
 '(global-hl-line-mode t)
 '(global-whitespace-mode nil)
 '(global-whitespace-newline-mode t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(initial-scratch-message ";; -- scratch --
")
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars t)
 '(org-id-method (quote org))
 '(org-indent-boundary-char 124)
 '(org-indent-indentation-per-level 2)
 '(org-pretty-entities t)
 '(org-show-hierarchy-above (quote ((default . t))))
 '(org-src-fontify-natively t)
 '(org-src-tab-acts-natively t)
 '(org-startup-indented t)
 '(org-structure-template-alist (quote (("s" "#+begin_src ?

#+end_src" "<src lang=\"?\">

</src>") ("e" "#+begin_example
?
#+end_example" "<example>
?
</example>") ("q" "#+begin_quote
?
#+end_quote" "<quote>
?
</quote>") ("v" "#+begin_verse
?
#+end_verse" "<verse>
?
</verse>") ("c" "#+begin_center
?
#+end_center" "<center>
?
</center>") ("l" "#+begin_latex
?
#+end_latex" "<literal style=\"latex\">
?
</literal>") ("L" "#+latex: " "<literal style=\"latex\">?</literal>") ("h" "#+begin_html
?
#+end_html" "<literal style=\"html\">
?
</literal>") ("H" "#+html: " "<literal style=\"html\">?</literal>") ("a" "#+begin_ascii
?
#+end_ascii") ("a" "#+ascii: ") ("i" "#+index: ?" "#+index: ?") ("i" "#+include: %file ?" "<include file=%file markup=\"?\">"))))
 '(org-use-property-inheritance t)
 '(org-use-speed-commands t)
 '(pascal-indent-level 2 t)
 '(python-python-command "python")
 '(rst-level-face-max 0)
 '(show-trailing-whitespace t)
 '(speedbar-show-unknown-files t)
 '(tool-bar-mode nil)
 '(whitespace-action (quote (cleanup)))
 '(whitespace-display-mappings (quote ((space-mark 32 [46]) (space-mark 160 [95]) (space-mark 2208 [95]) (space-mark 2336 [95]) (space-mark 3616 [95]) (space-mark 3872 [95]) (newline-mark 10 [10]) (tab-mark 9 [9]))))
 '(whitespace-line-column 64)
 '(whitespace-style (quote (face tabs spaces trailing space-before-tab newline empty space-after-tab space-mark tab-mark newline-mark)))
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
 '(escape-glyph ((nil (:foreground "red"))))
 '(font-lock-builtin-face ((((class color) (min-colors 8)) (:foreground "magenta" :weight bold))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((nil (:foreground "#66f"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "forest green"))))
 '(font-lock-function-name-face ((((class color) (min-colors 8)) (:foreground "white" :weight bold))))
 '(font-lock-keyword-face ((nil (:foreground "cyan"))))
 '(font-lock-string-face ((nil (:foreground "green"))))
 '(font-lock-type-face ((nil (:foreground "magenta"))))
 '(fringe ((((class color) (background light)) (:background "#999" :foreground "#333"))))
 '(hi-yellow ((((min-colors 88)) (:background "gold" :foreground "black"))))
 '(highlight ((((class color) (min-colors 88) (background light)) (:background "darkseagreen2" :foreground "black"))))
 '(hl-line ((t (:background "#011"))))
 '(isearch ((((class color) (min-colors 88) (background light)) (:background "magenta3" :foreground "black"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "tomato" :foreground "black"))))
 '(italic ((t (:foreground "gold" :slant italic))))
 '(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "#303" :foreground "black"))))
 '(link ((((class color) (min-colors 88) (background light)) (:foreground "cyan" :underline t))))
 '(linum ((t (:inherit (shadow default) :inverse-video t))))
 '(menu ((((type tty)) (:background "#999" :foreground "#333"))))
 '(minibuffer-prompt ((t (:foreground "cornflower blue"))))
 '(mode-line ((((class color) (min-colors 88)) (:background "#999" :foreground "#333"))))
 '(mode-line-buffer-id ((t (:background "black" :foreground "green" :weight bold))))
 '(mode-line-inactive ((default (:inherit mode-line)) (((class color) (min-colors 88) (background light)) (:background "#333" :foreground "black"))))
 '(org-block ((t (:inherit shadow :foreground "green"))))
 '(org-block-begin-line ((t (:inherit org-meta-line))) t)
 '(org-block-end-line ((t (:inherit org-meta-line))) t)
 '(org-code ((t (:foreground "green"))))
 '(org-document-info ((((class color) (background light)) (:foreground "#003366"))))
 '(org-document-title ((nil (:foreground "brightmagenta"))))
 '(org-done ((nil (:foreground "green"))))
 '(org-ellipsis ((((class color) (background light)) (:foreground "DarkGoldenrod"))))
 '(org-hide ((t (:background "black" :foreground "#333"))))
 '(org-indent ((t (:background "black" :foreground "#333"))) t)
 '(org-link ((t (:inherit link :foreground "dark cyan"))))
 '(org-meta-line ((t (:background "     black" :foreground "#6666ff"))))
 '(org-special-keyword ((t (:foreground "#888"))))
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
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "gray" :foreground "#333"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background dark)) (:foreground "#444"))))
 '(tool-bar ((default (:background "#333" :foreground "black" :box (:line-width 1 :style released-button))) (nil nil)))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1" :foreground "black"))))
 '(whitespace-line ((t (:foreground "magenta" :underline "red"))))
 '(whitespace-newline ((t (:foreground "#333" :weight normal))))
 '(whitespace-space ((nil (:foreground "#444"))))
 '(whitespace-tab ((((class color) (background light)) (:background "red" :foreground "black"))))
 '(whitespace-trailing ((t (:background "#444" :foreground "black" :weight bold))))
 '(widget-field ((((type tty)) (:background "magenta" :foreground "black")))))


;(set-frame-size (selected-frame) 80 30)
;(set-foreground-color "white")
;(set-background-color "black")
(set-cursor-color "gold")

;(make-frame-command)
;(set-frame-size (selected-frame) 80 10)
;(set-frame-position (selected-frame) 350 0)
;(set-background-color "dark red")

;(scroll-bar-mode nil)


(put 'narrow-to-page 'disabled nil)




(defun forward-screen ()
  "move to the next page, showing only what's beetween the  (form feed) characters"
  (interactive)
  (widen)
  (forward-page)
  (narrow-to-page))

(defun backward-screen ()
  "move to the previous page, showing only what's beetween the  (form feed) characters"
 (interactive)
 (widen)
 (backward-page 2)
 (narrow-to-page))




; http://stackoverflow.com/questions/445225/emacs-command-to-delete-up-to-non-whitespace-character
(defun pull-next-line()
  (interactive)
  (move-end-of-line 1)
  (kill-line)
  (just-one-space))




  (defvar tan-sym-card "CARD")
  (defvar tan-sym-note "NOTE")

  (defun tan-insert-org (keywd-sym weak-ts? suffix)
    (org-insert-heading)
    (insert keywd-sym)
    (org-return)
    (org-set-property "TS" (make-org-timestamp))
    (when weak-ts? (org-toggle-timestamp-type))
    (org-id-get-create)
    (search-backward keywd-sym)
    (org-end-of-line)
    (insert suffix))

  (defun tan-insert-card ()
    (interactive)
    (tan-insert-org tan-sym-card nil " > "))

  (defun tan-insert-note ()
    (interactive)
    (tan-insert-org tan-sym-note t " . "))

  (defun make-org-timestamp ()
    "format the current date and time for org-mode"
    (format-time-string "<%Y-%m-%d %I:%M%p>" (current-time)))

  (defun insert-org-timestamp ()
    ""
    (interactive)
    (insert (make-org-timestamp)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(global-set-key [(meta a)] 'mark-whole-buffer)
;(global-set-key [(meta v)] 'yank)
;(global-set-key [(meta c)] 'kill-ring-save)
;(global-set-key [(meta x)] 'kill-region)
;(global-set-key [(meta s)] 'save-buffer)
;(global-set-key [(meta l)] 'goto-line)
;(global-set-key [(meta o)] 'find-file)
;(global-set-key [(meta f)] 'isearch-forward)
;(global-set-key [(meta g)] 'isearch-repeat-forward)
;(global-set-key [(meta w)]
;                (lambda () (interactive) (kill-buffer (current-buffer))))
;(global-set-key [(meta .)] 'keyboard-quit)
;(global-set-key [(meta q)] 'save-buffers-kill-emacs)
;(global-set-key [(meta =)] 'delete-other-windows)

;(require 'redo)
;(global-set-key [(alt z)] 'undo)
;(global-set-key [(alt shift z)] 'redo)

(global-set-key [f12] 'execute-extended-command)
(global-set-key [f1] 'apropos)
;(global-set-key [f3] 'eval-last-sexp)
;(global-set-key [f4] 'nxml-balanced-close-start-tag-inline)

(global-set-key [f5] 'insert-timestamp)
(global-set-key (kbd "\C-c n") 'tan-insert-note)
(global-set-key (kbd "\C-c p") 'org-priority-down)

(global-set-key [(ctrl \\)] 'pull-next-line)
(global-set-key "\M-9" 'backward-screen)
(global-set-key "\M-0" 'forward-screen)
(global-set-key "\M-[" 'previous-buffer)
(global-set-key "\M-]" 'next-buffer)
(global-set-key (kbd "ESC <prior>") 'select-next-window)
(global-set-key (kbd "ESC <next>")  'select-previous-window)
(global-set-key [(meta p)] 'mark-paragraph)
(global-set-key [(meta h)] 'backward-kill-word)
(global-set-key [(ctrl h)] 'backward-delete-char)

(global-set-key "\C-ct" 'insert-timestamp)
(global-set-key "\C-cd" 'insert-datestamp)

;(global-set-key "\M-h" 'state-check)
(global-set-key "\C-cw" 'count-words-region)
(global-set-key "\M-j" 'journal)


;(define-prefix-command 'backtick-map)
;(global-set-key (kbd "`") 'backtick-map)
;(define-key backtick-map (kbd "n") )

(require 'win-switch)
(global-set-key (kbd "`") 'win-switch-dispatch)
(global-set-key (kbd "\C-x \C-b") 'ibuffer)
(define-key global-map "\M-Q" 'unfill-paragraph)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; mac-specific keyboard stuff
;; Define the return key to avoid problems on MacOS X
(define-key function-key-map [return] [13])

;; http://www.webweavertech.com/ovidiu/emacs.html
(setq mac-command-key-is-meta nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

