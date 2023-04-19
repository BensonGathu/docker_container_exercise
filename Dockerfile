FROM python:latest
VOLUME [ "/MountDVExercise" ]
LABEL maintainer="bensongathu23@gmail.com"
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt
COPY . /code

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
EXPOSE 8000

CMD [ "python3","manage.py" ,"runserver", "0.0.0.0:8000" ]
