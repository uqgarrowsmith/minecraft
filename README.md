
# To build 
`docker build --tag="uqgarrowsmith/tekkit" git@github.com:uqgarrowsmith/minecraft.git`

`docker run -d -p 25565:25565 --name tekkit uqgarrowsmith/tekkit`

With that you can easily view the logs, stop, or re-start the container:

`docker logs -f tekkit`

`docker stop tekkit`

`docker start tekkit`