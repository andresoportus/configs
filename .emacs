;; Helper Functions

(defun scroll-up-small ()
  (interactive)
  (scroll-up 3))
(defun scroll-down-small ()
  (interactive)
  (scroll-down 3))
(defun search-tags-under-cursor-forward ()
  (interactive)
  (tags-search (current-word)))
(defun load-emacs-init ()
  (interactive)
  (load-file "~/src/configs/.emacs"))
(defun revert-buffer-no-confirm ()
    "Revert buffer without confirmation."
    (interactive)
    (revert-buffer :ignore-auto :noconfirm))
(defun kill-compilation-buffer ()
  (interactive)
  (delete-window "*compilation*"))
(defun switch-to-xref ()
  (interactive)
  (switch-to-buffer "*xref*"))
(defun split-in-three-buffers ()
  (interactive)
  (split-window-horizontally 102)
  (other-window 1)
  (split-window-horizontally 102))
(defun add-low-buffer ()
  (interactive)
  (split-window-vertically -20))


;; Defaults

(setq-default c-default-style "linux"
              c-basic-offset 4
              indent-tabs-mode nil)
(setq show-trailing-whitespace t)
(setq column-number-mode t)
(setq compilation-scroll-output t)
(setq confirm-kill-emacs 'y-or-n-p)
(setq compilation-last-buffer t)
(when (fboundp 'winner-mode) (winner-mode 1))

;; Keys

;; Moving
(global-set-key [(control b)] 'switch-to-buffer)
(global-set-key (quote [home]) (quote move-beginning-of-line))
(global-set-key (quote [end])  (quote move-end-of-line))
;; (define-key input-decode-map "\e\eOA" [(meta up)])
;; (define-key input-decode-map "\e\eOB" [(meta down)])
(global-set-key [(meta up)]   'backward-paragraph)
(global-set-key [(meta down)] 'forward-paragraph)
(global-set-key "\C-cg"    'goto-line)
(global-set-key "\M-k"     'previous-buffer)
(global-set-key "\M-l"     'next-buffer)
(global-set-key "\M-i"     'previous-multiframe-window)
(global-set-key "\M-o"     'other-window)
(global-set-key "\M-u"     'scroll-down-small)
(global-set-key "\M-d"     'scroll-up-small)

;; Search
(global-set-key "\M-s\M-s" 'tags-search)
(global-set-key "\C-cf"    'search-tags-under-cursor-forward)
(global-set-key "\C-t"     'rgrep)

;; Errors
(global-set-key "\M-p"     'previous-error)
(global-set-key "\M-n"     'next-error)
(global-set-key [(meta p)] 'previous-error)
(global-set-key [(meta n)] 'next-error)

;; Utils
(global-set-key "\C-q"     'buffer-menu)
(global-set-key "\C-cx"    'switch-to-xref)
(global-set-key "\C-cb"    'buffer-menu)
(global-set-key "\C-co"    'split-in-three-buffers)
(global-set-key "\C-cp"    'add-low-buffer)
(global-set-key "\C-cw"    'whitespace-mode)
(global-set-key "\C-cl"    'load-emacs-init)
(global-set-key "\M-c"     'compile)
(global-set-key "\C-cr"    'revert-buffer-no-confirm)
(global-set-key "\C-f" "\C-a\C-k\C-k") ;; delete line
