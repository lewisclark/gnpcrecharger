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
- Change the number to the new price you desire, where it says 'ENT.PricePerOne'
- Done

#### Changing the overhead text of the recharger

- Go into the addon's folder, by default it is 'gnpcrechager-master'
- Now, browse to lua/entities and go into the recharger you would like to edit (health or armor)
- Open cl_init.lua with a text editor
- Change the draw text inside the speech marks, to the text you desire where it says 'local DRAWTEXT'
- Done

#### Changing the model

- Find the new model you would like for the recharger
- Go into the addon's folder, by default it is 'gnpcrechager-master'
- Now, browse to lua/entities and go into the recharger you would like to edit (health or armor)
- Open init.lua with a text editor
- Change the model name inside the speech marks, to the model you desire where it says 'local MODEL'
- Done

---

#### Setting the positions of the rechargers - this spawns the rechargers in the positions you desire, when the server starts.

- Place the rechagers down normally, in the positions you would like.
- Run the console command 'recharger_saveall' without the quotation marks.
- The positions are now saved. When the server restarts, they will automatically spawn in their chosen positions.

##### To reset the positions of all rechargers, use the console command 'recharger_resetall'.
