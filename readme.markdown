<!--
Don't edit this file manually! Instead you should generate it by using:
    wiki2markdown.pl doc/HttpLuaModule.wiki
-->

DESC
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


Steps to configure nginx lua redis environment
===================
* Download the source code of LuaJIT and lua-cjson
```
git clone https://github.com/spitbreak/LuaJIT.git
git clone https://github.com/spitbreak/lua-cjson.git
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

Reference: http://notes.11ten.net/fast-api-on-mac-use-nginx-lua-redis.html
```


Table of Contents
===================
* [DESC](#desc)
* [Git Command](#git-command)
    * [Git sync from upstream branch](#git-sync-from-upstream-branch)
* [Steps to configure nginx lua redis environment](#steps-to-configure-nginx-lua-redis-environment)
