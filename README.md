Based on [this](https://devedge.github.io/2021-02-05/deploying-a-website-to-tor-with-docker-compose/)

# Get custom onion address
Download the newest release from: [mkp224o](https://github.com/cathugger/mkp224o/releases)
Note: if the name is > 6 characters, the address will take longer to generate.
with adding `-t X` you can set the number of threads to use.
```bash
 ./mkp224o -S 30 -j 8 -o onion3.txt -d onionv3/ {NAME YOU WANT}
```
There will be folders generated in the onionv3 folder. (One subfolder should stay in the onionv3 folder).

In the nginx.conf, add the .onion address.


# Your django website
In the website folder you can put your django website. The docker-compose.yml will copy the files to the container.
Important: Change the `SECRET_KEY` in the settings.py file.

# Run
```bash
docker-compose up -d
```

# Stop and remove
```bash
docker-compose down -v
```
