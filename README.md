# gNPCRecharger - A simple health & armor recharger

### **What is gNPCRecharger?**

gNPCRecharger is a simple addon that can improve player's experience on your DarkRP server. It allows players to 'recharge' their health or armor for in-game money, giving players another alternative instead of killing themselves to regain their health/armor.

---

### **How to install this addon on your server**

- Download the ZIP with the green button
- Extract the folder 'gnpcrechager-master' into your server's 'addons' folder
- Restart your server
- Done!

---

### **How to configure this addon**

#### Changing the price

- Go into the addon's folder, by default it is 'gnpcrechager-master'
- Now, browse to lua/entities and go into the recharger you would like to edit (health or armor)
- Open shared.lua with a text editor
- Change 'ENT.PricePerOne = 75' to another number, like 'ENT.PricePerOne = 100'
- Done

#### Changing the overhead text of the recharger

- Go into the addon's folder, by default it is 'gnpcrechager-master'
- Now, browse to lua/entities and go into the recharger you would like to edit (health or armor)
- Open cl_init.lua with a text editor
- Change 'local DRAWTEXT = "Health Recharger"' to another value, like 'local DRAWTEXT = "Health Refill"'
- Done