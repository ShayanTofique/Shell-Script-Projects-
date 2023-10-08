import psutil
import platform
import datetime

def display_system_info():
    # Display system information
    print("*************************** SYSTEM STATUS CHECKER ***************************")

    # Ask for user's name
    name = input("Please Enter Your Name: ")

    # Greeting
    print(f"********* Hi {name} - Please see the detailed system status below *********")
    print(" ***************************************************************************")
    
    # Display Current Date and Time
    print(" **************************** Current Date and Time *************************")
    current_datetime = datetime.datetime.now()
    print(f"Today is: {current_datetime.strftime('%d - %b')} ; Day: {current_datetime.strftime('%A')} ; Time: {current_datetime.strftime('%H:%M:%S')}")
    
    # Disk Space Available
    print(" *************************** Disk Space Available **************************")
    partitions = psutil.disk_partitions()
    for partition in partitions:
        usage = psutil.disk_usage(partition.mountpoint)
        print(f"Partition: {partition.device} ; Total: {usage.total / (1024 ** 3):.2f} GB ; Used: {usage.used / (1024 ** 3):.2f} GB ; Free: {usage.free / (1024 ** 3):.2f} GB")

    # CPU Usage
    print(" ***************************** CPU Usage *****************************")
    cpu_usage = psutil.cpu_percent(interval=1, percpu=True)
    for i, usage in enumerate(cpu_usage):
        print(f"CPU {i}: {usage}%")

    # Memory Usage
    print(" *************************** Memory Usage ***************************")
    memory = psutil.virtual_memory()
    print(f"Total Memory: {memory.total / (1024 ** 3):.2f} GB ; Used: {memory.used / (1024 ** 3):.2f} GB ; Free: {memory.available / (1024 ** 3):.2f} GB")

    # Network Statistics
    print(" ************************* Network Statistics *************************")
    network_stats = psutil.net_if_stats()
    for interface, stats in network_stats.items():
        print(f"Interface: {interface} ; Status: {'UP' if stats.isup else 'DOWN'} ; MTU: {stats.mtu}")

    # Last N Login Details (Not available in psutil)
    print(" ************************ Last N Login Details (Not available) **************************")

    # Currently Connected User
    print(" **************************** Currently Connected *************************")
    print(f"User: {psutil.users()[0].name}")

    # End
    print("******************************************* END *****************************")

if __name__ == "__main__":
    display_system_info()
