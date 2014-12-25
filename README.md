`docker run -d -p 25565:25565 --name minecraft-default itzg/minecraft-server`

With that you can easily view the logs, stop, or re-start the container:

`docker logs -f minecraft-default`
    ( Ctrl-C to exit logs action )

`docker stop minecraft-default`

`docker start minecraft-default`