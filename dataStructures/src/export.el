;; In elisp, default-directory is the current directory
(add-to-list 'load-path "src")
(require 'htmlize)

(load-theme 'tsdh-light)

(find-file "main.org")
(org-html-export-to-html)
