AEM_AUTHOR_HOST="localhost"
AEM_AUTHOR_PORT=4502

AEM_PUBLISH_HOST="localhost"
AEM_PUBLISH_PORT=4503

USER_NAME="admin"
PASSWORD="admin"
#Packaes to Author 

#all
curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@all/target/aem-guides-wknd.all-0.0.1-SNAPSHOT.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/com.adobe.aem.guides/aem-guides-wknd.all-0.0.1-SNAPSHOT.zip


#apps
curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@ui.apps/target/aem-guides-wknd.ui.apps-0.0.1-SNAPSHOT.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/com.adobe.aem.guides/aem-guides-wknd.ui.apps-0.0.1-SNAPSHOT.zip



#bundle
curl -u $USER_NAME:$PASSWORD -F action=install -F bundlestartlevel=20 -F bundlefile=@"core/target/aem-guides-wknd.core-0.0.1-SNAPSHOT.jar" http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/system/console/bundles 


#content
# curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@ui.content/target/cxp-wp.ui.content-1.0.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
# curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/com.adobe.aem.guides/cxp-wp.ui.content-1.0.zip