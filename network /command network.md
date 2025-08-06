#  command network


سرویس داکر را ریستارت کنید:
'''
sudo systemctl restart docker.service
'''


لیست شبکه های داکر:
'''
docker network ls
'''


نمایش جزئیات شبکه خاص:

'''
docker network inspect <network_name>
'''


ایجاد شبکه با subnet مشخص:

'''
docker network create --subnet=172.25.0.0/16 my_custom_network

'''

حذف شبکه بلااستفاده:
'''
docker network rm <network_name>
'''

پاکسازی تمام شبکه های بلااستفاده:


'''
docker network prune

'''

'''

'''
