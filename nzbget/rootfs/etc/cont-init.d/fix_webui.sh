#!/usr/bin/with-contenv bashio
# ==============================================================================
# Fix for the web UI not working through Ingress
# Host the (dynamic generated) javascript and CSS locally
# ==============================================================================

background
{
    # Wait for app to become available
    bashio::net.wait_for 46836 localhost 300
    # Download the combined js/css files from the nzbget webservice and store locally
    wget -O "${APP_DIR}/combined.js" "http://localhost:46836/combined.js?lib/jquery.min.js+lib/bootstrap.min.js+lib/raphael.min.js+lib/elycharts.min.js+fasttable.js+index.js+util.js+downloads.js+edit.js+status.js+messages.js+history.js+upload.js+config.js+feed.js"
    wget -O "${APP_DIR}/combined.css" "http://localhost:46836/combined.css?lib/bootstrap.css+style.css"
}
