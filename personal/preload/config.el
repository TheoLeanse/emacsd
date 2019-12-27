(setq-default tab-width 4)

(add-hook 'json-mode-hook
		  (lambda ()
			(setq-local tab-width 2)
			(setq indent-tabs-mode nil)))

(setq whitespace-style
	  '(face
		empty
		trailing
		lines-tail
		indentation
		space-before-tab
		space-after-tab))

(setq whitespace-global-modes '(not org-mode))


(toggle-scroll-bar -1)

(add-to-list 'default-frame-alist
			 '(cursor-color . "#2aa198"))

(set-face-attribute 'default nil :height 140)

(let ((px (display-pixel-width))
	  (py (display-pixel-height))
	  (fx (frame-char-width))
	  (fy (frame-char-height))
	  tx ty)
  (setq tx (- (/ px fx) 7))
  (setq ty (- (/ py fy) 4))
  (setq initial-frame-alist '((top . 15) (left . 15)))
  (add-to-list 'default-frame-alist (cons 'width tx))
  (add-to-list 'default-frame-alist (cons 'height ty)))

(setq prelude-user-init-file load-file-name)

(defcustom prelude-theme 'solarized-light
  "The default color theme, change this in your /personal/preload config."
  :type 'symbol
  :group 'prelude)

(add-hook 'before-save-hook 'whitespace-cleanup)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'super)
