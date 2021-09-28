import requests
import datetime
import api

API_KEY=api.get_api()
CITY_ID="1566083"
UNIT_KEY="Metric"
url=f"http://api.openweathermap.org/data/2.5/weather?id={CITY_ID}&appid={API_KEY}&units={UNIT_KEY}"
if API_KEY is None:
    print("Invalid API keys")
    exit()

res = requests.get(url).json()
icloud=""
ihumidity=""
itemp=""
main_weather = res["weather"][0]["description"].capitalize() 
temp = res["main"]["temp"]
humidity = res["main"]["humidity"]
cloud = res["clouds"]["all"]

time = int(datetime.datetime.now().strftime("%H"))
if time > 5 and time < 18: 
    which = ''
else:
    which = ''
sys_res=f"{which} {main_weather} {itemp}: {temp}°C  {icloud}: {cloud}%  {ihumidity}: {humidity}%"


print(sys_res)
