# _*Powershell Theme*_

Theme adjusted by **Nhân Nguyễn**. Theme is adapted based on [oh-my-zsh shell](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) and [Dracular Offical](https://draculatheme.com/). The theme directly adjusts for Powershell without having to go through a 3rd application like [Windows Terminal](https://github.com/microsoft/terminal).

_Here is a picture of Powershell after being adjusted:_

![image](https://user-images.githubusercontent.com/56079798/123784263-72d9c080-d901-11eb-813b-3631a5baa1cf.png)

### _Requirement_

###### 1. PSReadLine version 2.0 or later. This module is pre-installed by Windows, but you should [update](https://github.com/PowerShell/PSReadLine#user-content-upgrading) to the latest version to be compatible and avoid errors during the theme installation process.

##### _Command to check PSReadLine version_

```powershell
(Get-Module PSReadLine).Version.Major
```

###### 2. Install Git [from here](https://git-scm.com/)

###### 3. Install posh-git

##### _Command to install posh-git_

```powershell
Install-Module -Name posh-git -AllowPrerelease -Force
```

**_Note:_**
If `-AllowPrerelease` s not available, please update the **PowershellGet** module.

##### _Command to update PowershellGet_

```powershell
Install-Module -Name PowerShellGet -Force
```

##### _If you can't fix the error, you're having the following problem:_

On your Powershell is conflicting 2 different versions, Powershell doesn't know which one to execute. So you should delete the old Module, how to remove the old Module, please refer to [the wire](https://www.locktar.nl/programming/powershell/upgrading-powershellget-to-the-latest-version/)

###### 4. Install font support for themes

Currently, there are many fonts that support the above theme, so choose Powerline font [here](https://github.com/powerline/fonts)

###### 5. Install Chocolatey

**_Step 1:_** First, ensure that you are using an **_administrative shell_** - you can also install as a non-admin, check out **_Non-Administrative Installation_**.

**_Step 2:_** Install with powershell.exe

With PowerShell, you must ensure `Get-ExecutionPolicy` is not Restricted. We suggest using `Bypass` to bypass the policy to get things installed or `AllSigne` for quite a bit more security.

Run `Get-ExecutionPolicy`. If it returns Restricted, then run `Set-ExecutionPolicy AllSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.

Now run the following command:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

**_Step 3:_** Paste the copied text into your shell and press Enter.

**_Step 4:_** Wait a few seconds for the command to complete.

**_Step 5:_** If you don't see any errors, you are ready to use Chocolatey! Type `choco` or `choco -?` now

After completing the preparation steps, we proceed to install the theme as follows:

### _Install Theme_

1. Paste this command into your shell and press Enter.

```powershell
git clone https://github.com/FoxMinChan/Powershell_Themes.git
```

2. Extract (if needed).
3. Run **install.cmd** as administrator.
4. On your Powershell type one of the following two commands:

If you use **_Visual Studio Code_**, please enter the command: `code $Profile`

If you use **_Notepad_**, please enter the command: `notepad $profile`

5. Copy all text in [Microsoft.PowerShell_profile.ps1](https://github.com/FoxMinChan/Powershell_Themes/blob/main/Microsoft.PowerShell_profile.ps1) and paste.

6. Restart Powershell and adjust the font accordingly.

### _Credit_

**_Color code by [Dracular Offical](https://draculatheme.com/)_**

**_Profile code by [Nhân Nguyễn](https://www.facebook.com/FoxMinChan/)_**
