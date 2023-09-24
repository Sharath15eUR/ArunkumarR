Basic Commands in Linux


1. Commands are actually files containing programs, often written in C. How will you find out in which directory does  the file corresponding to the man command resides?

Ans: 

 "type" command is used to find out in which directory the specific command resides
To find out where man command resides we need to use -> type man
output: man is /usr/bin/man

2.  How will you find out what is the use of the ps command.
Ans:

The use of specific command can be fetched using the "man" command.
To find out the use of ps command we need to use -> man ps

output: 

NAME
       ps - report a snapshot of the current processes.

SYNOPSIS
       ps [options]

DESCRIPTION
       ps displays information about a selection of the active processes.  If you want a repetitive update of the selection and the displayed information, use top instead.

       This version of ps accepts several kinds of options:

       1   UNIX options, which may be grouped and must be preceded by a dash.
       2   BSD options, which may be grouped and must not be used with a dash.
       3   GNU long options, which are preceded by two dashes.

       Options  of  different  types  may be freely mixed, but conflicts can appear.  There are some synonymous options, which are functionally identical, due to the many standards and ps implementations that this ps is compatible
       with.

       Note that ps -aux is distinct from ps aux.  The POSIX and UNIX standards require that ps -aux print all processes owned by a user named x, as well as printing all processes that would be selected by the -a option.   If  the
       user  named  x  does not exist, this ps may interpret the command as ps aux instead and print a warning.  This behavior is intended to aid in transitioning old scripts and habits.  It is fragile, subject to change, and thus
       should not be relied upon.

       By default, ps selects all processes with the same effective user ID (euid=EUID) as the current user and associated with the same terminal as the invoker.  It displays the process ID (pid=PID), the terminal associated  with
       the process (tname=TTY), the cumulated CPU time in [DD-]hh:mm:ss format (time=TIME), and the executable name (ucmd=CMD).  Output is unsorted by default.

       The use of BSD-style options will add process state (stat=STAT) to the default display and show the command args (args=COMMAND) instead of the executable name.  You can override this with the PS_FORMAT environment variable.
       The  use  of  BSD-style  options  will also change the process selection to include processes on other terminals (TTYs) that are owned by you; alternately, this may be described as setting the selection to be the set of all
       processes filtered to exclude processes owned by other users or not on a terminal.  These effects are not considered when options are described as being "identical" below, so -M will be considered identical to Z and so on.

       Except as described below, process selection options are additive.  The default selection is discarded, and then the selected processes are added to the set of processes to be displayed.  A process will thus be shown if  it
       meets any of the given selection criteria.

EXAMPLES
       To see every process on the system using standard syntax:
          ps -e
          ps -ef
          ps -eF
          ps -ely

       To see every process on the system using BSD syntax:
          ps ax
          ps axu

       To print a process tree:
          ps ‐ejH
          ps axjf

       To get info about threads:
          ps ‐eLf
 Manual page ps(1) line 1 (press h for help or q to quit)
