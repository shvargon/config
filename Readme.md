# Install
Download zip archive this repository.

Exec
```bash
sudo ./scripts/init.sh
```

If use ssh keys create or import ssh keys ~/.ssh/id_ed25519 ~/.ssh/id_ed25519.pub an run 
```bash
./scripts/sshNotRoot.sh
```

Create vault secret
```bash
mkdir group_vars
ansible-vault create group_vars/all
```

Insert into example

```yaml
---
ansible_sudo_pass: mySuperPassword
```

Run ansible playbook
```bash
ansible-playbook playbook.yaml --ask-vault-password

# or use pass file
ansible-playbook playbook.yaml --vault-password-file pass 
```