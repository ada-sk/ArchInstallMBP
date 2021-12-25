# ! /user/bin/bash
# This downloads the apple_set_os efi patch and makes a GRUB entry to chainload it.

wget https://github.com/0xbb/apple_set_os.efi/releases/download/v1/apple_set_os.efi
mkdir -p /boot/efi/EFI/custom
cp apple_set_os.efi /boot/efi/EFI/custom
echo "search --no-floppy --set=root --label EFI
      chainloader ($root)/EFI/custom/apple_set_os.efi
      boot" >> /etc/grub.d/40_custom
