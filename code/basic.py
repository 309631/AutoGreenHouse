import serial
import time
import csv
import os
import matplotlib.pyplot as plt

# LICENSED GPL


def array_from_device(device) -> list: #odczyt danych i sprawdzenie dlugosci tabel
    while True:
        data = device.readline()
        array = data.decode().split(",")
        if len(array) != 3:
            continue
        return array

def device_from_file(device_file): #ustanowienie polaczenia z urzadzeniem
    try:
        print(f"Trying... {device_file}")
        return serial.Serial(device_file, 9600) 
    except: 
        print("Failed to connect on",device_file)

def write_to_csv(file_path,header,data):
    #check if the file exist, if not, create file and add header // sprawdza czy plik istnieje, jezeli nie,
    if os.path.isfile(file_path)!=True:
        with open(file_path, 'w', encoding='UTF8', newline='') as f:    
            writer = csv.writer(f)
            writer.writerow(header)
    #if file exist append new line below
    with open(file_path, 'a', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(data)

def main():
    arduino = device_from_file("/dev/ttyACM4")
    while True:
        [temperature, humidity, light] = array_from_device(arduino)
        time_string = time.strftime("%H:%M:%S", time.localtime())
        write_to_csv(file_path="data.csv", header = ['time','temperature', 'humidity', 'light'], data = [time_string, temperature, humidity, light])
        print(f"{time_string},{temperature},{humidity},{light}")      

if __name__ == "__main__":
    main()