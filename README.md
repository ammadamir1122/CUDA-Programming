# Three Main Steps To Execute Your CUDA Programe On GPU:
 (1) To execute the CUDA codes, firstly you have move the codes from your local machine to the GPU.  
 (2) Load GPU programe and execute, caching data on chip for performence.  
 (3) Copy results from GPU memory to CPU memory.  

# Login to the GPU From LINUX:
Just give the following command from any terminal  
Command: ssh (ip-address of Your GPU) -l (Your User Name) -XY  
Remeber to specify the ip-address and username in the above command.  

# Login to the GPU from Windows:
1. Download and run/install the Putty SSH client from:  
http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html  
2. Specify the login credentials and connect.
