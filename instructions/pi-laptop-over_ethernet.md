# Connecting
1. Connect via Ethernet cable pi and laptop
2. Settings -> Network -> Wired Gearbox -> IPv4 -> Shared to other computers
3. ```ip a ```  and get the ip address from ethernet interface
3. ```nmap -n -sP 10.42.0.255/24``` ( or any other address)
4. get the ip address from above and ```ssh pi@<ip address of above>```

# Bandwidth test
1. ```sudo apt-get install iperf```
2. On raspberry pi ```iperf -s```
3. On laptop ```iperf -c <ip address of raspberry pi>```


# Results 

|Cabel Length|Bandidth|
|---|---|
|0.25m|942 Mbits/sec|
|20m|940 Mbits/sec|
