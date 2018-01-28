#!/usr/bin/with-contenv /bin/bash
echo 'Initializing mpd'

mkdir /tmp/playlists
echo 'log_file    "/tmp/mpd.log"' > /etc/mpd.conf
echo 'bind_to_address "0.0.0.0"' >> /etc/mpd.conf
echo 'audio_output {' >> /etc/mpd.conf
echo '    type            "fifo"' >> /etc/mpd.conf
echo '    name            "my pipe"' >> /etc/mpd.conf
echo "    path            \"${PIPE}\"" >> /etc/mpd.conf
echo '    format          "48000:16:2"' >> /etc/mpd.conf
echo '    mixer_type      "software"' >> /etc/mpd.conf
echo '}' >> /etc/mpd.conf
echo 'playlist_directory    "/tmp/playlists"' >> /etc/mpd.conf
