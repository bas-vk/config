# GO ethereum client as a systemd service

```
[Unit]
Description=Ethereum go client

[Service]
Type=simple
ExecStart=geth 2>%h/.ethereum/geth.log

[Install]
WantedBy=default.target
```

### Enable service
```sh
$ systemctl --user enable geth.service
$ systemctl --user start geth.service
```


