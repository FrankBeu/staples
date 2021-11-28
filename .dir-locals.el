;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")
(
 (nil . (
	 (eval . (setq projectile-project-root (locate-dominating-file default-directory ".dir-locals.el")))
	 (eval . (setq enable-local-variables :all))
	 ))
 ;; (dart-mode . (
 ;; 	       (eval . (setq dart-exec (executable-find "dart")))
 ;; 	       (eval . (setq lsp-dart-sdk-dir (-> dart-exec
 ;;                               file-chase-links
 ;;                               file-name-directory
 ;;                               directory-file-name
 ;;                               file-name-directory)))
 ;; 	       (eval . (setq lsp-dart-flutter-sdk-dir (getenv "FLUTTER_SDK")))
 ;; 		 ))
 (org-mode . (
	       (eval . (setq org-babel-python-command   (file-expand-wildcards ".direnv/python*/bin/python")))
	       (eval . (setq py-default-interpreter     (file-expand-wildcards ".direnv/python*/bin/python")))
	       (eval . (setq org-confirm-babel-evaluate nil))
		 ))
 (python-mode . (
		 (projectile-project-test-cmd . "pytest")
		 ))
 (web-mode . (
	      (fb-web-mode-engine . "django")
		 ))
 )
