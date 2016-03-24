(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)

(setq inhibit-startup-message t)

;;; Package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish) 
(require 'bind-key)

(org-babel-load-file (concat user-emacs-directory "config.org"))
(put 'erase-buffer 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'set-goal-column 'disabled nil)
