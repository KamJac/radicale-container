Simple and minimal radicale container with default SSL support baked in.
Requires further configuration in config file. (config, collections locations and SSL setting won't come into effect).
It expects certificates files under /etc/letsencrypt/live/HOSTNAME/

Volumes:
/storage - main storage directory containing configuration file and collections

Enviroment variables:
HOSTNAME - your server hostname 

Example usage: docker run --name=radicale -p 5232:5232 -v /path/to/your/dir:/storage -v /etc/letsencrypt:/etc/letsencrypt -e HOSTNAME=your.host.name --restart unless-stopped kamileg/radicale-minimal

