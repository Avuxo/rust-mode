;;; rust-mode.el -- simple major mode for rust


;;keywords
(setq rust-keywords '("enum" "mut" "use" "super" "pub" "struct" "impl" "if" "let" "loop" "while" "for" "extern" "crate"))
(setq rust-types '("i8" "i16" "i32" "i64" "u8" "u16" "u32" "u64" "f32" "f64" "char" "bool") )
(setq rust-functions '("fn"))
(setq rust-constants '("Ok" "println" "print" "Err" "Some") ) ;;I know these are mostly not constants, but I needed to assign them a color - maybe I'll fix this in a later version, we'll see.

;;creating regex for the given words
(setq rust-keywords-regexp (regexp-opt rust-keywords 'words) )
(setq rust-types-regexp (regexp-opt rust-types 'words) )
(setq rust-functions-regexp (regexp-opt rust-functions 'words) )
(setq rust-constants-regexp (regexp-opt rust-constants 'words) )

;;asigning typeface
(setq rust-font-lock-keywords
      `(
        (,rust-keywords-regexp . font-lock-keyword-face)
        (,rust-types-regexp . font-lock-type-face)
        (,rust-functions-regexp . font-lock-function-name-face)
        (,rust-constants-regexp . font-lock-constant-face)
        ))

(define-derived-mode rust-mode c-mode "rust mode"
  "Major mode for the Rust language"
  ;;syntax highlighting
  (setq font-lock-defaults '((rust-font-lock-keywords))))

;;clearing memory
(setq rust-keywords nil)
(setq rust-types nil)
(setq rust-functions nil)
(setq rust-constants nil)


(setq rust-types-regexp nil)
(setq rust-functions-regexp nil)
(setq rust-types-regexp nil)
(setq rust-constants-regexp nil)


;;add to feature list
(provide 'rust-mode)
