;; Default
(setq-default compilation-scroll-output t)

;; Inhibit splah screen
(setq-default inhibit-splash-screen t)

;; Indentation parameters
(setq-default indent-tabs-mode nil
              tab-width 4)

;; Windows resizing
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)


;; Backup
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Package Melap
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Paredit
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)
(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'racket-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)

;; ido and smex
(require 'smex)
(require 'ido-completing-read+)

(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(leuven))
 '(custom-safe-themes
   '("5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" "1a212b23eb9a9bedde5ca8d8568b1e6351f6d6f989dd9e9de7fba8621e8ef82d" default))
 '(frame-brackground-mode 'dark)
 '(package-selected-packages '(paredit racket-mode gruber-darker-theme smex)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Racket-mode configuration
(add-hook 'racket-mode-hook
	      (lambda ()
	        (define-key racket-mode-map (kbd "<f5>") 'racket-run)))
