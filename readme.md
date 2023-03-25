# Containerized Icecast recorder
This is a slightly adapted version of the excellent [icecast_recorder by Jipok](https://github.com/Jipok/icecast_recorder).

This container records a stream from IceCast-compatible servers for n amount of minutes and splits it into separate tracks with the specified file extension.

# Usage
Run the container:
`docker run ghcr.io/Sidewinder53/icecast_recorder_containerized:latest <icecast stream url> <number of minutes to record> <file extension>`

Example:
`docker run ghcr.io/Sidewinder53/icecast_recorder_containerized:latest https://st03.sslstream.dlf.de/dlf/03/high/aac/stream.aac?aggregator=web 60 aac`

## Tips
* You can find links to streams inside pls/m3u playlists intended for media players
* Track boundaries are not very accurate. You can hear a couple of seconds from another track at the beginning or end of the current
* If you are interested in the description of the protocol, then see [cast.readme.io/docs/icy](https://cast.readme.io/docs/icy)