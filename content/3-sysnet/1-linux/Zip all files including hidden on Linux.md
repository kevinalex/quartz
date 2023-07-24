---
title: "Zip all files including hidden in Linux"
tags:
- linux/QoL
---

## Objective
To compress an entire folder and files inside including hidden on [[3-sysnet/1-linux/Linux-MoC|Linux]], recursively.

### Command
You can use the `tar` command to create a compressed archive of all files and folders in a directory, including hidden files and folders, recursively. To do this, you can use the following command:

```shell
tar -czvf archive_name.tar.gz /path/to/directory
```

### Explanation:

- `-c`: Create a new archive.
- `-z`: Compress the archive using gzip.
- `-v`: Verbose mode, which shows the progress of the archiving process.
- `-f`: Specify the name of the archive file. In this case, you can replace `archive_name.tar.gz` with the desired name of the compressed archive file.
- `/path/to/directory`: The path to the directory that you want to compress. Replace this with the actual path to your target directory.

This command will create a compressed tar archive (with gzip compression) named "archive_name.tar.gz" in the current working directory, containing all files and subdirectories, including hidden files and directories, from the specified directory.

### Example
For example, to compress all files and folders, including hidden ones, in the "/home/user/documents" directory, you can use the following command:

```shell
tar -czvf my_documents.tar.gz /home/user/documents
```

This will create a compressed archive named "my_documents.tar.gz" in the current working directory, containing all files and directories from the "/home/user/documents" directory.

## Other sources
https://linuxize.com/post/how-to-create-tar-gz-file/