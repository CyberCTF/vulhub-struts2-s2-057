# Vulhub's struts2/s2-057 (in app/) runs vulhub/struts2:2.3.34-showcase with
# struts-actionchaining.xml mounted as a volume. Isoloom has no bind mounts, so this image
# copies the same file to the same place. Nothing else differs.
FROM vulhub/struts2:2.3.34-showcase
COPY app/struts-actionchaining.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/struts-actionchaining.xml
