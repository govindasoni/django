FROM python:3.8
WORKDIR /app
COPY . .
RUN pip install -r requirement.txt
RUN python manage.py migrate
CMD ["python","manage.py","runserver","0.0.0.0:8000"]