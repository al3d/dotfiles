SETUP
=====
To get this working, clone the repository wherever, and then in the appropriate
base file (.bash_profile, .bashrc, .profile etc.), append the following lines (replacing
<directory> with the directory of this file, the base directory)

	BOOTSTRAP_DIR=<directory>
	[ -n "$PS1" ] && source $BOOTSTRAP_DIR/bootstrap.sh

Add extra instructions and non-public aliases (e.g. ssh servers to this file)


PROMPT
======
If you want to customise the beginnings of the prompt, you can declare the variable
in the above bash file. Look at bootstrap.sh for reference. YOU MUST DECLARE THE
"PROMPT" variable before including the above file e.g.

	PROMPT="\u:\h" # or
	PROMPT="\u"


HISTORY
======

You may need to make a history.txt file in the directory

	touch history.txt
