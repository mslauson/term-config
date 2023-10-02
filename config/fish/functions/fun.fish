function fcow
    set -l cow_command (shuf -n 1 -e cowsay cowthink)
    set -l cow_eye (shuf -n 1 -e b d g p s t w y)
    set -l cow_files (cowsay -l | string split " ")
    set -l cow_file (shuf -n 1 -e $cow_files[2..-1])

    fortune -a | fmt -80 -s | $cow_command -$cow_eye -f $cow_file -n | lolcat
end
