# proxy
Add the proxy to your system.

We are going to use Proxychains4 tool with tor on the system to get proxy. It'll help us to become secure and remain anonymous over the internet.

## Table of contents
* [Install](#Install)
* [Configure](#Configure)
* [Usage](#Usage)

## Install 
First, we're going to add tor to our system and than proxychains4,
Open terminal and write the command:

```
$ apt-get update && sudo apt-get upgrade
$ sudo apt-get install tor -y
```
Now, we'll install proxychains in our system;

```
$ apt-get install proxychains4 -y
```
## Configure
After installation, we'll configure the proxychains,so write the command 

```
$ nano /etc/proxychains4.conf 
```
In the configuration, use arrorw keys to scroll down and do the following changes:
* Uncomment Dynamic_chain from comment.
* Comment Strict_chain, round_robin_chain and random_chain. 
* Then scroll down, uncomment proxy DNS requests and proxy_dns.
* Again scroll down, and write `socks5 127.0.0.1 9050`in the last line of proxy list.

Save the configuration file and exit the terminal. The proxychains setup is complete. 

## Usage
First, start the tor service on your system.

```
$ service tor start
```
you can use commands like start, status, restart and stop with the tor service.
After that, write proxychains in terminal followed by the name of tool you want to use with proxy.

```
$ proxychains firefox www.google.com
```
## Downloading the Script
I have made a script on proxychains, which will make easier to use proxy on the system. After installation of tor and proxychains, install it from git using the command 
```
$ git clone https://github.com/hackers-paradise/proxy
```
Write command `$ ./proxy.sh` to execute the script. Then, write the name of tool you want to have proxy and all done.
After the session, don't forget to stop the tor service by the command `$ service tor stop`. 
