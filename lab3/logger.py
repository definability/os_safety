import syslog
from sys import argv

#levels=:
#   ['LOG_EMERG', 'LOG_ALERT', 'LOG_CRIT', 'LOG_ERR',
#    'LOG_WARNING', 'LOG_NOTICE', 'LOG_INFO', 'LOG_DEBUG']]

#facilities
#   ['LOG_KERN', 'LOG_USER', 'LOG_MAIL', 'LOG_DAEMON', 'LOG_AUTH',
#    'LOG_LPR', 'LOG_NEWS', 'LOG_UUCP', 'LOG_CRON', 'LOG_SYSLOG',
#    'LOG_LOCAL0', 'LOG_LOCAL1', 'LOG_LOCAL2', 'LOG_LOCAL3',
#    'LOG_LOCAL4', 'LOG_LOCAL5', 'LOG_LOCAL6', 'LOG_LOCAL7']]

#options
#   ['LOG_PID', 'LOG_CONS', 'LOG_NDELAY', 'LOG_NOWAIT', 'LOG_PERROR']]

syslog.openlog(logoption=syslog.LOG_PID, facility=syslog.LOG_KERN)

log_level = syslog.LOG_ERR
log_message = "Hi!"

print syslog.LOG_EMERG, syslog.LOG_DEBUG

if len(argv) > 1:
    log_message = argv[1]
if len(argv) > 2:
    log_level = int(argv[2])

syslog.syslog(log_level, log_message)

