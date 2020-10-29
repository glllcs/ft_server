nginx_conf='/etc/nginx/sites-available/localhost'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

if grep -q "autoindex on;" "$nginx_conf"
then
	sed -i 's/autoindex on/autoindex off/' "$nginx_conf"
	service nginx restart
	printf "[ ${RED}off${NC} ] autoindex\n"
elif grep -q "autoindex off;" "$nginx_conf"
then
	sed -i 's/autoindex off/autoindex on/' "$nginx_conf"
	service nginx restart
	printf "[ ${GREEN}on${NC} ] autoindex\n"
fi
