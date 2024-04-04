## 🔧 To Do:

- [ ] Explore Config Options on OpenWRT 
- [ ] GUI Interface
- [ ] Compile app into program

----

## Instalation:
### 🍺 Homebrew (macOS/Linux):
`brew` is a package manager for macOS and Linux that allows users to easily install and manage software packages from the command line. It simplifies the process of installing and updating software by providing a centralized repository of packages that can be easily accessed and installed with simple commands.

```bash
  $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Source: [Homewbrew Website](https://brew.sh/)


### ⚙️ SSHPASS:
`sshpass` is a command-line tool that allows you to provide a password to the `ssh` command in a non-interactive way. It is often used in scripts or automated processes where providing a password manually is not possible or practical.

The basic syntax of using `sshpass` is:

```bash
sshpass -p [password] ssh [username]@[hostname]
```
Source: [GitHub Installation Guide](https://gist.github.com/arunoda/7790979)

----
> [!NOTE]  
> These scripts are being tested on OpenWrt 18.06 r0-d5ed025


<!-- See https://openwrt.org/docs/guide-user/base-system/uci for more options-->
<!-- Add installation guide with code for homebrew and sshpass -->
