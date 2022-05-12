# Home Manager Namespace

```
OUT_FILE=mqtt_passwd

touch $OUT_FILE
mosquitto_passwd -b user1 passwd1
...
mosquitto_passwd -b userX passwdX

kubectl create secret generic mosquitto --from-file=passwdfile=$OUT_FILE

```
