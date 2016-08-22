Summercamp 2016 Workshops
=========================

All Summercamp 2016 workshops in one place.

## Workshop Setup

We are aiming to have everything prepared and updated at the moment you download/receive
the VirtualBox image, but somethimes last minute changes happen.

For your convenience there is a `run.sh` script available in the root of the summercamp repo that will
update the workshop (or all of them) if such a situation occurs.

You can run it without an argument which will in turn setup all the workshops, or you can run it with workshop name
as argument, and it will only run setup for that workshop.

To run it, open terminal in your running VirtualBox image, then execute

```
cd /var/www/summercamp/
```

and then you can, for example, execute

```
./run.sh sulu
```

and only the sulu workshop would be installed.

or

```
./run.sh
```

which will setup all workshops.
