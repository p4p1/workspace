FROM archlinux:latest

WORKDIR /conf

# Prepare system
RUN pacman -Syu --noconfirm
RUN useradd -m -G wheel user
COPY setup/ /conf/setup

RUN pacman -S --noconfirm linux-headers

# Install config
RUN pacman -S --noconfirm tmux vim git linux-headers exa openssh neofetch \
     ranger sudo tig tor proxychains tree geoip tar unzip curl base-devel

# Ease of life stuff
RUN pacman -S --noconfirm newsboat irssi 

# Programming stuff
RUN pacman -S --noconfirm make nodejs clang gcc gdb radare2 valgrind php perl \
     python2 python3 python-pip ruby go

# Python specific stuff
RUN pip install -U stegcracker ptpython

# Downloading config
RUN curl "https://leosmith.xyz/rice/backup.tar.xz" --output /conf/backup.tar.xz
RUN tar -xf /conf/backup.tar.xz

# Install AUR
RUN git clone https://aur.archlinux.org/yay.git

# Infosec stuff
RUN pacman -S --noconfirm nmap nikto smbclient whois

RUN sh /conf/setup/copy_conf.sh

RUN make -C /conf/backup/.source/scripts/

# set timezone
RUN ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime

CMD [ "su", "user", "-c" "/bin/bash" ]
