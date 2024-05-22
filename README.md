# Computer Architecture Lab 4th Semester 2024

## Introduction

### Computer Architecture
Computer architecture refers to the design and organization of a computer's core components, such as the central processing unit (CPU), memory hierarchy, input/output systems, and storage devices. It encompasses the structure, functional behavior, and design strategies of these components to create efficient and powerful computing systems. Understanding computer architecture is crucial for optimizing system performance and designing hardware that meets specific computational needs.

### VHDL
VHDL (VHSIC Hardware Description Language) is a programming language used to describe the behavior and structure of electronic systems. It is widely used in the design, simulation, and testing of digital circuits and systems, such as FPGAs and ASICs. VHDL allows designers to model complex digital systems at various levels of abstraction, from high-level functional descriptions to low-level gate implementations.

## Installation Steps for Xilinx Vivado Design Suite

### 1. Download the Installer
1. Visit the [Xilinx official website](https://www.xilinx.com).
2. Navigate to the "Support" section and select "Downloads".
3. Choose the Vivado Design Suite version for your operating system (Windows/Linux) and download the installer.

### 2. Create a Xilinx Account
1. If you do not have a Xilinx account, create one during the download process.
2. Log in to proceed with the download.

### 3. Prepare Your System
1. Ensure your computer meets the minimum system requirements.
2. Temporarily disable any antivirus software to avoid installation issues.

### 4. Run the Installer
1. **Windows**:
    - Locate the downloaded .exe file.
    - Right-click the file and select "Run as Administrator".
2. **Linux**:
    - Open a terminal and navigate to the directory containing the installer.
    - Make the installer executable: `chmod +x <installer_filename>.bin`
    - Run the installer: `sudo ./<installer_filename>.bin`

### 5. Follow the Installation Wizard
1. Read the introduction and click "Next".
2. Accept the license agreement terms.
3. Choose the edition to install (e.g., WebPACK, Design Edition).
4. Select the installation directory.
5. Choose the components to install.
6. Decide on creating desktop and start menu shortcuts.
7. Review your choices and click "Install".

### 6. Licensing
1. If required, set up your license using the Xilinx License Manager.

### 7. Post-Installation Steps
1. Ensure environment variables are correctly set up.
2. Re-enable your antivirus software.
3. Check for updates or patches.

### 8. Launch Vivado
- Start Vivado from the start menu (Windows) or using the terminal (Linux).

## Steps to Fork a GitHub Repository and Contribute

### 1. Fork the Repository
1. Go to the GitHub repository you want to contribute to.
2. Click the "Fork" button at the top right corner of the repository page.

### 2. Clone the Forked Repository
1. On your GitHub profile, navigate to the forked repository.
2. Click the "Code" button and copy the URL.
3. Open a terminal and run: 
   ```bash
   git clone <repository_url>
   ```
4. Navigate to the cloned repository directory:
   ```bash
   cd <repository_name>
   ```

### 3. Create a New Branch
1. Create a new branch for your changes:
   ```bash
   git checkout -b <branch_name>
   ```

### 4. Make Changes and Commit
1. Make your changes to the code.
2. Add your changes to the staging area:
   ```bash
   git add .
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of your changes"
   ```

### 5. Push Changes to GitHub
1. Push your changes to your forked repository:
   ```bash
   git push origin <branch_name>
   ```

### 6. Create a Pull Request
1. Navigate to the original repository on GitHub.
2. Click the "Compare & pull request" button.
3. Provide a title and description for your pull request.
4. Click "Create pull request".

By following these steps, you can successfully fork a GitHub repository, make contributions, and submit your changes for review.
