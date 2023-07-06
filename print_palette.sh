#!/usr/bin/env bash

function print_palette() {
    local text="${1:-gYw}"
    (( ${#col[@]} )) || {
        local -A col=( # just use the base colors if we didn't pass a palette
                  [fg_black]="\e[38;5;0m"        [bg_black]="\e[48;5;0m"
                    [fg_red]="\e[38;5;1m"          [bg_red]="\e[48;5;1m"
                  [fg_green]="\e[38;5;2m"        [bg_green]="\e[48;5;2m"
                 [fg_yellow]="\e[38;5;3m"       [bg_yellow]="\e[48;5;3m"
                   [fg_blue]="\e[38;5;4m"         [bg_blue]="\e[48;5;4m"
                [fg_magenta]="\e[38;5;5m"      [bg_magenta]="\e[48;5;5m"
                   [fg_cyan]="\e[38;5;6m"         [bg_cyan]="\e[48;5;6m"
             [fg_light_grey]="\e[38;5;7m"   [bg_light_grey]="\e[48;5;7m"
              [fg_dark_grey]="\e[38;5;8m"    [bg_dark_grey]="\e[48;5;8m"
              [fg_light_red]="\e[38;5;9m"    [bg_light_red]="\e[48;5;9m"
            [fg_light_green]="\e[38;5;10m" [bg_light_green]="\e[48;5;10m"
                 [fg_orange]="\e[38;5;11m"      [bg_orange]="\e[48;5;11m"
              [fg_dark_blue]="\e[38;5;12m"   [bg_dark_blue]="\e[48;5;12m"
                 [fg_purple]="\e[38;5;13m"      [bg_purple]="\e[48;5;13m"
                   [fg_zomp]="\e[38;5;14m"        [bg_zomp]="\e[48;5;14m"
                  [fg_white]="\e[38;5;15m"       [bg_white]="\e[48;5;15m"
        )
    }

    printf "%b${text}\e[49m " \
        "\e[m"                   "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_black]}"       "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_red]}"         "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_green]}"       "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_yellow]}"      "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_blue]}"        "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_magenta]}"     "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_cyan]}"        "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_light_grey]}"  "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_dark_grey]}"   "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_light_red]}"   "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_light_green]}" "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_orange]}"      "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_dark_blue]}"   "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_purple]}"      "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_zomp]}"        "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n" \
        "${col[fg_white]}"       "\r${col[bg_black]}" "${col[bg_red]}" "\e[49m${col[bg_green]}" "\e[49m${col[bg_yellow]}" "\e[49m${col[bg_blue]}" "\e[49m${col[bg_magenta]}" "\e[49m${col[bg_cyan]}" "\e[49m${col[bg_light_grey]}" "\e[49m${col[bg_dark_grey]}" "\e[49m${col[bg_light_red]}" "\e[49m${col[bg_light_green]}" "\e[49m${col[bg_orange]}" "\e[49m${col[bg_dark_blue]}" "\e[49m${col[bg_purple]}" "\e[49m${col[bg_zomp]}" "\e[49m${col[bg_white]}" "\e[m\n"
    printf "\r%${COLUMNS:-80}s\r" '' # clear the residual $text
}
export print_palette
print_palette "$@"

#              This utility is licensed under the WTFPL
#                     http://www.wtfpl.net/
#
#             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                    Version 2, December 2004
#
# Copyleft (ↄ) 2023 TomIO
# Everyone is permitted to copy and distribute verbatim or modified
# copies of this license document, and changing it is allowed as long
# as the name is changed.
#
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
#
#  0. You just DO WHAT THE FUCK YOU WANT TO.
