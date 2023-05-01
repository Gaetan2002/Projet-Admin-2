$TTL    86400
@       IN      SOA     ns.l1-6.ephec-ti.be. admin.l1-6.ephec-ti.be. (
                        2022041701      ; serial number
                        3600            ; refresh
                        1800            ; retry
                        604800          ; expire
                        86400           ; minimum TTL
                        )
;
@       IN      NS      ns.l1-6.ephec-ti.be.
@       IN      MX 10   mail.l1-6.ephec-ti.be.

ns      IN      A       172.20.0.10
www     IN      A       172.20.0.11
site    IN      A       172.20.0.11
b2b     IN      A       172.20.0.11
erp     IN      A       172.20.0.11
mail    IN      A       172.20.0.12
dovecot IN      A       172.20.0.13
mysql   IN      A       172.20.0.14