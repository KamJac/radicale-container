Simple and minimal radicale container.
It should work out of the box, but further configuration is hugly advised. (config, collections locations and SSL setting won't come into effect). You cannot change config file name or location.

Volumes:
/storage - default directory containing configuration file and collections

Example usage: docker run --name=radicale -p 5232:5232 -v /path/to/your/dir:/storage --restart unless-stopped kamileg/radicale-minimal

