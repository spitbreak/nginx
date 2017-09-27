<!--
Don't edit this file manually! Instead you should generate it by using:
    wiki2markdown.pl doc/HttpLuaModule.wiki
-->

Description
===================
This is the note of usually used commands here


Git command
===================


Git sync from upstream branch
-------------------
* Add a upstream repository
```
git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git
```
* Fetch to local master branch
```
git fetch upstream
```
* Merge to the current branch
```
git merge upstream/master
```
* Push the update
```
git push origin master
```


Git create query delete push a branch
-------------------
* Query branch info
```
query all remote branches
  # git branch -r

query all local branch
  # git branch
```

* Create a branch
```
create a branch
  # git branch [name]

switch branch
  # git checkout [branch-name]

merge a branch
  # git merge [target-branch-name] (this means the target branch get merged with current branch)

push a branch to remote repository
  # git push origin [branch-name]
  This full syntax should be git push origin [local-branch]:[remote-branch]
```

* Delete a branch
```
delete a branch(branch which get merged)
  # git branch -d [branch-name]

delete a branch(branch which do not get merged)
  # get branch -d -D [branch-name]

delete a branch from server
  # git push origin :[branch-name]
```
Referance: [git book](https://git-scm.com/book/en/v2)


Steps to configure nginx lua redis environment
===================
* Download the source code of LuaJIT and lua-cjson
```
git clone https://github.com/spitbreak/LuaJIT.git
git clone https://github.com/spitbreak/lua-cjson.git
git clone https://github.com/spitbreak/lua-redis-parser
```

* Compile them
```
Before compiling, lua5.1 and lua5.1-dev need to be installed(lua-cjson do not match lua version higher than 5.1.
All .h file installed from LuaJIT should be moved to /usr/local/include.
The common way to compile is just to make it or to use cmake and then make it.
```

* Configure nginx
```
    Download the source code of nginx modules and configure them as nginx module by script configure(specify them in argument '--add-module')
Compile nginx, install it and deploy self config file and lua script.

    Also you can use ngx_deploy.sh to deploy it automatically(ngx_depoly.sh has not download the source code yet and it'll add this function in the future).

Reference: [redis lua nginx configuration](http://notes.11ten.net/fast-api-on-mac-use-nginx-lua-redis.html)
```


Redis Knowledge
===================



Table of Contents
===================
* [Description](#description)
* [Git Command](#git-command)
    * [Git sync from upstream branch](#git-sync-from-upstream-branch)
    * [Git create query delete push a branch](#git-create-query-delete-push-a-branch)
* [Steps to configure nginx lua redis environment](#steps-to-configure-nginx-lua-redis-environment)
* [Redis Knowledge](#redis-knowledge)

