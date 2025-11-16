# Arch Linux Installation

This guide outlines the recommended setup when installing Arch Linux before running the [`dotfiles`](../bin/dotfiles) script.

---

## Connect to WiFi

```bash
iwctl
station wlan0 scan
station wlan0 connect
```
Run Archinstall:
```bash
archinstall
```

| **Section**                        | **Option**                                            |
| ---------------------------------- | ----------------------------------------------------- |
| **Mirrors and repositories**       | Select region                                         |
| **Disk configuration**             | Partitioning > Best-effort default layout             |
| **Disk** > File system             | BTRFS (subvolumes: yes + compression: yes)            |
| **Disk** > Disk encryption         | LUKS enabled + Encryption password + Select partition |
| **Disk** > Snapshots               | `Snapper`                                             |
| **Swap**                           | Yes                                                   |
| **Bootloader**                     | `Grub`                                                |
| **Hostname**                       | Set hostname                                          |
| **Authentication** > Root password | Set root password                                     |
| **Authentication** > User account  | Create user                                           |
| **Applications** > Bluetooth       | Enable if applicable                                  |
| **Applications** > Audio           | `Pipewire`                                            |
| **Network configuration**          | NetworkManager                                        |
| **Additional packages**            | `curl`                                                |
| **Timezone**                       | Select timezone                                       |

## Next Steps

Once Arch is installed, run the following to bootstrap your environment:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/albertopingo/dotfiles/main/bin/dotfiles)"
```

Then, reboot the system:

```bash
systemctl reboot
```