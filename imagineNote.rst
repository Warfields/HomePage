.. _imagineNote:

Imagine Note
============

**Below is a copy of an email sent to all imagine users when it was depricated.**

Our logs show that you have logged into imagine.mines.edu within the last year. 
We are in the process of replacing imagine - scheduled for July 3, 2018, from 
9:00 to 10:00AM. You will not be able to access imagine during this time. Once 
we make the cutover, you will be able to access the new server using its 
hostname - pvm-jumpbox.mines.edu or via it's DNS alias "jumpbox". We will also 
add a DNS alias for "imagine" once the migration is complete.

As part of that replacement, we are changing the security model for the system. 
Imagine was intended to be a tool to allow our users to access protected 
resources, not to be used as a destination server, itself. The new server 
reflects that goal: users are allowed to ssh into pvm-jumpbox, both from 
on-campus, and from off-campus. The only service that the new server offers to 
our users is the ability to ping and ssh from pvm-jumpbox to on-campus 
resources.

We have synchronized your files from imagine to pvm-jumpbox, and will re-sync 
them as part of the
cutover process. You are welcome to log into pvm-jumpbox early, but please be 
aware that any files that you create will be overwritten with whatever files 
exist on imagine at the time of the cutover.

FOR ADVANCED USERS: If you need to do ssh port forwarding, you can do something 
like:
     ssh -o ProxyCommand='ssh -W %h:%p username@pvm-jumpbox.mines.edu' -L \
          8443:destinationhost.mines.edu:443 username@intermediatehost.mines.edu

In this example, we are ssh'ing first to pvm-jumpbox as username, and having 
jumpbox set up a port forward through intermediatehost to access a secure web 
server running on destinationhost. Please note that the intermediatehost must 
normally have access to the resource running on destinationhost.

We apologize for any inconvenience these changes may cause, but they should 
significantly increase the security of this system. Please feel free to contact 
us with any questions or concerns.

 Sincerely,

 Yuri Csapo
 Director of Infrastructure Services
 Colorado School of Mines
