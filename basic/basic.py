import serial
import time
import os

def cls(): os.system('cls' if os.name=='nt' else 'clear') 

def Menu():
    cls()
    print(
        f"TIME  {TIME}\n"
        f"TEMPERATURE = {TEMPERATURE} st C\n"
        f"HUMIDITY = {HUMIDITY}%\n"
        f"LIGHT = {LIGHT}\n"
    )
    time.sleep(5)
    


start_time = time.time()

device = '/dev/ttyACM3' #this will have to be changed to the serial port you are using
try:
    print(f"Trying... {device}")
    arduino = serial.Serial(device, 9600) 
    DATA = arduino.readline()  #read the data from the arduino
    DATA_ARRAY = DATA.decode().split(",")  #split the data by the tab
    if len(DATA_ARRAY)==3: 
        print("Connection clear!")
except: 
    print("Failed to connect on",device)    


while True:
        time.sleep(5)
        t = time.localtime()
        TIME = time.strftime("%H:%M:%S", t)

        TEMPERATURE = DATA_ARRAY[0]
        HUMIDITY = DATA_ARRAY[1]
        LIGHT = DATA_ARRAY[2]
        # print(TIME,TEMPERATURE,HUMIDITY,LIGHT)
        Menu()
      

