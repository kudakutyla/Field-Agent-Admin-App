
## Step 2: Open Project in NetBeans

1. Open NetBeans IDE
2. Click:
   - File → Open Project
3. Browse to the project location
4. Select the project folder
5. Click Open Project

---

## Step 3: Configure GlassFish Server

1. Open the Services tab
2. Expand:
   - Servers
3. Right-click GlassFish Server
4. Click Start

If GlassFish Server is not added:

1. Right-click Servers
2. Select Add Server
3. Choose GlassFish Server
4. Browse to the GlassFish installation directory
5. Finish the setup

---

## Step 4: Configure the Database

1. Open the Services tab
2. Expand:
   - Databases
3. Create a database named:

TextSpectaclesDB

4. Use the following credentials:

Username: app  
Password: 123  

---

## Step 5: Clean and Build the Project

Right-click the project  
Select: Clean and Build  

NetBeans will compile the application and generate the WAR file.

---

## Step 6: Run the Application

Right-click the project  
Select: Run  

The application will deploy to GlassFish Server and open in the browser automatically.
