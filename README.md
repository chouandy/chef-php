chef-php (ubuntu_14.04)
=======================

# Use gems

- knife-solo

  - Homepage: <a href="http://matschaffer.github.io/knife-solo/">GOTO</a>
  - GitHub: <a href="https://github.com/matschaffer/knife-solo" targrt="_blank">GOTO</a>

- Berkshelf

  - Homepage: <a href="http://berkshelf.com/" target="_black">GOTO</a>
  - GitHub: <a href="https://github.com/berkshelf/berkshelf" targrt="_blank">GOTO</a>

# Chef Resources

- Chef Homepage <a href="https://www.chef.io/" target="_black">GOTO</a>
- Chef Documents <a href="http://docs.chef.io/" targrt="_blank">GOTO</a>
- Chef Cookbook <a href="https://supermarket.chef.io/" targrt="_blank">GOTO</a>

# SSH no password

``` sh
$ cat ~/.ssh/id_rsa.pub | ssh vagrant@10.10.10.10 "mkdir -p /home/vagrant/.ssh && cat >> /home/vagrant/.ssh/authorized_keys"
```
