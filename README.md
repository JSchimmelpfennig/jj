# Why?
- Fast search under Linux is needed because [Everything](https://www.voidtools.com/) is not available for Linux
- `plocate` by default doesn't show clickable links, so OSC 8 is used to show clickable links (if the terminal emulator supports it)
- Change `parent_directory` to the root folder where your search should start (e.g. `/home`)
- The search is not case-sensitive. Can be changed but removing `-i` from `locate -i`
- Create a cronjob to run `updatedb -U /path/to/parent_directory` (consider sudo) every $n$ minutes. For example: `* * * * * updatedb -U /parent_directory >/dev/null 2>&1` for updating every minute.

# How to use with bash
- Create a file `jj` in `/usr/local/bin` and fill it with the content of the file in this repository.
- `/usr/local/bin` is by default in path and you can start your search from your terminal by `jj search_pattern`

![first](https://github.com/user-attachments/assets/18811baa-3715-429f-9767-8d43863db2df)
