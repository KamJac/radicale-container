Simple and minimal radicale container.
Requires further configuration in config file. (config and collections locations setting won't come into effect)

Example usage: docker run --name=radicale -p 5232:5232 -v /path/to/your/dir:/storage --restart unless-stopped kamileg/radicale-minimal
/storage is path containign config file(at root), collections and any optional files, such as ssl certs.