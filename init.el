(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup"))) ; send backups to emacs-backup 
(setq auto-save-default nil) ; stop creating #autosave# files
(setq comint-move-point-for-output 'this) ; move curser down on shell output
(fset 'yes-or-no-p 'y-or-n-p) ; change "yes or no" to "y or n"
; (load-file "~/themes/emacs-grayscale-theme/grayscale-theme.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("96005f97499f0549f921f81588f190f189b7acb8bbebbcbb9033cdd340118f80" "420459d6eeb45aadf5db5fbcc3d6990b65141c104911f7359454fc29fa9d87a0" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "red")))))
