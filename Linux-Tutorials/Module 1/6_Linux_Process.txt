Linux process

1. Open a terminal. Now spawn three shell processes one after another i.e. first spawn one shell, then from the spawned shell, spawn one new shell and so on. Now, 
   how can you see the PID of the current shell ? How can you see the PID of the shell which is the grandparent of the current shell?

Ans:
┌──(kali㉿kali)-[~]
└─$ sh
$ sh
$ sh
$ echo $$
149105
$ ps -f
UID          PID    PPID  C STIME TTY          TIME CMD
kali      147606  147603  0 01:31 pts/0    00:00:00 /usr/bin/zsh
kali      148791  147606  0 01:33 pts/0    00:00:00 sh
kali      149096  148791  0 01:34 pts/0    00:00:00 sh
kali      149105  149096  0 01:34 pts/0    00:00:00 sh
kali      149186  149105  0 01:34 pts/0    00:00:00 ps -f


2. How can you see all the processes (both system & user processes) in your computer?
   The output can be quite large.  How can you view the output as multipage output ? 
   How can you store the output in a file named process_info?
Ans:

┌──(kali㉿kali)-[~]
└─$ ps -e
┌──(kali㉿kali)-[~]
└─$ ps -e | more
┌──(kali㉿kali)-[~]
└─$ touch process_info.txt       
┌──(kali㉿kali)-[~]
└─$ ps -e > process_info.txt 
┌──(kali㉿kali)-[~]
└─$ cat process_info.txt 
    PID TTY          TIME CMD
      1 ?        00:00:04 systemd
      2 ?        00:00:00 kthreadd
      3 ?        00:00:00 rcu_gp
      4 ?        00:00:00 rcu_par_gp
      5 ?        00:00:00 slub_flushwq
      6 ?        00:00:00 netns
     10 ?        00:00:00 mm_percpu_wq
     11 ?        00:00:00 rcu_tasks_kthread
     12 ?        00:00:00 rcu_tasks_rude_kthread
     13 ?        00:00:00 rcu_tasks_trace_kthread
     14 ?        00:00:02 ksoftirqd/0
     15 ?        00:00:10 rcu_preempt
     16 ?        00:00:00 migration/0
     17 ?        00:00:00 idle_inject/0
     19 ?        00:00:00 cpuhp/0
     20 ?        00:00:00 cpuhp/1
     21 ?        00:00:00 idle_inject/1
     22 ?        00:00:00 migration/1
     23 ?        00:00:01 ksoftirqd/1
     25 ?        00:00:00 kworker/1:0H-events_highpri
     28 ?        00:00:00 kdevtmpfs
     29 ?        00:00:00 inet_frag_wq
     30 ?        00:00:00 kauditd
     31 ?        00:00:00 khungtaskd
     32 ?        00:00:00 oom_reaper
     34 ?        00:00:00 writeback
     35 ?        00:00:01 kcompactd0
     36 ?        00:00:00 ksmd
     37 ?        00:00:00 khugepaged
     38 ?        00:00:00 kintegrityd
     39 ?        00:00:00 kblockd
     40 ?        00:00:00 blkcg_punt_bio
     41 ?        00:00:00 tpm_dev_wq
     42 ?        00:00:00 edac-poller
     43 ?        00:00:00 devfreq_wq
     45 ?        00:00:00 kworker/0:1H-kblockd
     46 ?        00:00:00 kswapd0
     53 ?        00:00:00 kthrotld
     55 ?        00:00:00 acpi_thermal_pm
     56 ?        00:00:00 xenbus_probe
     57 ?        00:00:00 mld
     58 ?        00:00:00 kworker/1:1H-kblockd
     59 ?        00:00:00 ipv6_addrconf
     64 ?        00:00:00 kstrp
     69 ?        00:00:00 zswap-shrink
     70 ?        00:00:00 kworker/u5:0
    136 ?        00:00:00 cryptd
    137 ?        00:00:00 ata_sff
    138 ?        00:00:00 scsi_eh_0
    139 ?        00:00:00 scsi_eh_1
    140 ?        00:00:00 scsi_tmf_0
    143 ?        00:00:00 scsi_tmf_1
    144 ?        00:00:00 scsi_eh_2
    146 ?        00:00:00 scsi_tmf_2
    149 ?        00:00:00 kworker/u4:5-flush-8:0
    184 ?        00:00:00 irq/18-vmwgfx
    187 ?        00:00:00 ttm
    205 ?        00:00:01 kworker/0:2H-kblockd
    243 ?        00:00:00 jbd2/sda1-8
    244 ?        00:00:00 ext4-rsv-conver
    300 ?        00:00:01 systemd-journal
    322 ?        00:00:04 systemd-udevd
    327 ?        00:00:00 psimon
    383 ?        00:00:00 psimon
    421 ?        00:00:01 haveged
    458 ?        00:00:10 dbus-daemon
    467 ?        00:00:02 polkitd
    470 ?        00:00:00 systemd-logind
    493 ?        00:00:00 rpciod
    496 ?        00:00:00 xprtiod
    520 ?        00:00:00 psimon
    526 ?        00:00:01 NetworkManager
    537 ?        00:00:00 cron
    593 ?        00:00:00 ModemManager
    618 ?        00:00:05 VBoxService
    720 ?        00:00:00 lightdm
    740 tty7     00:03:34 Xorg
    742 tty1     00:00:00 agetty
    784 ?        00:00:00 psimon
    813 ?        00:00:00 rtkit-daemon
    888 ?        00:00:00 lightdm
    895 ?        00:00:00 systemd
    896 ?        00:00:00 (sd-pam)
    910 ?        00:00:00 psimon
    913 ?        00:00:00 pipewire
    914 ?        00:00:00 pipewire
    915 ?        00:00:00 wireplumber
    916 ?        00:00:00 pipewire-pulse
    918 ?        00:00:00 gnome-keyring-d
    922 ?        00:00:02 dbus-daemon
    940 ?        00:00:00 xfce4-session
    992 ?        00:00:00 VBoxClient
    993 ?        00:00:00 VBoxClient
   1006 ?        00:00:00 VBoxClient
   1008 ?        00:00:20 VBoxClient
   1014 ?        00:00:00 VBoxClient
   1015 ?        00:00:42 VBoxClient
   1027 ?        00:00:00 ssh-agent
   1037 ?        00:00:00 at-spi-bus-laun
   1044 ?        00:00:00 dbus-daemon
   1056 ?        00:00:02 at-spi2-registr
   1070 ?        00:00:00 VBoxClient
   1073 ?        00:00:05 VBoxClient
   1074 ?        00:00:00 gpg-agent
   1079 ?        00:01:16 xfwm4
   1084 ?        00:00:00 gvfsd
   1090 ?        00:00:00 gvfsd-fuse
   1109 ?        00:00:04 xfsettingsd
   1113 ?        00:00:03 upowerd
   1119 ?        00:00:08 xfce4-panel
   1124 ?        00:00:00 Thunar
   1130 ?        00:00:16 xfdesktop
   1131 ?        00:00:01 panel-1-whisker
   1138 ?        00:01:46 panel-13-cpugra
   1139 ?        00:00:00 panel-14-systra
   1140 ?        00:01:15 panel-15-genmon
   1141 ?        00:00:00 panel-16-pulsea
   1142 ?        00:00:00 panel-17-notifi
   1143 ?        00:00:06 panel-18-power-
   1144 ?        00:00:00 panel-22-action
   1190 ?        00:00:03 xfce4-notifyd
   1216 ?        00:00:00 agent
   1222 ?        00:00:01 xfce4-power-man
   1230 ?        00:00:00 nm-applet
   1232 ?        00:00:01 light-locker
   1233 ?        00:00:00 xcape
   1234 ?        00:00:00 xiccd
   1241 ?        00:00:00 polkit-gnome-au
   1247 ?        00:00:01 blueman-applet
   1262 ?        00:00:00 gvfs-udisks2-vo
   1263 ?        00:00:00 colord
   1264 ?        00:00:00 dconf-service
   1291 ?        00:00:00 udisksd
   1327 ?        00:00:00 gvfs-goa-volume
   1348 ?        00:00:00 gvfs-mtp-volume
   1353 ?        00:00:01 gvfs-afc-volume
   1359 ?        00:00:00 gvfs-gphoto2-vo
   1391 ?        00:00:00 gvfsd-trash
   1417 ?        00:00:00 gvfsd-metadata
   1461 ?        00:00:00 obexd
  41588 ?        00:00:00 kworker/u4:1-events_unbound
  89399 ?        00:00:05 kworker/1:0-events
 145673 ?        00:00:00 kworker/0:0-events_freezable_power_
 145914 ?        00:00:00 kworker/1:2-events
 146053 ?        00:00:00 kworker/u4:2-flush-8:0
 147603 ?        00:00:03 qterminal
 147606 pts/0    00:00:02 zsh
 150864 ?        00:00:00 kworker/0:2-ata_sff
 151750 ?        00:00:00 kworker/1:1
 152074 ?        00:00:00 xfconfd
 153408 ?        00:00:00 kworker/0:1-ata_sff
 154239 pts/0    00:00:00 ps
