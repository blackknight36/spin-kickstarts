# fedora-livecd-kde-de_DE.ks
#
# Maintainer(s):
# - Sebastian Vahl <ml@deadbabylon.de>

%include fedora-livecd-kde.ks

lang de_DE.UTF-8
keyboard de-latin1-nodeadkeys
timezone Europe/Berlin

%packages
@german-support

%end

%post
# set up localized keyboard since it is not used in /etc/X11/xorg.conf anymore and
# KDE don't use /etc/sysconfig/keyboard.
# Replace "de-latin1-nodeadkeys" with the keyboard layout you have used above
mkdir -p /home/fedora/.kde/env
echo "system-config-keyboard --noui de-latin1-nodeadkeys" > /home/fedora/.kde/env/keyboard.sh
chmod +x /home/fedora/.kde/env/keyboard.sh
chown -R fedora:fedora /home/fedora/.kde/env/

%end