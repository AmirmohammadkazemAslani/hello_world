FROM python:3.10

WORKDIR /project
COPY ./requirements.txt  /project/requirements.txt
RUN pip install -r /project/requirements.txt
COPY ./app /project/app
CMD ["fastapi", "run", "app/main.py", "--port", "8000"]