(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup"))) ; send backups to emacs-backup 
(setq auto-save-default nil) ; stop creating #autosave# files
(setq comint-move-point-for-output 'this) ; move curser down on shell output
(fset 'yes-or-no-p 'y-or-n-p) ; change "yes or no" to "y or n"

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
'(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "red")))))
