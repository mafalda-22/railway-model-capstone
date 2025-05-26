FROM python:3.12

# create and switch into your app directory
WORKDIR /app

# copy your code + requirements in
COPY requirements_prod.txt .
COPY api_server_3.py .
# (and any other code or model files you need)

# install dependencies
RUN pip install --no-cache-dir -r requirements_prod.txt

# expose port (optional, for documentation)
EXPOSE 5000

# default command
CMD ["python", "api_server_3.py"]
