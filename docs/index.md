# CBW Hacker Tools

A modular, cyberpunk-inspired Linux toolkit for hacking, dev, virtualization, monitoring, and total terminal domination.

## 🚀 Features

- Modular installs: Ansible, Bash, or dotfile-based
- Multi-distro support (Debian/Ubuntu, Arch, Fedora)
- TUI system monitors: `btop`, `nvtop`, `iotop`, `glances`
- Recon tools: `nmap`, `gobuster`, `hydra`, `wireshark`, etc.
- Hypervisor stack: `qemu-kvm`, `virt-manager`, `vagrant`, `docker`
- Developer-friendly terminal setup: `neovim`, `tmux`, `fzf`, `ripgrep`
- Preconfigured dotfiles with plugin bootstrapping

## 🧰 Install via Ansible

```bash
ansible-playbook ansible/cbw-hacker-tools.yml --tags "core,tui,recon"

