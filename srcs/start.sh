RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

service nginx start
service mysql start
service php7.3-fpm start

echo ""
printf "[ ${GREEN}ok${NC} ] Localhost is up (̿▀̿ ̿Ĺ̯̿̿▀̿ ̿)̄\n"
printf "[ ${GREEN}on${NC} ] autoindex. To change its state, run '$ bash /root/autoindex.sh'\n"

bash
