import pandas as pd
from matplotlib import pyplot as plt
import matplotlib.ticker as plticker
import numpy as np
from matplotlib.ticker import MultipleLocator

# def 

def measure_costs(hr_on,used_power,kWh_price):
    return hr_on*(used_power*10**-3)*kWh_price

filename="data.csv"


columns = ["time", "temperature","humidity","light"]
df = pd.read_csv(filename, usecols=columns)
print("Contents in csv file:\n", df)
print(df.time)
up = 10
print(f"czas dzialania = {len(list(df.time))} m = {len(list(df.time))/60} h ")
print(f"koszt działania {measure_costs(hr_on=len(list(df.time))/60, used_power=up,kWh_price=.80)} PLN")
print(f"koszt działania przez 1 dzien {measure_costs(hr_on=24, used_power=up,kWh_price=.80)} PLN")
print(f"koszt działania przez tydzien {measure_costs(hr_on=24*7, used_power=up,kWh_price=.80)} PLN")
print(f"koszt działania przez miesiąc {measure_costs(hr_on=24*7*4, used_power=up,kWh_price=.80)} PLN")




plt.plot(df.time, df.temperature, color = 'orange', label = 'temperatura st C')
plt.plot(df.time, df.humidity, color = 'blue', label = 'wilgotnosc')

plt.gca().xaxis.set_major_locator(MultipleLocator(10))

plt.xlabel("czas")
plt.xticks(rotation=75)

plt.legend(loc="lower right", title="Legenda", frameon=True)

fig, light = plt.subplots(1)

light.plot(df.time, df.light, color = 'red', label = 'swiatlo')
plt.gca().xaxis.set_major_locator(MultipleLocator(10))
plt.xticks(rotation=75)
plt.xlabel("czas")

plt.show()