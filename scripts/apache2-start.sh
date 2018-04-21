#!/bin/bash
# Execute apache2 on foreground

source /etc/apache2/envvars
exec apache2 -D FOREGROUND
