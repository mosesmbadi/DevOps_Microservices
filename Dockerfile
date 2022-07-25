FROM python:3.7.3-stretch

WORKDIR /app


COPY . app.py /app/

# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip 
RUN pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt


EXPOSE 3000


CMD [ "python", "app.py" ]