sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service ls
Error response from daemon: This node is not a swarm manager. Use "docker swarm init" or "docker swarm join" to connect this node to swarm and try again.
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service get

Usage:  docker service COMMAND

Manage Swarm services

Commands:
  create      Create a new service
  inspect     Display detailed information on one or more services
  logs        Fetch the logs of a service or task
  ls          List services
  ps          List the tasks of one or more services
  rm          Remove one or more services
  rollback    Revert changes to a service's configuration
  scale       Scale one or multiple replicated services
  update      Update a service

Run 'docker service COMMAND --help' for more information on a command.
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker image bulid -t react .
unknown shorthand flag: 't' in -t
See 'docker image --help'.

Usage:  docker image COMMAND

Manage images

Commands:
  build       Build an image from a Dockerfile
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Display detailed information on one or more images
  load        Load an image from a tar archive or STDIN
  ls          List images
  prune       Remove unused images
  pull        Download an image from a registry
  push        Upload an image to a registry
  rm          Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

Run 'docker image COMMAND --help' for more information on a command.

sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker image build -t react .
[+] Building 36.2s (9/9) FINISHED                                                                                                     docker:default
 => [internal] load build definition from Dockerfile                                                                                            0.7s
 => => transferring dockerfile: 104B                                                                                                            0.0s
 => [internal] load metadata for docker.io/library/node:latest                                                                                  0.0s
 => [internal] load .dockerignore                                                                                                               0.7s
 => => transferring context: 2B                                                                                                                 0.0s
 => [1/4] FROM docker.io/library/node:latest                                                                                                    0.0s
 => [internal] load build context                                                                                                               6.8s
 => => transferring context: 245.02MB                                                                                                           5.7s
 => CACHED [2/4] WORKDIR /src                                                                                                                   0.0s
 => [3/4] COPY . .                                                                                                                             12.5s
 => [4/4] RUN npm i                                                                                                                             8.5s
 => exporting to image                                                                                                                          5.0s 
 => => exporting layers                                                                                                                         4.5s 
 => => writing image sha256:f63c63ffa58e51be965c60670715f3752c3cd7a9cecee4338ef5e6c08e38fd1f                                                    0.1s 
 => => naming to docker.io/library/react                                                                                                        0.1s

 1 warning found (use docker --debug to expand):
 - JSONArgsRecommended: JSON arguments recommended for CMD to prevent unintended behavior related to OS signals (line 6)
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service create --name react -p 8000:3000 react
Error response from daemon: This node is not a swarm manager. Use "docker swarm init" or "docker swarm join" to connect this node to swarm and try again.
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker swarm init
Error response from daemon: could not choose an IP address to advertise since this system has multiple addresses on interface wlo1 (2401:4900:52fa:18b7:8f0a:b2e2:e487:cbe9 and 2401:4900:52fa:18b7:2a4e:ecee:e4e3:9ca1) - specify one with --advertise-addr
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker swarm init --advertise-addr 172.17.0.1
Swarm initialized: current node (kbup6wctxb40on7wp6gxjqeum) is now a manager.

To add a worker to this swarm, run the following command:

    docker swarm join --token SWMTKN-1-5jqopnfbc487r4ir9zti1qolh3ugzf1gnqtu4tiyzlze9ar5ky-8u2dp2cqp2bxf3qg5d1sks9xj 172.17.0.1:2377

To add a manager to this swarm, run 'docker swarm join-token manager' and follow the instructions.

sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service create --name react -p 8000:3000 react
image react:latest could not be accessed on a registry to record
its digest. Each node will access react:latest independently,
possibly leading to different nodes running different
versions of the image.

mxr95jq7bp9966akambvsem7h
overall progress: 1 out of 1 tasks 
1/1: running   [==================================================>] 
verify: Service mxr95jq7bp9966akambvsem7h converged 
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ echo "# jenkins" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/kd1-86698-manishk/jenkins.git
git push -u origin main
Reinitialized existing Git repository in /home/sunbeam/cdac/classwork/day06/app1/.git/
[master ca9d1c4] first commit
 1 file changed, 1 insertion(+)
Enumerating objects: 25, done.
Counting objects: 100% (25/25), done.
Delta compression using up to 8 threads
Compressing objects: 100% (25/25), done.
Writing objects: 100% (25/25), 176.90 KiB | 4.02 MiB/s, done.
Total 25 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), done.
To https://github.com/kd1-86698-manishk/jenkins.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ which docker
/usr/bin/docker
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service get

Usage:  docker service COMMAND

Manage Swarm services

Commands:
  create      Create a new service
  inspect     Display detailed information on one or more services
  logs        Fetch the logs of a service or task
  ls          List services
  ps          List the tasks of one or more services
  rm          Remove one or more services
  rollback    Revert changes to a service's configuration
  scale       Scale one or multiple replicated services
  update      Update a service

Run 'docker service COMMAND --help' for more information on a command.
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service create --name react -p 8000:3000 react
image react:latest could not be accessed on a registry to record
its digest. Each node will access react:latest independently,
possibly leading to different nodes running different
versions of the image.

uoq0dhuw9ixi7ria81i30aclz
overall progress: 1 out of 1 tasks 
1/1: running   [==================================================>] 
verify: Service uoq0dhuw9ixi7ria81i30aclz converged 
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ git status 
On branch main
Your branch is up to date with 'origin/main'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   src/App.js
        modified:   src/index.css

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        Dockerfile

no changes added to commit (use "git add" and/or "git commit -a")
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ git add.
git: 'add.' is not a git command. See 'git --help'.

The most similar command is
        add
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ git add .
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ git commit -m "First commit"
[main ea7c95b] First commit
 3 files changed, 24 insertions(+), 38 deletions(-)
 create mode 100644 Dockerfile
 rewrite src/App.js (87%)
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ git push
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 940 bytes | 940.00 KiB/s, done.
Total 6 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/kd1-86698-manishk/jenkins.git
   ca9d1c4..ea7c95b  main -> main
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ docker service create --name react -p 8000:3000 react
image react:latest could not be accessed on a registry to record
its digest. Each node will access react:latest independently,
possibly leading to different nodes running different
versions of the image.

r4cmd8xu5tgu6vzow75f27mk8
overall progress: 1 out of 1 tasks 
1/1: running   [==================================================>] 
verify: Waiting 1 seconds to verify that tasks are stable... 
Error response from daemon: service r4cmd8xu5tgu6vzow75f27mk8 not found
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ ^C
sunbeam@sunbeam-student:~/cdac/classwork/day06/app1$ 

Socket problem

sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
ls -l /var/run/docker.sock