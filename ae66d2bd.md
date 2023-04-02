---
date: 2022-08-13T21:32
tags: 
  - stub
---

# source vs ./

source and ./ are not exactly the same.

`source` is like typing out everything within the script.

`./` is executing the script in current environment. So things like env vars are visible.

How do they differ then?

Suppose we had some earlier script which defined `profile=$SOMETHING`.
This binding is local to the script.

Hence if a later script referenced `$profile`, it won't be present.

e.g.
```
source script-defining-profile.sh
./script-using-profile.sh # $profile is undefined when this is executed.
```

instead if we want to use the earlier bound `$profile`, we have to do the following:
```
source script-defining-profile.sh
source script-using-profile.sh
```
