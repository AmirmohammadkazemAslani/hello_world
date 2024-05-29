FROM python:3.10

WORKDIR /project
COPY ./requirements.txt 
RUN pip install -r /project/requirements.txt
COPY ./hello_world /project/app
CMD ["fastapi", "run", "app/main.py", "--port", "8000"]