#!/usr/bin/emacs --script

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8-unix)
;; do this especially on Windows, else python output problem
(set-terminal-coding-system 'utf-8-unix)

;; stop creating ~ files
(setq make-backup-files nil) 

;; load stuff from common folder
(add-to-list 'load-path "common")
(require 'htmlize)

;; theme for code blocks
(load-theme 'tsdh-light)

;; Adding stylesheet
(setq org-html-head-extra "<link id=\"css-link\" rel=\"stylesheet\" href=\"/common/org.css\"> <script src=\"/common/webpage.js\"></script>")

;; remove postamble
(eval-after-load "ox-html"
  (setq org-html-postamble nil))

;; exporting
(message "[*] Exporting homepage")
(find-file "index.org")
(org-html-export-to-html)
(message "+ Done homepage")

(if (or (member "algorithms" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting algorithms")
      (cd "algorithms")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      (message "+ Done algorithms")))

(if (or (member "computerNetworks" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting computerNetworks")
      (cd "computerNetworks")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      (message "+ Done computerNetworks")))

(if (or (member "computerOrganizationAndArchitechture" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting computerOrganizationAndArchitechture")
      (cd "computerOrganizationAndArchitechture")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      (message "+ Done computerOrganizationAndArchitechture")))

(if (or (member "theoryOfComputation" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting theoryOfComputation")
      (cd "theoryOfComputation")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      (message "+ Done theoryOfComputation")))

(if (or (member "dataStructures" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting dataStructures")
      (cd "dataStructures")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      (message "+ Done dataStructures")))

(if (or (member "operatingSystems" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting operatingSystems")
      (cd "operatingSystems")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      (message "+ Done operatingSystems")))

(if (or (member "compiler" command-line-args) (member "all" command-line-args))
    (progn
      (message "\n[*] Exporting compiler")
      (cd "compiler")
      (find-file "main.org")
      (org-html-export-to-html)

      (cd "compiler_parsing")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")

      (cd "compiler_translation")
      (find-file "main.org")
      (org-html-export-to-html)
      (cd "..")
      
      (cd "..")
      (message "+ Done compiler")))
