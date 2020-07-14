; scraps from various old emacs configs.
; i'm still mining this for useful scraps


(setq explicit-shell-file-name
      "C:/Program Files (x86)/Git/bin/bash.exe")
(setq shell-file-name explicit-shell-file-name)
(add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")



   ; http://lists.gnu.org/archive/html/emacs-orgmode/2013-11/msg00174.html
   (defun org-element-cache-reset (&optional all) (interactive))

(defun colon () (interactive) (insert ":"))
(defun semi-colon () (interactive) (insert ";"))
(global-set-key [(meta ctrl p)] 'colon)
(global-set-key [(meta ctrl u)] 'semi-colon)



;(setq ido-enable-flex-matching t)
;(setq ido-everywhere nil) ;; annoying in places like setting properties
;(setq ido-use-filename-at-point 'guess)
;(ido-mode 1)


(ignore-errors
  (add-to-list 'load-path "~/ver/nial-mode")
  (add-to-list 'load-path "~/ver/org-mode/lisp")
  (add-to-list 'load-path "~/ver/org-mode/contrib/lisp")
  (load-library "org")
  (load-library "nial-mode")
  (load-library "nial-console")
  (load-library "ob-nial")
  ; (load-library "python-mode")  ; how to get working with org-mode?
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((nial . t))) )

(server-start)

;
; ln -s ~/ver/tangentconf/emacs.el ~/.emacs
;
(add-to-list 'load-path "~/ver/tangentconf/emacs/vendor-modes")
(add-to-list 'load-path "~/o/elisp")

;(add-to-list 'load-path "~/.emacs.d/elpa/cl-lib-0.2/")
;(load-library "cl-lib")

(add-to-list 'load-path "~/ver/org-mode/lisp")
(add-to-list 'load-path "~/ver/org-mode/contrib/lisp")
(load-library "org")



;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph
    (defun unfill-paragraph ()
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive)
      (let ((fill-column (point-max)))
        (fill-paragraph nil)))

;(load-library "~/ver/tangentconf/emacs/vendor-modes/pascal.el")
(add-to-list 'auto-mode-alist '("\\.pp\\'" . pascal-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . pascal-mode))

(autoload 'graphviz-dot-mode "graphviz-dot-mode.el" "graphviz-mode" t)
(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))

(autoload 'retro-mode "retro-mode.el" "retro mode" t)
(add-to-list 'auto-mode-alist '("\\.rx\\'" . retro-mode))

(autoload 'makdown-mode "markdown-mode.el" "markdown mode" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; package system repos:
(setq package-archives '(("melpa" . "http://melpa.org/packages/")
			 ;("marmalade" . "http://marmalade-repo.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("org" . "http://orgmode.org/elpa/")))


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


; apparently the cl-lib package screws up other packages, so load it first:

(package-initialize)

(ignore-errors
  (require 'org-publish)
  (setq org-publish-project-alist
      '(("b-notes"
	 :base-directory "~/b/web/"
	 :base-extension "org"
	 :publishing-directory "~/h/"
	 :publishing-function org-html-publish-to-html
	 :htmlized-source t
	 :headline-levels 3
	 :with-latex t
         :with-tags t
	 :with-special-strings t
	 :recursive t
	 )
	("b-static"
	 :base-directory "~/b/web/"
	 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	 :publishing-directory "~/h/"
	 :recursive t
	 :publishing-function org-publish-attachment
	 )

	("x-notes"
	 :base-directory "~/x/org"
	 :base-extension "org"
	 :publishing-directory "~/h/xpl"
	 :publishing-function org-html-publish-to-html
	 :htmlized-source t
	 :headline-levels 3
	 :recursive t
	 )

	("b"  :components ("b-notes" "b-static"))
	("x" :components ("x-notes"))

	)))

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
;;	     '((font-lock-comment-face       "DarkRed")
;;	       (font-lock-string-face        "DarkGreen")
;;	       (font-lock-keyword-face       "RoyalBlue")
;;	       (font-lock-function-name-face "Blue")
;;	       (font-lock-variable-name-face "Red")
;;	       (font-lock-type-face          "ForestGreen")
;;	       (font-lock-reference-face     "Medium Purple")))))

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

;; (add-hook
;;  'outline-mode-hook
;;  (defun outline-stuff ()
;;    "outline mode stuff"
;;    (interactive)
;;    (outline-next-visible-heading 1)
;;    (hide-other)
;;    (hide-subtree)
;;    (beginning-of-buffer)))

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





; http://stackoverflow.com/questions/445225/emacs-command-to-delete-up-to-non-whitespace-character
(defun pull-next-line()
  (interactive)
  (move-end-of-line 1)
  (kill-line)
  (just-one-space))


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
(global-set-key (kbd "\C-c p") 'org-priority-down)

(global-set-key [(ctrl \\)] 'pull-next-line)

; i liked that so much i added these for general
; page up/page down behavior:
(global-set-key "\M-7" 'scroll-down-command)
(global-set-key "\M-8" 'scroll-up-command)

; this turned out to be a horrible idea because it
; interferes with practically every special key you press:
; (global-set-key "\M-[" 'previous-buffer)
; (global-set-key "\M-]" 'next-buffer)

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


(global-set-key (kbd "M-[ z") 'org-global-cycle)



;(define-prefix-command 'backtick-map)
;(global-set-key (kbd "`") 'backtick-map)
;(define-key backtick-map (kbd "n") )

(require 'win-switch)
;(global-set-key (kbd "`") 'win-switch-dispatch) ; great way to corrupt your j code
(define-key global-map "\M-Q" 'unfill-paragraph)

(global-set-key (kbd "<f1>") 'help)
(global-set-key (kbd "<ESC> <up>") 'shrink-window)
(global-set-key (kbd "<ESC> <down>") 'enlarge-window)
(global-set-key (kbd "<ESC> <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "<ESC> <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-x |") 'split-window-horizontally)
(global-set-key (kbd "C-x -") 'split-window-vertically)

(add-hook
 'org-mode-hook
 (lambda ()
   (local-unset-key (kbd "<ESC> <up>"))
   (local-unset-key (kbd "<ESC> <down>"))
   (local-unset-key (kbd "<ESC> <left>"))
   (local-unset-key (kbd "<ESC> <right>"))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; mac-specific keyboard stuff
;; Define the return key to avoid problems on MacOS X
(define-key function-key-map [return] [13])

;; http://www.webweavertech.com/ovidiu/emacs.html
(setq mac-command-key-is-meta nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
