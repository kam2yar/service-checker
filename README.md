# Service Checker

## Make the file executable:

```
sudo chmod +x main.sh
```

## Add script to your crontab:

```
crontab -e
```

## Add this line to the file:

```
0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58 * * * * /var/service-checker/main.sh
```
