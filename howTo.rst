.. _howToMakeThis:

How to Make a Site Like This
============================

How to do this

Get your inside.mines.edu page
------------------------------

1. Goto https://inside.mines.edu/cgi-bin/create-home-page
#. Sign in and and accept the T&C (IE. agree not to host porn)
#. Don't fill out the info about your self (it just creates a template that we're deleting later)
#. On the school network ``ssh multipassUser@illumate``
#. HTML files are located in the "public_html" foulder and cgi scripts can be added to the "cgi-bin" folder under "public_html"
#. rm the the old index htlm, it's useless

Use Sphinx, It's almost too easy
--------------------------------

Sphinx_ is the tool used to create quick documentation in various formats.
The most reconizable implimentation being the `python documentation`__.


1. Install Sphinx (On your local Machine)
2. Run ``sphinx-quickstart``
3. Write your .rst or .md files
4. ``make html``
5. Copy the contents of _build/html to illuminate 

.. _Sphinx: http://www.sphinx-doc.org/en/master/index.html
.. _python: https://docs.python.org/3.6/index.html
__ python_
