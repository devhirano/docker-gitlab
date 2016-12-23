# Environments of this  
## source 

https://hub.docker.com/r/gitlab/gitlab-ce/  


# How to build

```
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

NOTE : verify start.sh for using image name and version

## access gitlab web-ui 

You can see the "change password" ui if reconfigure are done.  

NOTE:  
you have to wait until reconfigure gitlab, also take 300 sec or more  
so you can check it with below command if anxious 


## Add remote repo   

You have to access git using ssh.   

git remote add origin ssh://git@<HOST IP>:<SSH FWD PORT>/<GITLAB REPO USER>/<GITLAB REPO NAME>   

    > git remote add origin ssh://git@www.sample.com:2222/root/docker-gitlab.git  


## check logs

```
docker logs -tf gitlab
```

