#! /bin/sh
# Put this file into /etc/init.d/ directory.  /etc/init.d/jupyter-notebook
#
PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin
### BEGIN INIT INFO
# Provides:          jupyter-notebook
# Required-Start:    $local_fs $network $syslog
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: jupyter-notebook on-boot services
# Description:       Enable service provided by daemon.
### END INIT INFO


# Some things that run always
touch /var/lock/jupyter-notebook


# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting script jupyter-notebook "
    echo "Could do more here"
    jupyter-notebook --log-level=50 --ip='*' --port=49151 --notebook-dir=/home/vagrant
    ;;
  stop)
    echo "Stopping script jupyter-notebook"
    echo "Could do more here"
    jupyter-notebook stop
    ;;
  restart)
    echo "Re Starting script jupyter-notebook"
    stop
    start
    ;;
  force-reload)
    echo "force-reload jupyter-notebook"
    stop
    start
    ;;
  *)
    echo "jupyter-notebook {start|stop|force-reload|restart}"
    exit 1
    ;;
esac

exit 0
