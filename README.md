# Needs
- Fast search under Linux is neeed because [Everything](https://www.voidtools.com/) is not available for Linux
- plocate by default doesn't show clickable links, so OCD8 is used to show clickable links (if the terminal emulator supports it)
- Change `parent_directory` to the root folder where your search should start (e.g. `/home`)
- The search is not case-sensitive. Can be changed but removing `-i` from `locate -i`
- Create a cronjob to run `updatedb -U /parent_directory` (consider sudo) every $n$ minutes. For example: `* * * * * updatedb -U /parent_directory >/dev/null 2>&1` for updating every minute.
