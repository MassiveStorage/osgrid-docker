# osgrid-docker
osgrid-region in docker wich is actually persistent

Before you can start using this osgrid in docker you need to do the following steps

# First:
- Edit the Estates.ini file
  - replace <your estate name> with something better like: my-osgrid-estate (be creative)
  - Log into osgrid and open your profile - on the tab "2nd life" you may find a line called "key"
    - copy the uuid in the line "key" and replace <your osgrid avatars UUID> in the Regions.ini file with the uuid you just copied

# Second:
- Edit the Regions.ini file
  - change the name of your region from <your region name> to your favorite name like: my-osgrid-region(be creative)
  - create a uuid on some uuid generator website and replace <your UUID> with this generated uuid
  - change location to a yet unused location. You can find this out via the quick map on the osgrid website
  - replace <your ip or domain> with your actual external ip or domain 
  - replace <your osgrid firstname> with your first name of your avatar
  - replace <your osgrid second name> with your second name of your avatar
  - replace <the name you set in your Estates.ini> with the actual estate name you definied in the Estates.ini file

# Third:
Create a directory called: data
you can do this with: mkdir data

# Fourth
- build your image with:
  - docker build -t osgrid-docker .

# Fifth:
now simply run: docker-compose up -d
