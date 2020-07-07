---
title: Installing packages through cabal
date: "2020-06-29"
tags:
    - cabal
    - Haskell
---

We can use `--package-env` flag to avoid conflicts with other installed packages

**Example for [`agda`](https://agda.readthedocs.io/en/v2.6.1/getting-started/installation.html)**

- Installing agda
    ```sh
    cabal v2-install --package-env agda --lib Agda ieee754
    ```
    
- Running agda
    ```sh
    GHC_ENVIRONMENT=agda agda -c hello-world.agda
    ```

References:
- [Cabal documentation](https://cabal.readthedocs.io/en/latest/cabal-commands.html#cabal-v2-install)
- [Agda documentation](https://agda.readthedocs.io/en/v2.6.1/getting-started/installation.html)
  
