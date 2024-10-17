;; In elisp, default-directory is the current directory
(add-to-list 'load-path "src")
;; If htmlize is outdated, just replace htmlize.el with the newer version lmao.
(require 'htmlize)

(load-theme 'tsdh-dark)

(setq org-format-latex-options
      (list :foreground 'default
            :background 'default
            :scale 1.5
            :html-foreground "Black"
            :html-background "Transparent"
            :html-scale 1.0
            :matchers '("begin" "$1" "$" "$$" "\\(" "\\[")))

(find-file "main.org")
(org-html-export-to-html)
