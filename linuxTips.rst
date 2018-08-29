Linux Tips and Tricks
=====================

Packages Everyone Should Have
-----------------------------

- fortune-mod
    + Fortune draws from a huge database of quotes and displays one at random. 
      It maybe insightful, it maybe a funny joke, or fortune may downright insult 
      you. I do recomend adding a ``fortune -s`` to your ``.bashrc``
- cowsay
    + Make cows say whatever you like!
    + ``fortune | cowsay``
- screen
    + Screen creates a virtual terminal in the curent terminal. This is amazing 
      for quick bash scripts or running multiple commands on a remote server.
- watch
    + Ever wanted to run the same command every X timeframe? Well now you can, 
      combine with screen to create something easier than a cronjob.
    + ``watch "fortune | cowsay"``
- sl
    + acidentally type sl instead of ls, welp you now have a steam locamotive!
- sshfs
    + This is nice if you're moving a lot of different files between remote
      systems. Basicall files on those systems will show up like they are
      locally available. The only requirement is that you can ssh to the
      remote client.
    + ``alias fsIsengard="sshfs warfield@isengard.mines.edu:/u/au/cx/warfield``

What Linux Does for Free
------------------------

.bashrc
+++++++
Located at ~/.bashrc, this bash script is run everytime a user opens an active 
terminal. This is very useful if you want your terminal to give you information 
about your how your well bot network is doing on launch. I use mine for for 
aliases and having fortune insult me.

Aliases
+++++++
These are very useful for the lazy programer, do you really want to type ``ssh 
aUser@isengard.mines.edu`` every single time you want to use :ref:`isengardDoc`?
Hell no! We're lazy, just add ``alias isengard="ssh aUser@isengard.mines.edu"`` 
to your ``~/.bashrc`` and forget about remembering the address for isengard and 
typing it out by hand everytime.

Cronjobs
++++++++
Need to run a bash script once a month at midnight? Use a cronjob, add them by 
using ``crontab -e``. `For more information... <https://en.wikipedia.org/wiki/Cron>`_
