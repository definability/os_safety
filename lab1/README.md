# Privileges

## Requirements

Needs ACL in `/home/` directory.

## How to use

Execute `01_create_groups.sh` to create groups and users with folders.

Execute `02_add_privileges.sh` to give needed privileges for users to folders.

Execute `03_delete_groups.sh` to remove users with their folders and groups.

## Example

```
$ ./01_create_groups.sh
Adding group `alfa' (GID 1001) ...
Done.
Creating user w_gromov
Adding group `sigma' (GID 1002) ...
Done.
Creating user t_uporov
Creating user m_kruglov
Creating user r_klinova
Adding group `nabla' (GID 1003) ...
Done.
Creating user i_frolov
Creating user d_lavrov
Creating user e_ivanova
Adding group `beta' (GID 1004) ...
Done.
Creating user k_beglov
Creating user b_rebrov
Creating user n_kalinina
```

```
$ ./02_add_privileges.sh 
Set 0700 for on /home/w_gromov from alfa
Set 0755 for on /home/t_uporov from sigma
Set read privilege for beta on /home/t_uporov from sigma
Set read privilege for nabla on /home/t_uporov from sigma
Set admin privilege for w_gromov on /home/t_uporov from sigma
Set 0755 for on /home/m_kruglov from sigma
Set read privilege for beta on /home/m_kruglov from sigma
Set read privilege for nabla on /home/m_kruglov from sigma
Set admin privilege for w_gromov on /home/m_kruglov from sigma
Set 0755 for on /home/r_klinova from sigma
Set read privilege for beta on /home/r_klinova from sigma
Set read privilege for nabla on /home/r_klinova from sigma
Set admin privilege for w_gromov on /home/r_klinova from sigma
Set 0750 for on /home/i_frolov from nabla
Set read privilege for beta on /home/i_frolov from nabla
Set admin privilege for w_gromov on /home/i_frolov from nabla
Set 0750 for on /home/d_lavrov from nabla
Set read privilege for beta on /home/d_lavrov from nabla
Set admin privilege for w_gromov on /home/d_lavrov from nabla
Set 0750 for on /home/e_ivanova from nabla
Set read privilege for beta on /home/e_ivanova from nabla
Set admin privilege for w_gromov on /home/e_ivanova from nabla
Set 0700 for on /home/k_beglov from beta
Set admin privilege for w_gromov on /home/k_beglov from beta
Set 0700 for on /home/b_rebrov from beta
Set admin privilege for w_gromov on /home/b_rebrov from beta
Set 0700 for on /home/n_kalinina from beta
Set admin privilege for w_gromov on /home/n_kalinina from beta
```

```
$ ./03_delete_groups.sh 
Deleting user w_gromov
userdel: w_gromov mail spool (/var/mail/w_gromov) not found
Removing group `alfa' ...
Done.
Deleting user t_uporov
userdel: t_uporov mail spool (/var/mail/t_uporov) not found
Deleting user m_kruglov
userdel: m_kruglov mail spool (/var/mail/m_kruglov) not found
Deleting user r_klinova
userdel: r_klinova mail spool (/var/mail/r_klinova) not found
Removing group `sigma' ...
Done.
Deleting user i_frolov
userdel: i_frolov mail spool (/var/mail/i_frolov) not found
Deleting user d_lavrov
userdel: d_lavrov mail spool (/var/mail/d_lavrov) not found
Deleting user e_ivanova
userdel: e_ivanova mail spool (/var/mail/e_ivanova) not found
Removing group `nabla' ...
Done.
Deleting user k_beglov
userdel: k_beglov mail spool (/var/mail/k_beglov) not found
Deleting user b_rebrov
userdel: b_rebrov mail spool (/var/mail/b_rebrov) not found
Deleting user n_kalinina
userdel: n_kalinina mail spool (/var/mail/n_kalinina) not found
Removing group `beta' ...
Done.
```

