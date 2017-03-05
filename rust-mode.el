;;; rust-mode.el -- simple major mode for rust


;;keywords
(setq rust-keywords '("enum" "mut" "use" "super" "pub" "struct" "impl" "if" "let" "loop" "while" "for"))
(setq rust-types '("i8" "i16" "i32" "i64" "u8" "u16" "u32" "u64" "f32" "f64" "char" "bool") )
(setq rust-functions '("fn"))

;;creating regex for the given words
(setq rust-keywords-regexp (regexp-opt rust-keywords 'words) )
(setq rust-types-regexp (regexp-opt rust-types 'words) )
(setq rust-functions-regexp (regexp-opt rust-functions 'words) )

;;asigning typeface
(setq rust-font-lock-keywords
      `(
        (,rust-keywords-regexp . font-lock-keyword-face)
        (,rust-types-regexp . font-lock-type-face)
        (,rust-functions-regexp . font-lock-function-name-face)
        ))

(define-derived-mode rust-mode c-mode "rust mode"
  "Major mode for the Rust language"
  ;;syntax highlighting
  (setq font-lock-defaults '((rust-font-lock-keywords))))

;;clearing memory
(setq rust-keywords nil)
(setq rust-types nil)
(setq rust-functions nil)

(setq rust-types-regexp nil)
(setq rust-functions-regexp nil)
(setq rust-types-regexp nil)

;;add to feature list
(provide 'rust-mode)
