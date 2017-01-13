# Environments of this  
## source 

https://hub.docker.com/r/gitlab/gitlab-ce/  


# How to build

```
git clone https://github.com/devhirano/docker-gitlab.git
cp gitlab.rb.sample gitlab.rb
<edit gitlab.rb>
<edit config.sh>
./build.sh
```

# How to use  
## start-docker

```
./start.sh
```

## access gitlab web-ui 

Acceess to the external_url in the gitlab.rb file.
Then you can see the "change password" ui if reconfigure are done.  

NOTE:  
  You have to wait until reconfigure gitlab, also take 300 sec or more.
  So you can check logs with below command if anxious.


## Adding remote repo   

You can access git using ssh if you changed ssh port.   

git remote add origin ssh://git@<HOST IP>:<SSH FWD PORT>/<GITLAB REPO USER>/<GITLAB REPO NAME>   

    > git remote add origin ssh://git@www.sample.com:2222/root/docker-gitlab.git  


## check logs

```
docker logs -tf gitlab
```

