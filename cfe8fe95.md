---
date: 2020-10-08
tags: 
  - stub
  - emacs
  - evil-mode
  - vim
  - macros
---

# Persisting evil (vim) macros for a single session

Create a name for it
```elisp
M-x kmacro-name-last-macro
```

Insert the definition
```elisp
M-x insert-kbd-macro
```

You will get something like the following:
```elisp
(fset 'Do\ some\ stuff
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("@z@x" 0 "%d")) arg)))
```

You can then amend it, setting it to register e, such that it can be invoked with `@e`:
```elisp
(evil-set-register ?e
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("@z@x" 0 "%d")) arg)))
```

And finally <666d8f4d> 
Alternatively you can paste all of these into a emacs buffer and run `M-x eval-buffer`

References:

https://stackoverflow.com/questions/22817120/how-can-i-save-evil-mode-vim-style-macros-to-my-init-el/22820324
https://www.gnu.org/software/emacs/manual/html_node/emacs/Lisp-Eval.html
