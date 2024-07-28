To compile and run the tutorial code inside the Docker container using VS Code, follow these steps:

1. **Clone the Repository**:
   If you haven't already cloned the repository, do so by running:
   ```sh
   git clone https://github.com/yourusername/ffmpeg-dev-container.git
   cd ffmpeg-dev-container
   ```

2. **Open the Project in VS Code**:
   - Open VS Code.
   - Open the cloned project folder in VS Code by selecting `File > Open Folder` and navigating to your project directory.

3. **Open the Project in the Development Container**:
   - Press `F1` to open the command palette.
   - Type `Remote-Containers: Open Folder in Container...` and select it.
   - Choose your project folder. VS Code will now build the Docker image defined in your `Dockerfile` and open the folder inside the container.

4. **Compile the Code**:
   Once the container is running, open the integrated terminal in VS Code (you can do this by selecting `View > Terminal` or pressing `Ctrl + \``).
   In the terminal, compile your `tutorial01.c` file using the following command:
   ```sh
   gcc -o tutorial01 tutorial01.c -lavcodec -lavformat -lswscale -lavutil
   ```

5. **Run the Compiled Program**:
   After compiling, you can run the program with:
   ```sh
   ./tutorial01
   ```

   You should see the output `FFmpeg libraries successfully registered!`.

6. **Debugging**:
   If you want to debug your application, you can set up debugging configurations in VS Code. Here’s an example of how to configure debugging:

   - Create a `.vscode` folder in your project directory (if it doesn’t exist) and add a `launch.json` file inside it:
     ```json
     {
       "version": "0.2.0",
       "configurations": [
         {
           "name": "(gdb) Launch",
           "type": "cppdbg",
           "request": "launch",
           "program": "${workspaceFolder}/tutorial01",
           "args": [],
           "stopAtEntry": false,
           "cwd": "${workspaceFolder}",
           "environment": [],
           "externalConsole": false,
           "MIMode": "gdb",
           "setupCommands": [
             {
               "description": "Enable pretty-printing for gdb",
               "text": "-enable-pretty-printing",
               "ignoreFailures": true
             }
           ],
           "preLaunchTask": "build",
           "miDebuggerPath": "/usr/bin/gdb",
           "internalConsoleOptions": "openOnSessionStart"
         }
       ]
     }
     ```

   - Also, create a `tasks.json` file in the `.vscode` folder to define the build task:
     ```json
     {
       "version": "2.0.0",
       "tasks": [
         {
           "label": "build",
           "type": "shell",
           "command": "gcc",
           "args": [
             "-g",
             "-o",
             "tutorial01",
             "tutorial01.c",
             "-lavcodec",
             "-lavformat",
             "-lswscale",
             "-lavutil"
           ],
           "group": {
             "kind": "build",
             "isDefault": true
           },
           "problemMatcher": ["$gcc"],
           "detail": "Generated task by Debugger."
         }
       ]
     }
     ```

   - Now, you can start debugging by pressing `F5` or selecting `Run > Start Debugging`.

By following these steps, you should be able to compile, run, and debug your FFmpeg-based application inside the Docker container using VS Code on macOS M1.