1. **Clone the Repository**:
   If you haven't already cloned the repository, do so by running:
   ```sh
   git clone https://github.com/vunguyen1989/ffmpeg-dev-container.git
   cd ffmpeg-dev-container
   ```

2. **Open the Project in VS Code**:
   - Open VS Code.
   - Open the cloned project folder in VS Code by selecting `File > Open Folder` and navigating to your project directory.

3. **Open the Project in the Development Container**:
   - Press `F1` to open the command palette.
   - Type `Remote-Containers: Open Folder in Container...` and select it.
   - Choose your project folder. VS Code will now build the Docker image defined in your `Dockerfile` and open the folder inside the container.

4. **Compile and Run the Code**:
   
  Once the container is running, open the integrated terminal in VS Code (you can do this by selecting `View > Terminal` or pressing `Ctrl + \``).

  In the terminal, compile your files using the following command:
   
  for `0_hello_world.c`
   ```sh
   make hello
   ```
   ```sh
   make run_hello
   ```
  
  for `2_remuxing.c`
   ```sh
   make remux
   ```
   ```sh
   make run_remux
   ```
  
  for `0_transcoding.c`
   ```sh
   make transcode
   ```
   ```sh
   make run_transcode
   ```
