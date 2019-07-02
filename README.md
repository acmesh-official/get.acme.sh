# get.acme.sh

## 1. Install from web: https://get.acme.sh

Install https://github.com/Neilpang/acme.sh

```
curl https://get.acme.sh | sh

```

or

```
wget -O -  https://get.acme.sh | sh
```

### Install Options

See https://github.com/Neilpang/acme.sh/wiki/Options-and-Params for available options.

```
curl https://get.acme.sh | ACME_USE_WGET=1 HTTPS_INSECURE=1 sh -s -- --home /opt/acme.sh --noprofile

```

or

```
wget -O -  https://get.acme.sh | HTTPS_INSECURE=1 sh -s -- --home /opt/acme.sh --noprofile
```

## 2. Advanced Installation:

https://github.com/Neilpang/acme.sh/wiki/How-to-install

