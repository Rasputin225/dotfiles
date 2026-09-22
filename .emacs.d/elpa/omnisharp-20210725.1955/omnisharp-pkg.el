;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "omnisharp" "20210725.1955"
  "Omnicompletion (intellisense) and more for C#."
  '((emacs         "24.4")
    (flycheck      "30")
    (dash          "2.12.0")
    (auto-complete "1.4")
    (popup         "0.5.1")
    (csharp-mode   "0.8.7")
    (cl-lib        "0.5")
    (s             "1.10.0")
    (f             "0.19.0"))
  :url "https://github.com/Omnisharp/omnisharp-emacs"
  :commit "c222e970998d796bdfd49e45ed789e2fd1a9da03"
  :revdesc "c222e970998d"
  :keywords '("languages" "csharp" "c#" "ide" "auto-complete" "intellisense"))
