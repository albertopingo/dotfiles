# Dotfiles & Automated Workstation Setup

*Automated*, *Declarative* and *Idempotent* workstation configuration and dotfiles management with Ansible.

---

## Installation

### 1. Quick Start

For quick setup on a fresh system, run:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/albertopingo/dotfiles/main/bin/dotfiles)"
```

This script installs packages, configures the system, and links dotfiles automatically.

### 2. OS-specific Installation Guides

* <img src="./docs/assets/archlinux_icon.png" alt="Arch Linux" width="20" /> [Arch Linux Guide](./docs/install_archlinux.md)
* <img src="./docs/assets/fedora_icon.png" alt="Fedora" width="20" /> [Fedora Guide](./docs/install_fedora.md)

---

## Usage

After installation, use the `dotfiles` command:

* Run full playbook:

```bash
dotfiles
```

* Run specific role(s):

```bash
dotfiles -t role_name
```

* Skip certain role(s):

```bash
dotfiles --skip-tags role_name1,role_name2
```

---

## Development commands

- Run playbook:
```bash
ansible-playbook playbook.yml --ask-become-pass
```

- Gather ansible_facts to file:
```bash
ansible localhost -m setup > facts.json
```

- Lint project, playbook or file :
```bash
ansible-lint
ansible-lint playbook.yml
```

---

## Inspired By

This project draws inspiration from these excellent dotfiles and automation repositories:

- [TechDufus/dotfiles](https://github.com/TechDufus/dotfiles) - Clean approach with single-command execution, roles and OS specific
- [DoTheEvo/ansible-arch](https://github.com/DoTheEvo/ansible-arch) - Arch Linux automation with Ansible
