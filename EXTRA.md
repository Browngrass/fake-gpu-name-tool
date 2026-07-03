# Advanced Tutorial For Others Than Only GPUs'
Welcome! If you are here, it means you want to customize other than GPU like names of bluetooth, mouse or literally everything you can see their `Hardware IDs` in the `Device Manager` for some reasons?

> [!NOTE]
> This section is completely `optional`. It does not affect the core functionalities of the main files. It is purely an independent guide for advanced customization.

---

## Method 1: Hardware Device Query

```
Get-PnpDevice -Class "[Class_Name]" | Select FriendlyName, InstanceId
```

Replace `Display` in the command with one of these classes to view or modify that specific hardware:

| Change `[Class_Name]` to | What it shows / Controls (Linh kiện hiển thị) |
| :--- | :--- |
| **`Display`** | Graphics Card / GPU 
| **`Monitor`** | Connected Monitors 
| **`Processor`** | CPU 
| **`DiskDrive`** | Hard Drives / SSD / HDD 
| **`AudioEndpoint`** | Speakers / Headphones 
| **`Camera`** | Webcams / Integrated Cameras 
| **`Bluetooth`** | Bluetooth Radios / Dongles 
| **`Net`** | Network Adapters / Wi-Fi / Ethernet 
| **`Mouse`** | Mice and Pointing Devices 
| **`Keyboard`** | Keyboards


## Method 2: Device Manager (GUI Alternative)

If you prefer using the Windows interface instead of typing commands, follow these steps to find the exact hardware identities:

###  Step-by-Step Guide

1.  **Open Device Manager**: Press `Win + X` and select **Device Manager** (or run `devmgmt.msc`).
2.  **Locate Target Hardware**: Expand the category and find the specific device you want to change.
3.  **Open Properties**: Right-click on the device and select **Properties**.
4.  **Find Hardware IDs**: 
    *   Navigate to the **Details** tab.
    *   Click the **Property** drop-down menu.
    *   Select **Hardware Ids** from the list.
5.  **Copy the Value**: Right-click the displayed ID value to copy it for your configuration files.
