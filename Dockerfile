FROM grafana/grafana:latest

COPY grafana.ini /etc/grafana/
#COPY ldap.toml /etc/grafana/ #Not needed as we do Azure AD auth
#COPY ldap.crt /etc/grafana/ #Not needed as we do Azure AD auth
#COPY datasource.yaml /etc/grafana/provisioning/datasources/

ENV GF_SECURITY_ADMIN_USER=admin
ENV GF_SECURITY_ADMIN_PASSWORD=dtwadmin
ENV GF_SECURITY_ALLOW_EMBEDDING=true
