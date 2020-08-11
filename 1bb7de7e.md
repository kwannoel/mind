---
date: 2020-08-11
tags: 
  - stub
---

# Debugging neuron-mode for doom-emacs

After reinstalling via Nix, the file path changes.

As such, neuron-mode has to be rebuilt.

To do so, first remove `neuron` from the `:tools` section.

Then, run `./.emacs.d/bin/doom purge`.

Next add `neuron` back, run `./.emacs.d/bin/doom sync`.

The path to `neuron` should be regenerated after the rebuild.
