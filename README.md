# System Automation and Dotfiles Management

Automated system installation and dotfile management

---

## Quick Start

For immediate execution on a fresh Linux system:
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/albertopingo/dotfiles/main/bin/dotfiles)"
```

---

## Useful commands


- Gather ansible_facts to file:

```bash
ansible localhost -m setup > facts.json
```

---

## Inspired By

This project draws inspiration from these excellent dotfiles and automation repositories:

- [TechDufus/dotfiles](https://github.com/TechDufus/dotfiles) - Clean approach with single-command execution, roles and OS specific
- [DoTheEvo/ansible-arch](https://github.com/DoTheEvo/ansible-arch) - Arch Linux automation with Ansible
