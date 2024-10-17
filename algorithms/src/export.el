;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)
;; do this especially on Windows, else python output problem
(set-terminal-coding-system 'utf-8-unix)

;; python indentaion guess warning
(setq python-indent-guess-indent-offset-verbose nil)

;; In elisp, default-directory is the current directory
(add-to-list 'load-path "src")
(require 'htmlize)

(load-theme 'tsdh-light)

(find-file "main.org")
(org-html-export-to-html)
