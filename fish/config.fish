alias ls='ls --color=auto'
alias matlab='matlab -nodesktop'
alias vim='nvim'

alias update='yay -Pw && yay -Sc && yay -Syu --sudoloop && yay -Yc && sudo pacdiff && notify-send "Restart reflector" && systemctl restart reflector'
alias webcam='ffmpeg -f v4l2 -input_format mjpeg -video_size 1280x720 -framerate 30 -i /dev/video0 -f pulse -itsoffset 0.7 -i alsa_input.pci-0000_00_1f.3.analog-stereo -c:v libx264 -preset ultrafast -c:a aac'
alias micro='ffmpeg -f pulse -i alsa_input.pci-0000_00_1f.3.analog-stereo -c:a aac'
alias stream='wf-recorder --muxer=v4l2 --codec=rawvideo --file=/dev/video2 -x yuv420p -t'

alias nam-connect='rclone mount NASnam: /home/clement/NAS/Nam --read-only --vfs-cache-mode full --daemon'
alias florian-connect='rclone mount NASflorian: /home/clement/NAS/Florian --read-only --vfs-cache-mode full --daemon'

set fish_greeting

starship init fish | source

export MANPATH=/home/clement/.cache/yay/texlive-full/pkg/texlive-full/opt/texlive/2023/texmf-dist/doc/man
export INFOPATH=/home/clement/.cache/yay/texlive-full/pkg/texlive-full/opt/texlive/2023/texmf-dist/doc/info

export PATH="$PATH:/home/clement/.cache/yay/texlive-full/pkg/texlive-full/opt/texlive/2023/bin/x86_64-linux"
