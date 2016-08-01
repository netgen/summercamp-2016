Summercamp 2016 VirtualBox Image
================================

VirtualBox image, with everything that is required for Summercamp 2016.

## Authors

- [Srdjan Vranac]
- [Dinko Korunic]
- [Edi Modric]

## Prerequisites

You need to have following installed:
- [VirtualBox]

You will also need to have hardware virtualization option activated in bios, if you have one.

## Workshop Setup

We are aiming to have everything prepared and updated at the moment you download/receive
the VirtualBox image, but somethimes last minute changes happen.

For your convenience there is a `run.sh` script available in the root of the summercamp vm that will
update the workshop (or all of them) if such a situation occurs
```
/var/www/summercamp/
```

You can run it without an argument which will in turn setup all the workshops, or you can run it with workshop name
as argument, and it will only run setup for that workshop. Possible arguments are

```
TBD
```

To run it, open terminal in your running VirtualBox image, then execute

```
cd /var/www/summercamp/
```

and then you can execute

```
./run.sh ezsylius
```

and only the ezsylius workshop would be installed


[VirtualBox]: https://www.virtualbox.org/wiki/Downloads
[Srdjan Vranac]: https://github.com/vranac
[Dinko Korunic]: https://github.com/dkorunic
[Edi Modric]: https://github.com/emodric
