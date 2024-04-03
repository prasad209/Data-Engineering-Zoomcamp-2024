FROM python:3.9    #pull python 3.9 version image

RUN pip install pandas   # after pulling the image, this command is run to install pandas library

WORKDIR /app               #this is for container, workdirectory is set to a folder name app
COPY pipeline.py pipeline.py               # now we are inside the app folder as its the workdir , 
                                           #copy command copies the local python file pipeline.py to this app folder with the same name, you can give differet name also

ENTRYPOINT [ "python", "pipeline.py" ]     #    This means after python image is pulled and container is ready , it will open python in the container and execute file named pipeline.py

