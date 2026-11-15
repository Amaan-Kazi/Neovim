;; extends
;; inherits: jsx

(jsx_element) @tag.outer

(jsx_element
  open_tag: (jsx_opening_element)
  .
  _* @tag.inner
  .
  close_tag: (jsx_closing_element)
)

