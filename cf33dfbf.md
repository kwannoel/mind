---
date: 2021-04-30T18:04
tags: 
  - Linux
  - directories
  - file system
  - systems
---

# How Unix directories permissions work

You can think of linux directories as a list.

Here is a list of directories. You can tell due to the `d` bit.

```sh
d--x------ 2 noel users 4096 Nov  9  2015 ExeOnlyDir
drwx------ 2 noel users 4096 Nov  9  2015 NormDir
dr-x------ 2 noel users 4096 Nov  9  2015 ReadExeDir
d-wx------ 2 noel users 4096 Apr 30 17:55 WriteExeDir
```

There are 3 different flags:

- `r`: read

  Allows you to read from the list.

- `w`: write

  Allows you to write to list.

- `x`: execute

  Since you can't "execute" a directory in the sense you would execute a binary, it allows you enter it and access files / other directories inside.

## Other interesting things

- Modifying directory entries requires us to set current working directory. Hence both `wx` are needed.

- Directory permission independent from file permission. You can still modify a file under "read only" directory (if it has appropriate permissions), since it does not modify the directory entry directly.

- How would you allow someone to access a deeply nested file, without granting access to all files?

  Provide execute bits on all directories in filepath, and the path to the file. This hides the content of the directorie(s). Of course this is not completely secure. You can still bruteforce to find other files to execute.
