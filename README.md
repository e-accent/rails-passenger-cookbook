What's include:
* A depolyer user with sudo enabled
* Nginx compied with passenger support
* Postgresql
* Postfix

```sh
# Install knife-solo and berkshelf
gem install knife-solo berkshelf
```

```sh
# Install Chef in server
knife solo prepare username@remote_ip_address
```

After `knife solo prepare` successed
you'd better upload your public key to server due to a bug in knife solo (https://github.com/matschaffer/knife-solo/issues/368)

See here for how to upload public key: http://linode.com/docs/security/use-public-key-authentication-with-ssh

```sh
# Provision the server with cookbooks
knife solo cook username@remote_ip_address
```
