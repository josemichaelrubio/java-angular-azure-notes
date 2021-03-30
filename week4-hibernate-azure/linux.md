# Linux

- while linux isn't used on as many personal desktops, it dominates the market of servers
- it's lightweight and uses system resources efficiently
- free, open source, can be customized for your needs

### Common Linux Commands

- ls
- cd - change directory
- cat - concatenate
  - print the contents of a file
    > cat test.txt
  - redirect standard output into a file
    > cat test.txt > output.txt
- grep - global regular expressions print
- man - manual
- wget - downloads from a url
- pwd - print working directory
- mkdir - make directory
- rmdir - remove directory (only works if empty, rm -r)
- touch - creates a new file
- cp - copies first argument to second argument location
- mv - also has two arguments, moves a file
- echo - allows us to print to standard output, often used in scripts
- nano/[vim](https://opensource.com/article/19/3/getting-started-vim) - terminal text editors 
- sudo - allows you to run commands as a super user
- chmod - change mode

  > chmod 777 test.txt

  > [owner][group][everyone else]

  > 0 = no permissions

  > 1 = execute

  > 2 = write

  > 3 = execute + write

  > 4 = read

  > 5 = read + execute

  > 6 = read + write

  > 7 = read + write + execute
