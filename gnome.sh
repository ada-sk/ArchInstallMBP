
sudo pacman -Syu gnome gnome-tweaks

gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"

sudo systemctl enable gdm
sudo systemctl start gdm
