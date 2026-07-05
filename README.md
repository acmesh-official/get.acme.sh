# get.acme.sh

## 1. Install from web: https://get.acme.sh

Install https://github.com/acmesh-official/acme.sh

```
curl https://get.acme.sh | sh -s email=my@example.com

```

or

```
wget -O -  https://get.acme.sh | sh -s email=my@example.com
```

## 2. What the installer does

The script at https://get.acme.sh only downloads `acme.sh` from GitHub and
runs its installer (`--install-online`) with the email you pass. You can read
it first: [index.html](index.html). The install:

1. **Where:** everything goes to `~/.acme.sh/` -- the `acme.sh` script,
   configs, and the certs you issue. An `acme.sh` alias is added to your
   shell profile. Nothing else on the system is touched. Uninstall with
   `acme.sh --uninstall`.
2. **Email:** the ACME account email registered with the CA. The CA uses it
   for expiry notices, and ZeroSSL (the default CA) uses it to auto-obtain
   the required EAB credentials. It is not used for anything else.
3. **Cron:** a daily cron job runs `acme.sh --cron` to renew your certs
   before they expire. Certificates are 90 days or shorter, so unattended
   renewal is the point. If you do not want the cron job, use the advanced
   install with `--nocron`, then renewals are up to you.

## 3. Advanced Installation:

https://github.com/acmesh-official/acme.sh/wiki/How-to-install
