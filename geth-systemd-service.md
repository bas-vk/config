# GO ethereum client as a systemd service

```
[Unit]
Description=Ethereum go client


[Service]
EnvironmentFile=%h/.ethereum/geth.conf
ExecStart=/usr/bin/geth $ARGS

[Install]
WantedBy=default.target
```

### Enable service
```sh
$ systemctl --user enable geth.service
$ systemctl --user start geth.service
```


