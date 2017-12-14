MySQL rootpass
=========
Reset MySQL Server Root Password
---------

Sometimes uninstalling and purging mysql-server isn't enough to make your
root password go away: it hangs around in the grant tables of
the mysql database.

This role resets the root account password to empty-string,
or another string of your choice.

The method is adapted from L.D. James'
[stackexchange answer](https://askubuntu.com/a/766908/770922).

I don't know where the mysql grant tables are stored, but I hope to
[find out](https://superuser.com/questions/1276555/where-are-mysql-grant-tables-stored).

Requirements
------------

This package assumes you have a mysql server running somewhere, and that you
don't care about reseting the root password. I can't make any guarantees that
data will be safe, or that your mysql server will be in a usable state after
running this role; please consider it a last-ditch effort.

This package will install python-mysqldb for both python2 and python3
on the target server.

This package expects mysql-server >= 5.7.6, and ubuntu=16.04, but will likely
work with any system where mysql is fully managed by systemd.

Role Variables
--------------

**defaults.yml**

  * new_root_password: Set to empty-string by default

**vars.yml**

None

Dependencies
------------

None

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: fractalic.mysql-rootpass, new_root_password: 'password' }

License
-------

CC-BY

Author Information
------------------



Ben loves noodling about with C++, Javascript, and other languages. Right now
he's working on mesh networking and cryptocurrency with a Vancouver company.

Contact: [ansible@benhughes.xyz](mailto:ansible@benhughes.xyz)
