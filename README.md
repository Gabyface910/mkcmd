# mkcmd
Create bash commands easily using GNU nano.

## How to install
To install mkcmd, run this in your terminal.
```bash
git clone https://github.com/Gabyface910/mkcmd
cd mkcmd
sudo apt install ./mkcmd-1.0.deb
```
Feel free to delete the code afterwords.

## How to use
Usage:
`mkcmd cheese` - opens GNU nano to cheese.sh and waits for you to create and save the command.
Once  you've saved and closed nano, it creates an executable command that runs the script you just wrote.

`mkcmd -e cheese` - opens GNU nano to /usr/local/bin/cheese (if it exists\) and lets you edit the command. NOTE: You can't edit regular commands, cause that has a risk of breaking your system.

If you just type `mkcmd` it will give you an error message.
