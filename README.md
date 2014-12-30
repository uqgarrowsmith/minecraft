
# To build #
`docker build --tag="uqgarrowsmith/tekkit" git@github.com:uqgarrowsmith/minecraft.git`

# To run (interactive) #
`docker run -it -v /tekkit-data:/data -p 25565:25565 --name tekkit uqgarrowsmith/tekkit`

# To run (daemon) #
`docker run -d -p 25565:25565 --name tekkit uqgarrowsmith/tekkit`

With that you can easily view the logs, stop, or re-start the container:

`docker logs -f tekkit`

`docker stop tekkit`

`docker start tekkit`