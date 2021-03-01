# Kali-Linux-Dockerfile
A simple dockerfile which allows you to build a _docker image_ starting from the latest official one of **Kali Linux** and including some useful tools.

## Included tools
These are the main **tools** which are included:

- Kali Linux [Top 10](https://tools.kali.org/kali-metapackages) metapackage
- exploitdb
- man-db
- dirb
- nikto
- wpscan
- uniscan
- tor
- proxychains

Note that you can _add/modify/delete_ configuration files by doing the related changes in the dockerfile.

### Other useful things

Also [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) is installed as default shell. You can add some changes directly in the [.zshrc](https://github.com/zMrSec/Kali-Linux-Dockerfile/blob/master/config/.zshrc) file, such as setting your favourite theme.
_Python-Pip_ and _NodeJS-NPM_ are included, too.

### Usage

In order to build an _image_ from this dockerfile, just go on the folder where it is located and simple open your favourite **Terminal**, typing as follows:

```sh
docker build [-t your_image_name] .
```

##### DockerHub

You can also _pull_ the image from the DockerHub [repository](https://cloud.docker.com/u/zmrdevj/repository/docker/zmrdevj/kali-linux) by opening your favourite **Terminal** and typing:

```sh
docker pull zmrdevj/kali-linux
```
(_Warning_: this image won't be probably updated within the latest Kali versions and the latest tools versions, so this is not the recommended way)

##### More info

Check out [Kali Linux on a Docker container: the easiest way](https://medium.com/@zMrDevJ/kali-linux-on-docker-container-the-easiest-way-e5a551348788) for more detailed info.

#### Contacts

- Email: marioraciti@pm.me
- LinkedIn: linkedin.com/in/marioraciti
- Twitter: twitter.com/zMrSec

### Todos

- Add some more useful tools, languages.

**Enjoy!**

### References

- https://www.unixmen.com/run-kali-linux-2-0-in-docker-container/
- https://www.kali.org/docs/containers/official-kalilinux-docker-images/
- https://www.kali.org/docs/containers/using-kali-docker-images/ 
- https://www.kali.org/news/major-metapackage-makeover/

Usage 
```bash
kali@kali:~$ docker pull kalilinux/kali-rolling
kali@kali:~$
kali@kali:~$ docker run --tty --interactive kalilinux/kali-rolling /bin/bash
root@e4ae79503654:/
root@e4ae79503654:/ exit
kali@kali:~$
```


## My Installed Tools

| Tool Name | Description                                                                                                                                                                                                     | Command                              | Package Name |   |
|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|--------------|---|
| Nmap      | Network Scanner                                                                                                                                                                                                 | nmap -v -A -T4 -Pn ${TARGET}         | nmap         |   |
| Dmitry    | Deepmagic Information Gathering Tool.  Basic functionality of DMitry allows for information to be gathered about a target host from a simple whois lookup  on  the target to uptime reports  and TCP portscans. | dmitry ${TARGET} dmitry -s ${TARGET} | dmitry       |   |
| LBD       | Load Balancer Detector                                                                                                                                                                                          | lbd ${TARGET}                        | lbd          |   |


:

