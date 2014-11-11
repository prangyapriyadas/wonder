#!/bin/sh
# logit function declaration.
logit()
{
MSG_LEVEL=$1
# Shifts the position of the parameters over one place.
shift
if [ "$MSG_LEVEL" -ge 1 ] && [ "$MSG_LEVEL" -le 3 ]; then
if [ "$LEVEL" -eq 1 ] && [ "$MSG_LEVEL" -ge 1 ]; then
echo "Msg Level $MSG_LEVEL: $@"
 elif [ "$LEVEL" -eq 2 ] && [ "$MSG_LEVEL" -ge 2 ]; then
echo "Msg Level $MSG_LEVEL: $@"
elif [ "$LEVEL" -eq 3 ] && [ "$MSG_LEVEL" -ge 3 ]; then
echo "Msg Level $MSG_LEVEL: $@"
fi
fi
}
#Load the log level from the command line...
LEVEL=$1
# Call the function a couple of times.
logit 1 Logit Test one
logit 2 Logit Test two
logit 3 Logit Test three
logit 4 Logit Test four
