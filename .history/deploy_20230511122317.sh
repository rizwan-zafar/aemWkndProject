AEM_AUTHOR_HOST="localhost"
AEM_AUTHOR_PORT=4502

AEM_PUBLISH_HOST="localhost"
AEM_PUBLISH_PORT=4503

USER_NAME="admin"
PASSWORD="admin"
#Packaes to Author 

#all
curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@all/target/aem-guides-wknd.all-0.0.1-SNAPSHOT.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/com.adobe.aem.guides//etc/packages/com.adobe.aem.guides/aem-guides-wknd.all-0.0.1-SNAPSHOT.zip


#apps
curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@ui.apps/target/cxp-wp.ui.apps-1.0.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/sa.com.stc/cxp-wp.ui.apps-1.0.zip



#bundle
# curl -u $USER_NAME:$PASSWORD -F action=install -F bundlestartlevel=20 -F bundlefile=@"core/target/cxp-wp.core-1.0.jar" http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/system/console/bundles 


#config
# curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@ui.config/target/cxp-wp.ui.config-1.0.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
# curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/sa.com.stc/cxp-wp.ui.config-1.0.zip


#content
# curl -u $USER_NAME:$PASSWORD -F cmd=upload -F force=true -F package=@ui.content/target/cxp-wp.ui.content-1.0.zip http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json
# curl -u $USER_NAME:$PASSWORD -F cmd=install http://$AEM_AUTHOR_HOST:$AEM_AUTHOR_PORT/crx/packmgr/service/.json/etc/packages/sa.com.stc/cxp-wp.ui.content-1.0.zip