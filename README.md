# service-checker

Add script to your crontab - example:

```
crontab -e
```

Add this line in file:

```
0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58 * * * * /var/service-checker/main.sh
```
